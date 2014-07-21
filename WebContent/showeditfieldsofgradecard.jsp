<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	GradeCard gradeCard = GradeCard.getGradeCard(id);

%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Grade:</td>
			<td><input type="text" name="txtgrade" id="txtgrade" value="<%=gradeCard.getGrade()%>"/></td>
		</tr>
		<tr>
			<td>Eff:</td>
			<td><input type="text" name="txteff" id="txteff" value="<%=gradeCard.getEff()%>"/></td>
		</tr>
		<tr>
			<td>Exam:</td>
			<td><input type="text" name="txtexam" id="txtexam" value=""/></td>
		</tr>
		<tr>
			<td>Cond:</td>
			<td><input type="text" name="txtcond" id="txtcond" value="<%=gradeCard.getCond()%>"/></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Update" onclick="updateGradeCard(<%=gradeCard.getId()%>,document.getElementById('txtgrade').value,
						document.getElementById('txteff').value,document.getElementById('txtexam').value,
						document.getElementById('txtcond').value);"/>
				<input type="reset" value="Undo"/>
			</td>
		</tr>
	</table>
</form>