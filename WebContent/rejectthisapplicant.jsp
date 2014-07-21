<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String applicantId = request.getParameter("applicantId");
	Applicant.deleteApplicant(applicantId);
%>
<p class="msg done">The applicant is rejected successfully</p>