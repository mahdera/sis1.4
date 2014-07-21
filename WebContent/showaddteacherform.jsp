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
			<td align="right">Select User:</td>
			<td>
				<select name="slctuser" id="slctuser" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<User> tList = User.getAllUsers();
						Iterator<User> tItr = tList.iterator();
						while(tItr.hasNext()){
							User t = tItr.next();
							%>
							<option value="<%=t.getId()+" "+t.getFirstName()+" "+t.getMiddleName()+" "+t.getLastName()%>"><%=t.getFirstName()+" "+t.getMiddleName()+" "+t.getLastName()%></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>		
		<tr>
			<td align="right">Email:</td>
			<td><input type="text" name="txtemail" id="txtemail"/></td>
		</tr>		
		<tr>
			<td align="right">Mobile:</td>
			<td><input type="text" name="txtmobile" id="txtmobile"/></td>
		</tr>
		<tr>
			<td align="right">Nationality:</td>
			<td><input type="text" name="txtnationality" id="txtnationality"/></td>
		</tr>
		<tr>
			<td align="right">Passport Number:</td>
			<td><input type="text" name="txtpassportnumber" id="txtpassportnumber"/></td>
		</tr>
		<tr>
			<td align="right">Short Name:</td>
			<td><input type="text" name="txtshortname" id="txtshortname"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" 
				onclick="saveTeacher(document.getElementById('slctuser').value,
						document.getElementById('txtemail').value,
						document.getElementById('txtmobile').value,
						document.getElementById('txtnationality').value,
						document.getElementById('txtpassportnumber').value,
						document.getElementById('txtshortname').value);"/>
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