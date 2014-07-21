<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	//Account account = (Account) session.getAttribute("account");
	//String functionalityName = "manageAdminFields";
	//Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	//Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	Teacher teacher = Teacher.getTeacher(teacherId);
	if(true){
%>
<div style="background:lightyellow">
<form>
	<table border="0" width="100%">
		<tr>
			<td align="right">First Name:</td>
			<td>
				<input type="text" name="txtfirstname" id="txtfirstname" value="<%= teacher.getFirstName()%>"/>
			</td>
		</tr>		
		<tr>
			<td align="right">Middle Name:</td>
			<td><input type="text" name="txtmiddlename" id="txtmiddlename" value="<%= teacher.getMiddleName()%>"/></td>
		</tr>
		<tr>
			<td align="right">Last Name:</td>
			<td><input type="text" name="txtlastname" id="txtlastname" value="<%= teacher.getLastName()%>"/></td>
		</tr>
		<tr>
			<td align="right">Email:</td>
			<td><input type="text" name="txtemail" id="txtemail" value="<%= teacher.getEmail()%>"/></td>
		</tr>		
		<tr>
			<td align="right">Mobile:</td>
			<td><input type="text" name="txtmobile" id="txtmobile" value="<%= teacher.getMobile()%>"/></td>
		</tr>
		<tr>
			<td align="right">Nationality:</td>
			<td><input type="text" name="txtnationality" id="txtnationality" value="<%= teacher.getNationality()%>"/></td>
		</tr>
		<tr>
			<td align="right">Passport Number:</td>
			<td><input type="text" name="txtpassportnumber" id="txtpassportnumber" value="<%= teacher.getPassportNumber()%>"/></td>
		</tr>
		<tr>
			<td align="right">Short Name:</td>
			<td><input type="text" name="txtshortname" id="txtshortname" value="<%= teacher.getShortname()%>"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Update" class="input-submit" 
				onclick="updateTeacher(<%=teacher.getId() %>,document.getElementById('txtfirstname').value,
						document.getElementById('txtmiddlename').value,
						document.getElementById('txtlastname').value,
						document.getElementById('txtemail').value,
						document.getElementById('txtmobile').value,
						document.getElementById('txtnationality').value,
						document.getElementById('txtpassportnumber').value,
						document.getElementById('txtshortname').value);"/>
				<input type="reset" value="Undo" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="admissionTypeErrorDiv"></div>
			</td>
		</tr>
	</table>
</form>
</div>
<%
	}
	else{	
%>
	<p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%>