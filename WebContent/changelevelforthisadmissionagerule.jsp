<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	out.print(Level.getLevel(levelId).getLevelName());
%>