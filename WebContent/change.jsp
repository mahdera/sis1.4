<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="javax.swing.*"%>
<%
	Account account = (Account) session.getAttribute("account");
	//Employee empObj = Employee.getEmployee(account.getEmpId());
	User user = User.getUser(account.getUserId());
	int id = account.getUserId();
	String userFullName = user.getFirstName() + " "
			+ user.getMiddleName();
	//JOptionPane.showMessageDialog(null, account.getUserId());
%>
<table>
	<tr>
		<td>Current Password:</td>
		<td><input type="password" size="15" name="txtcpassword"
			id="txtcpassword" class="input-text" /></td>
	</tr>
	<tr>
		<td>New Password:</td>
		<td><input type="password" size="15" name="txtnpassword"
			id="txtnpassword" class="input-text" /></td>
	</tr>
	<tr>
		<td></td>
		<td colspan="1" align="center"><button value="Change" onClick="passChanger('<%=id %>', document.getElementById('txtcpassword').value,document.getElementById('txtnpassword').value); return false;">Change</button>
		</td>
	</tr>
</table>
<div id="conf">
</div>