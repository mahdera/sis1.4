<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int studentId = Integer.parseInt(request.getParameter("studentId"));
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int termId = Integer.parseInt(request.getParameter("termId"));
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	List<StudentEvaluation> se = StudentEvaluation.getStudentBYIDAT(studentId, teacherId, academicYearId, termId, subjectId);
	Iterator<StudentEvaluation> seItr = se.iterator();
	%>
	<table width="100%" id="editevaluation">
	<tr><td>Evaluation Criteria</td><td>Achievement</td><td>Effort</td><td>Teachers Comment</td></tr>
	<%
	int counter = 1;
	while(seItr.hasNext()){
		StudentEvaluation s = seItr.next();
		%>
		<tr>
		<td><%=EvaluationCriteria.getEvaluationCriteria(s.getEvaluationCriteriaId()).getEvaluationCriteriaName() %>
		<input type="hidden" id="hidden<%=counter %>" value="<%=s.getEvaluationCriteriaId()%>"/>
		</td>
		<td><input type="text" id="txtachievement<%=counter %>" value="<%=s.getAchievement() %>"/></td>
		<td><input type="text" id="txteffort<%=counter %>" value="<%=s.getEffort() %>"/></td>
		<td><input type="text" id="txtteachercomment<%=counter %>" value="<%=s.getTeachersComment() %>"/></td>
		</tr>
		<%
		counter=counter+1;
	}
%>
<tr><td colspan="4" align="center"><input type="button" value="update" onclick="updateThisStudentEffortAchivementEvaluation(<%=studentId%>,
	<%=subjectId%>,<%=teacherId%>,<%=termId%>,<%=academicYearId%>,document.getElementById('editevaluation'));"/></td></tr>
</table>