<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	//Account account = (Account) session.getAttribute("account");
	//String functionalityName = "manageAdminFields";
	//Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	//Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(true){
%>
<div style="background:lightyellow">
<form>
	<table border="0" width="100%">
		<tr>
			<td align="right">First Name:</td>
			<td><input type="text" name="txtfirstname" id="txtfirstname"/></td>
		</tr>		
		<tr>
			<td align="right">Middle Name:</td>
			<td><input type="text" name="txtmiddlename" id="txtmiddlename"/></td>
		</tr>
		<tr>
			<td align="right">Last Name:</td>
			<td><input type="text" name="txtlastname" id="txtlastname"/></td>
		</tr>
		<tr>
			<td align="right">User Type:</td>
			<td>
				<select name="slctusertype" id="slctusertype">
					<option value="" selected="selected">--Select--</option>
					<option value="Administrator">Administrator</option>
					<option value="Data Encoder">Data Encoder</option>
					<option value="User">User</option>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Username:</td>
			<td><input type="text" name="txtusername" id="txtusername"/></td>
		</tr>
		<tr>	
			<td align="right">Password:</td>
			<td>
				<input type="password" name="txtpassword" id="txtpassword"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" onclick="saveUser(document.getElementById('txtfirstname').value,document.getElementById('txtmiddlename').value,
						document.getElementById('txtlastname').value,document.getElementById('slctusertype').value,
						document.getElementById('txtusername').value,document.getElementById('txtpassword').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
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