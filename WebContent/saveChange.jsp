<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String cpass = request.getParameter("cpass");
	String npass = request.getParameter("npass");
	Account.changePass(id, cpass, npass);
%>
<p class="msg done">Password changed successfully!</p>