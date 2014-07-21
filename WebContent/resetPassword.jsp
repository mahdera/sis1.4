<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int userId = Integer.parseInt(request.getParameter("userId"));
	//int branchIdPara = Integer.parseInt(request.getParameter("branchId"));
	//String firstNamePara = request.getParameter("firstName");
	//String middleNamePara = request.getParameter("middleName");
	//String lastNamePara = request.getParameter("lastName");
	//String userTypePara = request.getParameter("userType");
	Account.resetPass(userId);
%>
<%@include file="showlistofusersforedit.jsp"%>
<p class="msg done">Password Reset to default</p>