<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	AdmissionAgeRule.deleteAdmissionAgeRule(id);
%>
<%@include file="showlistofadmissionagerulesfordelete.jsp"%>
<p class="msg done">Admission age rule deleted successfully!</p>