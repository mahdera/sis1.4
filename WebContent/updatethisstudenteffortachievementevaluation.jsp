<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int studentId = Integer.parseInt(request.getParameter("studentId"));
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int termId = Integer.parseInt(request.getParameter("termId"));
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	int numberOfRows = Integer.parseInt(request.getParameter("numberOfRows"));
	int evalCriteria = 0;
	String achievement="";
	String effort="";
	String teachersComment="";
	for(int i=1;i<=numberOfRows;i++){
		evalCriteria = Integer.parseInt(request.getParameter("hidden"+i));
		achievement = request.getParameter("txtachievement"+i);
		effort =request.getParameter("txteffort"+i);
		teachersComment =request.getParameter("txtteachercomment"+i);
		StudentEvaluation.updateStudentEvaluation(studentId, subjectId, teacherId, termId, academicYearId, evalCriteria, achievement, effort, teachersComment);
	}
	
%>
<p class="msg done">Student's Evaluation Updated Successfully!</p>