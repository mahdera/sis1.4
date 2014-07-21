<%@page import="java.util.*" %>
<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	int subject = Integer.parseInt(request.getParameter("subject"));
	int level = Integer.parseInt(request.getParameter("level"));
	String criteriaName = request.getParameter("criteriaName");
	EvaluationCriteria.updateEvaluationCriteria(id, subject, level, criteriaName);
%>
<%@include file="showlistofevaluationcriteriasforedit.jsp"%>
<p class="msg done">Evaluation Criteria Updated Successfully!</p>