<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>

<%
	String studentId = request.getParameter("studentId");	
	String academicYearId = request.getParameter("academicYearId");
	int semesterId = Integer.parseInt(request.getParameter("semesterId"));	
	
	GradeCard.viewGradeCard(studentId, semesterId, academicYearId);
	
	
%>
<%@ include file="showlistofsectionsforedit.jsp"%>
<p class="msg done">Section Updated Successfully!</p>
