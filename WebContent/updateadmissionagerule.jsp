<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int admissionAgeRuleId = Integer.parseInt(request.getParameter("admissionAgeRuleId"));
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	int lowerBoundary = Integer.parseInt(request.getParameter("lowerBoundary"));
	int upperBoundary = Integer.parseInt(request.getParameter("upperBoundary"));
	
	AdmissionAgeRule.updateAdmissionAgeRule(admissionAgeRuleId,levelId,lowerBoundary,upperBoundary);
%>
<%@include file="showlistofadmissionagerulesforedit.jsp"%>
<p class="msg done">Admission Age Updated Successfully!</p>