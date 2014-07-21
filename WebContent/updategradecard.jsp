<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int counter = Integer.parseInt(request.getParameter("counter"));
	//String teacherId = request.getParameter("teacherId");
	//int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	//int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	//String exam = request.getParameter("examId");
	//String examNoId = request.getParameter("examNoId");	
	//int semesterId = Integer.parseInt(request.getParameter("semesterId"));
	//int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	
	for(int i=1; i<counter;i++){	
		    int gradeId = Integer.parseInt(request.getParameter("gradeId_"+i));
			String studentId = request.getParameter("studentId_"+i);
			String grade = request.getParameter("txtGrade_" + i);
			String eff = request.getParameter("txtEff_"+i);
			String cond = request.getParameter("txtCond_"+i);
		if(!grade.equalsIgnoreCase("") || !eff.equalsIgnoreCase("") || !cond.equalsIgnoreCase("")){	
			//GradeCard gradeCard = new GradeCard(gradeId, teacherId, sectionId, studentId, subjectId, grade, eff, exam, cond,
				//	semesterId, academicYearId);
			GradeCard gradeCard = new GradeCard(gradeId, "", 0, studentId, 0, grade, eff, cond, 0, 0);
			gradeCard.updateGradeCard();
		}
	}
%>
<%@ include file="showgradecardsparameterselectorbarforedit.jsp"%>
<p class="msg done">Grade Card Updated Successfully!</p>