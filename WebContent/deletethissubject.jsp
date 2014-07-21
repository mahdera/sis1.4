<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Subject.deleteSubject(id);
%>
<%@include file="showlistofsubjectsfordelete.jsp"%>
<p class="msg done">Subject deleted successfully!</p>