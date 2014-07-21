<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
		String teacherId = request.getParameter("teacherId");
		String levelId = request.getParameter("levelId");	
		int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
		int semesterId = Integer.parseInt(request.getParameter("semesterId"));
		String subjectId = request.getParameter("subjectId");
		
		List<GradeCard> gradeCardList = GradeCard.getAllGradeCardsForTheFollowingParameters(
				teacherId, levelId, academicYearId, semesterId, subjectId);
		Iterator<GradeCard> gradeCardItr = gradeCardList.iterator();
		gradeCardList = null;
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Student Name</th>
		<th>Teacher Name</th>		
		<th>Subject</th>
		<th>Grade</th>
		<% if(semesterId == 7){ %>
		<th>Percentage</th>
		<% } else{ %>
		<th>Effort</th>
		<% } %>
		<th>Narrative</th>
	    <th>Delete</th>
	</tr>
	<%
	int ctr=1;
	while(gradeCardItr.hasNext()){
		GradeCard gradeCard = gradeCardItr.next();
		if(ctr%2==0){
		%>
		<tr class="bg">
		<%
		}else{
		%>
		<tr>
		<%
		}
		%>
			<td><%=ctr %></td>
			<td><%=gradeCard.getStudentFullName() %></td>
			<td><%=gradeCard.getTeacherFullName() %></td>
			<td><%=gradeCard.getSubjectName() %></td>
			<td><%=gradeCard.getGrade() %></td>
			<td><%=gradeCard.getEff() %></td>
			<td><textarea cols="40" rows="1"><%=gradeCard.getCond() %></textarea></td>
			<td><a href="#.jsp" onclick="deleteGradeCard(<%=gradeCard.getId() %>);"><img src="design/delete.png" border="0" align="absmiddle"/> Delete</a></td>	
		</tr>
		<%
		ctr++;
	}//end while loop
	%>
</table>
<div id="editGradeCardDiv"></div>
