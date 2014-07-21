<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Category.deleteCategory(id);
%>
<%@include file="showlistofcategoriesfordelete.jsp"%>
<p class="msg done">Category deleted successfully!</p>