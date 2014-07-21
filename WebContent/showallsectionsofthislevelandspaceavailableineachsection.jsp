<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	String applicantId = request.getParameter("applicantId");
	List<Section> sectionList = Section.getAllSectionsForLevel(levelId);
	Iterator<Section> sectionItr = sectionList.iterator();
	sectionList = null;
%>
<table border="0" width="100%">
	<tr>
		<th>Level</th>
		<th>Section Name</th>
		<th>Class Size</th>
		<th>Current Number of Students</th>
		<th>Free Spaces</th>
		<th>Action</th>
	</tr>
	<%
	while(sectionItr.hasNext()){
		Section sec = sectionItr.next();
		int currentNumberOfStuds = StudentLevel.getCurrentNumberOfStudentsInThisSection(sec.getId());
		int freeSpace = sec.getClassSize() - currentNumberOfStuds;
		%>
		<tr>
			<td><%=Level.getLevel(levelId).getLevelName() %></td>
			<td><%=sec.getSectionName() %></td>
			<td><%=sec.getClassSize() %></td>
			<td><%=currentNumberOfStuds %></td>
			<td><%=freeSpace %></td>
			<td>
				<%
					if(freeSpace != 0){
				%>
					<a href="#.jsp" onclick="placeApplicantInThisSection('<%=applicantId%>','<%=sec.getId()%>');">Place Here</a>
				<%
					}
				%>
			</td>
		</tr>
		<%
	}//end while loop
	%>
</table>