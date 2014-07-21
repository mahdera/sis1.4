<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	EvaluationCriteria.deleteEvaluationCriteria(id);
%>
<%@include file="showlistofevaluationcriteriasfordelete.jsp"%>
<p class="msg done">Category deleted successfully!</p>