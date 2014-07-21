<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String userFullName = request.getParameter("userFullName");
	int id = Integer.parseInt(userFullName.substring(0, userFullName.indexOf(" ")));
	String firstName = userFullName.substring(userFullName.indexOf(" ")+1, userFullName.indexOf(" ", userFullName.indexOf(" ")+1));
	String middleNameAndLastName = userFullName.substring(userFullName.indexOf(" ", userFullName.indexOf(" ")+1));
	String middleName = middleNameAndLastName.substring(0, middleNameAndLastName.indexOf(" "));
	String lastName = middleNameAndLastName.substring(middleNameAndLastName.indexOf(" ", middleNameAndLastName.indexOf(" ")+1));
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String nationality = request.getParameter("nationality");
	String passportNumber = request.getParameter("passportNumber");
	String shortname = request.getParameter("shortname");
	
	Teacher teacher = new Teacher(id, firstName,middleName,lastName,email,mobile,nationality,passportNumber,shortname);
	teacher.addTeacher();
%>
<%@include file="showaddteacherform.jsp"%>
<p class="msg done">Teacher saved successfully!</p>