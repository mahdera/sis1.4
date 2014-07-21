<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page language="java" pageEncoding="utf-8"%>
<%
	int term = Integer.parseInt(request.getParameter("termId"));
	String stud = request.getParameter("studId");
	int level = Integer.parseInt(request.getParameter("levelId"));
	String year = request.getParameter("academicYearId");
	int subject = Integer.parseInt(request.getParameter("subjectId"));
	Takes.drop(stud, year, level, term, subject);
%>
<p class="msg done">Successfully removed subject from student course list!</p>