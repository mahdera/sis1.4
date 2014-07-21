<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("supervisorId"));
	Supervisors.deleteSupervisor(id);
%>
<p class="msg done">Supervisor deleted successfully!</p>
