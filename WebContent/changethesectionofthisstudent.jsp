<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	long studentId = Long.parseLong(request.getParameter("studentId"));
	int newSectionId = Integer.parseInt(request.getParameter("newSectionId"));
	
	//out.println(studentId+":"+newSectionId);
	StudentLevel.updateTheSectionOfThisStudent(studentId,newSectionId);
%>
<p class="msg done">Student section updated successfully!</p>