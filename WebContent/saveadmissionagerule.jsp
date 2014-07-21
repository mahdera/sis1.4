<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	int lowerBoundary = Integer.parseInt(request.getParameter("lowerBoundary"));
	int upperBoundary = Integer.parseInt(request.getParameter("upperBoundary"));
	
	AdmissionAgeRule admissionAgeRule =  new AdmissionAgeRule(levelId,lowerBoundary,upperBoundary);
	admissionAgeRule.addAdmissionAgeRule();
%>
<%@include file="showaddadmissionageruleform.jsp"%>
<p class='msg done'>Admission Age Rule Saved Successfully!</p>