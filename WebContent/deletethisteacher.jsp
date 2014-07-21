<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Teacher.deleteTeacher(id);
%>
<%@include file="showlistofteachersfordelete.jsp"%>
<p class="msg done">Teacher deleted successfully!</p>