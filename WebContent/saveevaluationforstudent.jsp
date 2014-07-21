<%@page import="java.util.StringTokenizer"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String studentId = Integer.parseInt(request.getParameter("studentId"));
	String strVal = request.getParameter("strValues");
	String comment = request.getParameter("comment");
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	int termId = Integer.parseInt(request.getParameter("termId"));
	//out.print(subjectId+":"+teacherId+":"+studentId+":"+strVal);
	StringTokenizer token = new StringTokenizer(strVal,":");
	try{
		while(token.hasMoreTokens()){
			int criteriaId = Integer.parseInt(token.nextToken());
			String achievement = token.nextToken();
			String effort = token.nextToken();
			//out.print(criteriaId+"-"+achievement+"-"+effort);
			/*out.print("<br/>criteria id: "+criteriaId);
			out.print("<br/>achievement: "+achievement);
			out.print("<br/>effort: "+effort);*/
			StudentEvaluation stEval = new StudentEvaluation(studentId,teacherId,subjectId,criteriaId,achievement,effort,comment,academicYearId,termId);
			stEval.addStudentEvaluation();
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<p class='msg done'>Student Evaluation Saved Successfully!</p>