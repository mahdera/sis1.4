<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String firstName = request.getParameter("firstName");
	String middleName = request.getParameter("middleName");
	String lastName = request.getParameter("lastName");
	String userType = request.getParameter("userType");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	User user = new User(firstName,middleName,lastName,userType);
	user.addUser();
	User fetchedUser = User.getUserWith(firstName, middleName, lastName, userType);
	Account account = new Account(fetchedUser.getId(),username,password);
	account.addAccount();
	int getMaxRecentAccount = Account.getMaxAccountIdValue();
	Role.createBlankRoleUponUserCreation(getMaxRecentAccount);
%>
<p class="msg done">User saved successfully!</p>