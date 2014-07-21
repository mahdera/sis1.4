<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	//find the subject object
	Subject sub = Subject.getSubject(subjectId);
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Subject Name:</td>
			<td><input type="text" name="txtsubjectname" id="txtsubjectname" value="<%=sub.getSubjectName() %>"/></td>
		</tr>
		<tr>
			<td>Description:</td>
			<td>
				<textarea name="textareadescription" id="textareadescription" cols="70" rows="3"><%=sub.getDescription() %></textarea>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Update" onclick="updateSubject(<%=subjectId %>,document.getElementById('txtsubjectname').value,
						document.getElementById('textareadescription').value);"/>
				<input type="reset" value="Reset"/>
			</td>
		</tr>
	</table>
</form>