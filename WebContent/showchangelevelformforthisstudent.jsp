<%@page import="javax.swing.JOptionPane"%>
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
	String levelFieldName = "slctlevel" + applicantId;
	List<Level> levelList = Level.getAllLevels();
	//JOptionPane.showMessageDialog(null, applicantId);
%>
<form style="background: #eee">
	<table border="0" width="100%;">
		<tr>
			<td>Level:</td>
			<td><select name="<%=levelFieldName%>" id="<%=levelFieldName%>"
				style="width: 100%;" onchange="showAllLevelSections(this.value)">
					<%
						Iterator<Level> levelItr = levelList.iterator();
						//JOptionPane.showMessageDialog(null, levelList.size());
						while (levelItr.hasNext()) {
							//JOptionPane.showMessageDialog(null, "inside while");
							Level level = levelItr.next();
							//JOptionPane.showMessageDialog(null, studentLevel.getLevelId());
							if (level.getId() == studentLevel.getLevelId()) {
					%>
					<option selected="selected" value="<%=level.getId()%>"><%=level.getLevelName()%></option>
					<%
						} else {
					%>
					<option value="<%=level.getId()%>"><%=level.getLevelName()%></option>
					<%
						}
						}//end while loop
					%>
			</select>
			</td>
			<td>Section:</td>
			<td>
				<div id="secDiv"></div>
			</td>
			<td><input type="button" value="Change"
				onclick="updateLevelForThisStudent(document.getElementById('<%=levelFieldName%>').value,'<%=applicantId%>',
				document.getElementById('slctsection').value);" />
				<input type="reset" value="Undo" />
			</td>
			<td>
				<div id="confDiv"></div>
			</td>
		</tr>
	</table>
</form>