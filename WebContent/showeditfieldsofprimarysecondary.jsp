<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	PrimarySecondary p = PrimarySecondary.getPrimarySecondary(id);

%>
<form>
	<table border="0" width="100%">
		<tr>
			<td align="right">Primary/Secondary Level Name:</td>
			<td>
				<input type="text" name="txtprimarysecondaryname" id="txtprimarysecondaryname" value="<%=p.getPrimarySecondaryName()%>"/>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Update" onclick="updatePrimarySecondaryForm(<%=p.getId() %>,document.getElementById('txtprimarysecondaryname').value)"/>
				<input type="reset" value="Undo"/>
			</td>
		</tr>
	</table>
</form>