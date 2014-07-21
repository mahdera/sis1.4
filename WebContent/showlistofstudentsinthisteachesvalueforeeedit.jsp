<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long teachesId = Long.parseLong(request.getParameter("teachesId"));
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	int termId = Integer.parseInt(request.getParameter("termId"));
	int subjectId = Teaches.getTeaches(teachesId).getSubjectId();
	int sectionId = Teaches.getTeaches(teachesId).getSectionId();
	List<StudentEvaluation> se = StudentEvaluation.getStudentsByLTAT(teacherId, academicYearId, termId, sectionId, subjectId);
	Iterator<StudentEvaluation> seItr = se.iterator();
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
<form>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Student Full Name</th>
		<th>Task</th>
	</tr>
	<%
	int ctr=1;
	while(seItr.hasNext()){
		StudentEvaluation stEval = seItr.next();
		String id = stEval.getStudentId();
		String applicantId = Student.getStudent(id).getApplicantId();
		Applicant applicant = Applicant.getApplicant(applicantId);
		%>
		<tr>
			<td><%=ctr %></td>
			<td><%=applicant.getFirstName() %> <%=applicant.getMiddleName() %> <%=applicant.getLastName() %></td>
			<td>
				<a href="#.jsp" onclick="showAchievementEvaluationFormForThisStudentForEdit(<%=id%>,<%=subjectId %>,<%=teacherId%>,<%=termId%>,<%=academicYearId%>);">Show Form</a>
				|
				<a href="#.jsp" onclick="hideAchievementEvaluationFormForThisStudentForEdit(<%=id%>);">Hide Form</a>
			</td>
		</tr>
		<%
			String divId = "evalDiv"+id;
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