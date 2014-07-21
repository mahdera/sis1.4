<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String categoryName = request.getParameter("categoryName");
	int primarySecondaryId = Integer.parseInt(request.getParameter("primarySecondaryId"));
	Category category = new Category(categoryName,primarySecondaryId);
	category.addCategory();
%>
<%@include file="showaddcategoryform.jsp"%>
<p class="msg done">Category Saved successfully!</p>