<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String levelName = request.getParameter("levelName");
	int categoryId = Integer.parseInt(request.getParameter("categoryId"));
	
	Level l = new Level(levelName,categoryId);
	l.addLevel();
%>
<p class="msg done">Level Saved successfully!</p>