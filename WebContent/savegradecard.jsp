<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
    int counter = Integer.parseInt(request.getParameter("counter"));
    String teacherId = request.getParameter("teacherId");
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));	
	int semesterId = Integer.parseInt(request.getParameter("semesterId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	System.out.println("command nanana  = 1 ");
	for(int i=1; i<counter;i++){	
		System.out.println("command nanana  = 2 ");
			String studentId = request.getParameter("studentId_"+i);
			String grade = request.getParameter("txtGrade_" + i);
			String eff = request.getParameter("txtEff_"+i);
			String cond = request.getParameter("txtNarrative_"+i);
			System.out.println("command nanana  = 3 grade = "+grade);
		if(!grade.equalsIgnoreCase("") || !eff.equalsIgnoreCase("") || !cond.equalsIgnoreCase("")){
			System.out.println("command nanana  = 4 ");
			GradeCard gradeCard = new GradeCard(teacherId,sectionId,studentId,subjectId,grade,eff,cond,
					semesterId,academicYearId);
			gradeCard.addGradeCard();
		}
	}
%>

<p class="msg done">Grade Card Saved Successfully!</p>