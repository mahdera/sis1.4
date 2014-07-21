<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	
	long id = Long.parseLong(request.getParameter("id"));
	String literacyReadingAchievement = request.getParameter("literacyReadingAchievement");
	int literacyReadingEffort = Integer.parseInt(request.getParameter("literacyReadingEffort"));
	String literacyWritingAchievement = request.getParameter("literacyWritingAchievement");
	int literacyWritingEffort = Integer.parseInt(request.getParameter("literacyWritingEffort"));
	String literacySpeakingAndListeningAchievement = request.getParameter("literacySpeakingAndListeningAchievement");
	int literacySpeakingAndListeningEffort = Integer.parseInt(request.getParameter("literacySpeakingAndListeningEffort"));
	String literacyClassTeacherComments = request.getParameter("literacyClassTeacherComments");
	String numeracyNumberAndCalculationAchievement = request.getParameter("numeracyNumberAndCalculationAchievement");
	int numeracyNumberAndCalculationEffort = Integer.parseInt(request.getParameter("numeracyNumberAndCalculationEffort"));
	String numeracyShapeSpaceAndMeasuresAchievement = request.getParameter("numeracyShapeSpaceAndMeasuresAchievement");
	int numeracyShapeSpaceAndMeasuresEffort = Integer.parseInt(request.getParameter("numeracyShapeSpaceAndMeasuresEffort"));
	String numeracyDataHandlingAchievement = request.getParameter("numeracyDataHandlingAchievement");
	int numeracyDataHandlingEffort = Integer.parseInt(request.getParameter("numeracyDataHandlingEffort"));
	String numeracyProblemSolvingAchievement = request.getParameter("numeracyProblemSolvingAchievement");
	int numeracyProblemSolvingEffort = Integer.parseInt(request.getParameter("numeracyProblemSolvingEffort"));
	String numeracyClassTeacherComments = request.getParameter("numeracyClassTeacherComments");
	String ipcScienceAchievement = request.getParameter("ipcScienceAchievement");
	int ipcScienceEffort = Integer.parseInt(request.getParameter("ipcScienceEffort"));
	String ipcHumanitiesAchievement = request.getParameter("ipcHumanitiesAchievement");
	int ipcHumanitiesEffort = Integer.parseInt(request.getParameter("ipcHumanitiesEffort"));
	String ipcArtAndDesignAchievement = request.getParameter("ipcArtAndDesignAchievement");
	int ipcArtAndDesignEffort = Integer.parseInt(request.getParameter("ipcArtAndDesignEffort"));
	String ipcClassTeacherComments = request.getParameter("ipcClassTeacherComments");
	String classTeacherGeneralComments = request.getParameter("classTeacherGeneralComments");
	String suggestedTargetsForthcomingYear = request.getParameter("suggestedTargetsForthcomingYear");
	
	KeyStageOneEndYearEvaluation keyStageOneEndYearEvaluation = KeyStageOneEndYearEvaluation.getKeyStageOneEndYearEvaluation(id);
	keyStageOneEndYearEvaluation.setLiteracyReadingAchievement(literacyReadingAchievement);
	keyStageOneEndYearEvaluation.setLiteracyReadingEffort(literacyReadingEffort);
	keyStageOneEndYearEvaluation.setLiteracyWritingAchievement(literacyWritingAchievement);
	keyStageOneEndYearEvaluation.setLiteracyWritingEffort(literacyWritingEffort);
	keyStageOneEndYearEvaluation.setLiteracySpeakingAndListeningAchievement(literacySpeakingAndListeningAchievement);
	keyStageOneEndYearEvaluation.setLiteracySpeakingAndListeningEffort(literacySpeakingAndListeningEffort);
	keyStageOneEndYearEvaluation.setLiteracyClassTeacherComments(literacyClassTeacherComments);
	keyStageOneEndYearEvaluation.setNumeracyNumberAndCalculationAchievement(numeracyNumberAndCalculationAchievement);
	keyStageOneEndYearEvaluation.setNumeracyNumberAndCalcualtionEffort(numeracyNumberAndCalculationEffort);
	keyStageOneEndYearEvaluation.setNumeracyProblemSolvingAchievement(numeracyProblemSolvingAchievement);
	keyStageOneEndYearEvaluation.setNumeracyProblemSolvingEffort(numeracyProblemSolvingEffort);
	keyStageOneEndYearEvaluation.setNumeracyDataHandlingAchievement(numeracyDataHandlingAchievement);
	keyStageOneEndYearEvaluation.setNumeracyDataHandlingEffort(numeracyDataHandlingEffort);
	keyStageOneEndYearEvaluation.setNumeracyShapeSpaceAndMeasureAchievement(numeracyShapeSpaceAndMeasuresAchievement);
	keyStageOneEndYearEvaluation.setNumeracyShapeSpaceAndMeasureEffort(numeracyShapeSpaceAndMeasuresEffort);
	keyStageOneEndYearEvaluation.setNumeracyClassTeacherComments(numeracyClassTeacherComments);
	keyStageOneEndYearEvaluation.setIpcScienceAchievement(ipcScienceAchievement);
	keyStageOneEndYearEvaluation.setIpcScienceEffort(ipcScienceEffort);
	keyStageOneEndYearEvaluation.setIpcHumanitiesAchievement(ipcHumanitiesAchievement);
	keyStageOneEndYearEvaluation.setIpcHumanitiesEffort(ipcHumanitiesEffort);
	keyStageOneEndYearEvaluation.setIpcArtAndDesignAchievement(ipcArtAndDesignAchievement);
	keyStageOneEndYearEvaluation.setIpcArtAndDesignEffort(ipcArtAndDesignEffort);
	keyStageOneEndYearEvaluation.setIpcClassTeacherComments(ipcClassTeacherComments);
	keyStageOneEndYearEvaluation.setClassTeacherGeneralComments(classTeacherGeneralComments);
	keyStageOneEndYearEvaluation.setSuggestedTargestForthcomingYear(suggestedTargetsForthcomingYear);
	keyStageOneEndYearEvaluation.setModifiedBy(modifiedBy);
	keyStageOneEndYearEvaluation.setModificationDate(modificationDate);
	KeyStageOneEndYearEvaluation.update(keyStageOneEndYearEvaluation);
%>
<p class="msg done">Evaluation result updated successfully!</p>