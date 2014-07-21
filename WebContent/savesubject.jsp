<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String subjectName = request.getParameter("subjectName");
	String description = request.getParameter("description");
	
	Subject subject = new Subject(subjectName,description);
	subject.addSubject();
%>
<%@include file="showaddsubjectform.jsp"%>
<p class='msg done'>Subject Saved Successfully!</p>