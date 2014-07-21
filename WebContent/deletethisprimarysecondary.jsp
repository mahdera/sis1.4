<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	PrimarySecondary.deletePrimarySecondary(id);
%>
<%@include file="showprimarysecondariesfordelete.jsp"%>
<p class="msg done">Category deleted successfully!</p>