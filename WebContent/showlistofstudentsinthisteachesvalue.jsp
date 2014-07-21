<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long teachesId = Long.parseLong(request.getParameter("teachesId"));
%>
<table border="0" width="100%">
	<tr>
		<td colspan="8"><strong>Key to grades:</strong> according to year group standards</td>
	</tr>
	<tr>
		<td colspan="4"><strong>ACHIEVEMENT</strong></td>
		<td colspan="4"><strong>EFFORT</strong></td>
	</tr>
	<tr>
		<td>E</td>
		<td>Exceeding Expectations</td>
		<td>S</td>
		<td>Achieving Some Expectations</td>
		<td>1</td>
		<td>Excellent</td>
		<td>3</td>
		<td>Satisfactory</td>
	</tr>
	<tr>
		<td>M</td>
		<td>Meeting Expectations</td>
		<td>N</td>
		<td>Not Yet Achieving Expectations</td>
		<td>2</td>
		<td>Good</td>
		<td>4</td>
		<td>Unsatisfactory</td>
	</tr>
</table>
<%
	//now Mahder...get all students in this level
	Teaches teaches = Teaches.getTeaches(teachesId);
	List<StudentLevel> studentLevelList = StudentLevel.getStudentLevelFormThisLevel(teaches.getSectionId(),teaches.getTeacherId(),teaches.getSubjectId(),teaches.getSemesterId(),teaches.getAcademicYearId());
	Iterator<StudentLevel> studentLevelItr = studentLevelList.iterator();
	int subjectId = teaches.getSubjectId();
	int sectionId = teaches.getSectionId();
	int teacherId = teaches.getTeacherId();
%>
<form>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Student Full Name</th>
		<th>Task</th>
	</tr>
	<%
	int ctr=1;
	while(studentLevelItr.hasNext()){
		StudentLevel stLevel = studentLevelItr.next();
		Student student = Student.getStudent(stLevel.getStudentId());
		Applicant applicant = Applicant.getApplicant(student.getApplicantId());
		%>
		<tr>
			<td><%=ctr %></td>
			<td><%=applicant.getFirstName() %> <%=applicant.getMiddleName() %> <%=applicant.getLastName() %></td>
			<td>
				<a href="#.jsp" onclick="showAchievementEvaluationFormForThisStudent(<%=student.getId()%>,<%=subjectId %>,<%=sectionId%>,<%=teacherId%>);">Show Form</a>
				|
				<a href="#.jsp" onclick="hideAchievementEvaluationFormForThisStudent(<%=student.getId()%>);">Hide Form</a>
			</td>
		</tr>
		<%
			String divId = "evalDiv"+student.getId();
		%>
		<tr>
			<td colspan="3">
				<div id="<%=divId%>"></div>
			</td>
		</tr>
		<%
		ctr++;
	}
	%>
</table>
</form>