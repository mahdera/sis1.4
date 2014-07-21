<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Level.deleteLevel(id);
%>
<%@include file="showlistoflevelsfordelete.jsp"%>
<p class="msg done">Level deleted successfully!</p>