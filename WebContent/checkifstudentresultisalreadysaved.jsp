<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%
	String table = request.getParameter("table");
	String evaluationType = request.getParameter("evaluationType");
	String studentIdNumber = request.getParameter("studentIdNumber");	
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	int currentYearOnly = 1900 + modificationDate.getYear();
	
	if(table.equalsIgnoreCase("nursery") && evaluationType.equalsIgnoreCase("mid-year")){
		boolean recordExists = NurseryMidYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("nursery") && evaluationType.equalsIgnoreCase("end-year")){
		boolean recordExists = EarlyYearsEndYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("reception") && evaluationType.equalsIgnoreCase("mid-year")){
		boolean recordExists = ReceptionMidYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("reception") && evaluationType.equalsIgnoreCase("end-year")){
		boolean recordExists = EarlyYearsEndYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("keystageone") && evaluationType.equalsIgnoreCase("mid-year")){
		boolean recordExists = KeyStageOneMidYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("keystageone") && evaluationType.equalsIgnoreCase("end-year")){
		boolean recordExists = KeyStageOneEndYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("keystagetwo") && evaluationType.equalsIgnoreCase("mid-year")){
		boolean recordExists = KeyStageTwoMidYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("keystagetwo") && evaluationType.equalsIgnoreCase("end-year")){
		boolean recordExists = KeyStageTwoEndYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("keystagetwoyearsix") && evaluationType.equalsIgnoreCase("mid-year")){
		boolean recordExists = KeyStageTwoMidYearEvaluation.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}else if(table.equalsIgnoreCase("keystagetwoyearsix") && evaluationType.equalsIgnoreCase("end-year")){
		boolean recordExists = KeyStageTwoEndYearEvaluationYearSix.resultAlreadySavedForThisStudentAndAcademicYear(studentIdNumber,currentYearOnly);
		if(recordExists)
			out.print("Saved");
		else
			out.print("Not");
	}
%>