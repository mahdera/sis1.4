<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String applicantId = request.getParameter("applicantId");
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	//first save this information to tbl_student
	Student student = new Student(applicantId);
	student.addStudent();
	//now change the status of tbl_applicant to "Admitted"
	Applicant.updateStatusOfApplicantTo(applicantId,"Admitted");
	Student fetchedStudent = Student.getStudentUsingApplicantId(applicantId);
	//now put this information to tbl_student_level
	Section sec = Section.getSection(sectionId);
	int levelId = sec.getLevelId();
	
	//StudentLevel studentLevel = new StudentLevel(fetchedStudent.getId(),levelId,sectionId);
	StudentLevel studentLevel = new StudentLevel(applicantId,levelId,sectionId);
	studentLevel.addStudentLevel();
%>
<p class="msg done">Student Placed Successfully!</p>