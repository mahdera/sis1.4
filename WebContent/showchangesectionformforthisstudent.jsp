<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String applicantId = String.valueOf(request
			.getParameter("applicantId"));
	//now get the section of this applicant
	Student student = Student.getStudentUsingApplicantId(applicantId);
	StudentLevel studentLevel = StudentLevel
			.getStudentLevelOfThisStudent(applicantId);
	//define the field names here under...
	String sectionFieldName = "slctsection" + applicantId;
	List<Section> sectionList = Section
			.getAllSectionsForLevel(studentLevel.getLevelId());
%>
<form style="background: #eee">
	<table border="0" width="100%">
		<tr>
			<td>Section:</td>
			<td><select name="<%=sectionFieldName%>"
				id="<%=sectionFieldName%>" style="width: 100%;">
					<%
						Iterator<Section> sectionItr = sectionList.iterator();
						while (sectionItr.hasNext()) {
							Section section = sectionItr.next();
							if (section.getId() == studentLevel.getSectionId()) {
					%>
					<option selected="selected" value="<%=section.getId()%>"><%=section.getSectionName()%></option>
					<%
						} else {
					%>
					<option value="<%=section.getId()%>"><%=section.getSectionName()%></option>
					<%
						}
						}//end while loop
					%>
			</select>
			</td>
			<td><input type="button" value="Change"
				onclick="updateSectionForThisStudent(
				document.getElementById('<%=sectionFieldName%>').value,'<%=applicantId%>');" />
				<input type="reset" value="Undo" />
			</td>
		</tr>
	</table>
</form>