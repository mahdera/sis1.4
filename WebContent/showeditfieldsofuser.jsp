<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int userId = Integer.parseInt(request.getParameter("userId"));
	User user = User.getUser(userId);
%>
<form style="background:lightyellow">
<table border="1" width="100%">	
	<tr>
		<td align="right">First Name:</td>
		<td><input type="text" name="txteditfirstname" id="txteditfirstname" value="<%=user.getFirstName() %>"/></td>
		<td></td>		
	</tr>	
	<tr>
		<td align="right">Middle Name:</td>
		<td><input type="text" name="txteditmiddlename" id="txteditmiddlename" value="<%=user.getMiddleName() %>"/></td>
		<td></td>		
	</tr>
	<tr>
		<td align="right">Last Name:</td>
		<td><input type="text" name="txteditlastname" id="txteditlastname" value="<%=user.getLastName() %>"/></td>
		<td></td>		
	</tr>
	<tr>
		<td align="right">User Type:</td>
		<td><input type="text" name="txteditusertype" id="txteditusertype" value="<%=user.getUserType() %>"/></td>
		<td>
			<select name="slcteditusertype" id="slcteditusertype" onchange="changeThisUserTypeForUser(this.value);" style="width:100%">
					<option value="" selected="selected">--Select--</option>					
					<option value="User">User</option>
					<option value="Administrator">Administrator</option>
					<option value="Data Encoder">Data Encoder</option>
			</select>
		</td>
		<td>
			<input type="button" value="Reset Password" class="input-submit" onclick="resetUser(<%=userId %>);"/>
		</td>		
	</tr>
	<tr>
		<td colspan="3" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateUser(<%=userId %>,
			 document.getElementById('txteditfirstname').value,document.getElementById('txteditmiddlename').value,
			 document.getElementById('txteditlastname').value,document.getElementById('txteditusertype').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>