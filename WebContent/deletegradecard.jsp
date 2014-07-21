<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	GradeCard.deleteGradeCard(id);
	
%>
<%@include file="showgradecardsparameterselectorbarfordelete.jsp"%>
<p class="msg done">Grade card deleted successfully!</p>
