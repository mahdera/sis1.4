<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	//int teacher = Integer.parseInt(request.getParameter("teacher"));
	int subject = Integer.parseInt(request.getParameter("subject"));
	int level = Integer.parseInt(request.getParameter("level"));
	//int term = Integer.parseInt(request.getParameter("term"));
	//int academicYear = Integer.parseInt(request.getParameter("academicYear"));
	Teaches.updateTeaches(id, subject, level);
%>
<%@include file="showteacherandsemesteracademicyearselectorbarforedit.jsp"%>
<p class="msg done">Teaches Updated Successfully!</p>