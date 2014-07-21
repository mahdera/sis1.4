<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String studentId = request.getParameter("id");
	Applicant studentApplicant = Applicant.getApplicantUsingStudentId(studentId);
	if(studentApplicant != null){
		out.print(studentApplicant.getDateOfBirth());
	}else{
		out.print("No DOB information found!");
	}
%>