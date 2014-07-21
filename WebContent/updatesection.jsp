<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));	
	int level = Integer.parseInt(request.getParameter("level"));
	int classSize =Integer.parseInt(request.getParameter("classSize"));	
	String sectionName = request.getParameter("sectionName");
	Section.updateSection(id, level, sectionName, classSize);
%>
<%@ include file="showlistofsectionsforedit.jsp"%>
<p class="msg done">Section Updated Successfully!</p>