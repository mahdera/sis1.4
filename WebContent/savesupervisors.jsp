<%@ page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String type = request.getParameter("type");
	String user = request.getParameter("user");
	String section = request.getParameter("section");
	String levelfrom = request.getParameter("levelfrom");
	String levelto = request.getParameter("levelto");
	String status = request.getParameter("status");
	String date = request.getParameter("date");

	Supervisors se = new Supervisors(type, user, section, levelfrom,
			levelto, status, date);
	se.addSupervisor();
%>
<%@include file="showaddsupervisorsform.jsp"%>
<p class="msg done">Supervisors Information Saved Successfully!</p>