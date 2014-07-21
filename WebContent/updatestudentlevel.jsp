<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	long studentId = Long.parseLong(request.getParameter("studentId"));
	boolean studentSelected = Boolean.parseBoolean(request.getParameter("studentSelected"));
	int newLevelId = Integer.parseInt(request.getParameter("newLevelId"));
	//int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	
	if(studentSelected)
		StudentLevel.updateTheLevelOfThisStudent(studentId,newLevelId);
%>
<p class="msg done">Student/s level information updated successfully!</p>