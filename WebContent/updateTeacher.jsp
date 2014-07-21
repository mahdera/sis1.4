<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String firstName = request.getParameter("firstName");
	String middleName = request.getParameter("middleName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String nationality = request.getParameter("nationality");
	String passport = request.getParameter("passport");
	String shortname = request.getParameter("shortname");
	Teacher.updateTeacher(teacherId,firstName,middleName,lastName,email,mobile,nationality,passport,shortname);
%>
<%@ include file="showlistofteachersforedit.jsp"%>
<p class="msg done">teacher Updated Successfully!</p>