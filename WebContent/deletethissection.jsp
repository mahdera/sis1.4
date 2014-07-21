<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Section.deleteSection(id);
%>
<%@include file="showlistofsectionsfordelete.jsp"%>
<p class="msg done">Category deleted successfully!</p>