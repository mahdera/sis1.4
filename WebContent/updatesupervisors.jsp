<%@ page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String type = request.getParameter("type");
	String supervisor = request.getParameter("supervisor");
	String section = request.getParameter("section");
	String levelfrom = request.getParameter("levelfrom");
	String levelto = request.getParameter("levelto");
	String status = request.getParameter("status");
	String date = request.getParameter("date");
	
		Supervisors se = new Supervisors(id, type, supervisor, section, levelfrom,
				levelto, status, date);
		se.updateSupervisor();
%>
<%@include file="showlistofsupervisorsforedit.jsp"%>
<p class="msg done">Supervisors Information Updated Successfully!</p>