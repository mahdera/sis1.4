<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int categoryId = Integer.parseInt(request.getParameter("categoryId"));
	String categoryName = request.getParameter("categoryName");
	int primarysecondary = Integer.parseInt(request.getParameter("primarysecondary"));
	Category.updateCategory(categoryId, categoryName, primarysecondary);
%>
<%@ include file="showlistofcategoriesforedit.jsp"%>
<p class="msg done">Category Updated Successfully!</p>