<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	out.print(PrimarySecondary.getPrimarySecondary(id).getPrimarySecondaryName());
%>