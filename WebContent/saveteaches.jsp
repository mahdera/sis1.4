<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	int termId = Integer.parseInt(request.getParameter("termId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	
	Teaches te = new Teaches(teacherId,subjectId,sectionId,termId,academicYearId);
	te.addTeaches();
%>
<%@include file="showaddteachesform.jsp"%>
<p class="msg done">Teaches Information Saved Successfully!</p>