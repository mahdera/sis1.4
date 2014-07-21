<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	String subjectName = request.getParameter("subjectName");
	String description = request.getParameter("description");
	
	Subject.updateSubject(subjectId, subjectName, description);
%>
<%@include file="showlistofsubjectsforedit.jsp"%>
<p class="msg done">Subject updated successfully!</p>