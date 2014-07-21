<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	/* Account account = (Account) session.getAttribute("account");
	String functionalityName = "academicUnitManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId()); */
	if(true)
	{
	List<User> userList = User.getAllUsers();
	Iterator<User> userItr = userList.iterator();
	
	out.print("<table width='100%'>");
	out.print("<caption>List of Users</caption>");
	out.print("<th>Ser.No</th>");	
	out.print("<th>First Name</th>");	
	out.print("<th>Middle Name</th>");
	out.print("<th>Last Name</th>");
	out.print("<th>User Type</th>");
	out.print("<th>Edit</th>");
	int ctr = 1;
	while(userItr.hasNext()){
		User user = userItr.next();
		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");			
			out.print("<td>");
				out.print(user.getFirstName());
			out.print("</td>");
			out.print("<td>");
				out.print(user.getMiddleName());
			out.print("</td>");
			out.print("<td>");
				out.print(user.getLastName());
			out.print("</td>");
			out.print("<td>");
				out.print(user.getUserType());
			out.print("</td>");
			out.print("<td>");
			%>
				<a href="#.jsp" onclick="showEditFieldsOfUser(<%=user.getId() %>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
			<%
			out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="userEditDiv"></div>