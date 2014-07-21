<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	String criteriaName = request.getParameter("criteriaName");
	
	EvaluationCriteria e = new EvaluationCriteria(subjectId,levelId,criteriaName);
	e.addEvaluationCriteria();
%>
<%@include file="showaddevaluationcriteriaform.jsp"%>
<p class="msg done">Evaluation Criteria Saved Successfully!</p>