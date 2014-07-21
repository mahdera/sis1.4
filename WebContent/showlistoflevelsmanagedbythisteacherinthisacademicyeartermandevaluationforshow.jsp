<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	int termId = Integer.parseInt(request.getParameter("termId"));
	int teachesId = Integer.parseInt(request.getParameter("teachesId"));
	int levelId = Teaches.getTeaches(teachesId).getSectionId();
	int subjectId = Teaches.getTeaches(teachesId).getSubjectId();
	List<StudentEvaluation> studentEvaluation = StudentLevel.getStudentAchievementAnaEffort(levelId, teacherId, subjectId, termId, academicYearId);
	int count = StudentLevel.countEvaluationCriteria(subjectId);
	Iterator<StudentEvaluation> stuItr = studentEvaluation.iterator();
	int ind=0;
	%>
		<table border="1" width="100%">
		<tr><td>Student Name</td><td>Subject</td><td>Evaluation Criteria</td><td>Achievement</td><td>Effort</td><td>Teacher's Comment</td></tr>
	<%
	while(stuItr.hasNext()){
		StudentEvaluation sEval = stuItr.next();
		Applicant app = Applicant.getApplicant(Student.getStudent(sEval.getStudentId()).getApplicantId());
		if(ind==0){
			%>
				<tr>
					<td rowspan="<%=count%>"><%=app.getFirstName() %></td><td rowspan="<%=count%>"><%=Subject.getSubject(sEval.getSubjectId()).getSubjectName() %></td><td><%=EvaluationCriteria.getEvaluationCriteria(sEval.getEvaluationCriteriaId() ).getEvaluationCriteriaName()%></td><td><%=sEval.getAchievement() %></td><td><%=sEval.getEffort() %></td><td><%=sEval.getTeachersComment() %></td>
				</tr>
			<%
			if(ind==count-1){
				ind=0;
			}
			else{
				ind=ind+1;
			}
			
		}
		else{
			%>
			<tr>
				<td><%=EvaluationCriteria.getEvaluationCriteria(sEval.getEvaluationCriteriaId() ).getEvaluationCriteriaName() %></td><td><%=sEval.getAchievement() %></td><td><%=sEval.getEffort() %></td><td><%=sEval.getTeachersComment() %></td>
			</tr>
		<%
			if(ind==count-1){
				ind=0;
			}
		}
	}
%>
	</table>	