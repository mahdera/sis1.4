<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String studentId = String.valueOf(request.getParameter("studentId"));
	StudentLevel currentStudentLevel = StudentLevel.getStudentLevelOfThisStudent(studentId);
	String newSectionControlName = "slctnewsection"+studentId;
%>
<form>
	<table border="0" width="100%">
		<tr style="background:lightyellow">
			<td>Current student section is: </td>
			<td><%=Section.getSection(currentStudentLevel.getSectionId()).getSectionName() %></td>
			<td>Select the new section for this student ===></td>
			<td>
				<select name="<%=newSectionControlName %>" id="<%=newSectionControlName %>" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Section> sectionList = Section.getAllSections();
						Iterator<Section> sectionItr = sectionList.iterator();
						while(sectionItr.hasNext()){
							Section section = sectionItr.next();
							%>
							<option value="<%=section.getId() %>"><%=section.getSectionName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
			<td>
				<input type="button" value="Change Section" onclick="changeTheSectionOfThisStudent(<%=studentId %>,
				document.getElementById('<%=newSectionControlName %>').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>