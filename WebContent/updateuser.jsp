<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int userIdPara = Integer.parseInt(request.getParameter("userId"));
	//int branchIdPara = Integer.parseInt(request.getParameter("branchId"));
	String firstNamePara = request.getParameter("firstName");
	String middleNamePara = request.getParameter("middleName");
	String lastNamePara = request.getParameter("lastName");
	String userTypePara = request.getParameter("userType");
	User.updateUser(userIdPara,firstNamePara, middleNamePara, lastNamePara, userTypePara);
%>
<%@include file="showlistofusersforedit.jsp"%>
<p class="msg done">User updated successfully!</p>