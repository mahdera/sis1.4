<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Teaches.deleteTeaches(id);
%>
<%@include file="showteacherandsemesteracademicyearselectorbarfordelete.jsp"%>
<p class="msg done">Teaches deleted successfully!</p>