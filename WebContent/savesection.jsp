<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	String sectionName = request.getParameter("sectionName");
	int classSize = Integer.parseInt(request.getParameter("classSize"));
	
	Section section = new Section(levelId,sectionName,classSize);
	section.addSection();
%>
<%@include file="showaddsectionform.jsp"%>
<p class="msg done">Section Saved Successfully!</p>