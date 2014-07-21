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
	
	KeyStageTwoEndYearEvaluation keyStageTwoEndYearEvaluation = KeyStageTwoEndYearEvaluation.getKeyStageTwoEndYearEvaluation(id);
	keyStageTwoEndYearEvaluation.setLiteracyReadingAchievement(literacyReadingAchievement);
	keyStageTwoEndYearEvaluation.setLiteracyReadingEffort(literacyReadingEffort);
	keyStageTwoEndYearEvaluation.setLiteracyWritingAchievement(literacyWritingAchievement);
	keyStageTwoEndYearEvaluation.setLiteracyWritingEffort(literacyWritingEffort);
	keyStageTwoEndYearEvaluation.setLiteracySpeakingAndListeningAchievement(literacySpeakingAndListeningAchievement);
	keyStageTwoEndYearEvaluation.setLiteracySpeakingAndListeningEffort(literacySpeakingAndListeningEffort);
	keyStageTwoEndYearEvaluation.setLiteracyClassTeacherComments(literacyClassTeacherComments);
	keyStageTwoEndYearEvaluation.setNumeracyNumberAndCalculationAchievement(numeracyNumberAndCalculationAchievement);
	keyStageTwoEndYearEvaluation.setNumeracyNumberAndCalcualtionEffort(numeracyNumberAndCalculationEffort);
	keyStageTwoEndYearEvaluation.setNumeracyShapeSpaceAndMeasureAchievement(numeracyShapeSpaceAndMeasuresAchievement);
	keyStageTwoEndYearEvaluation.setNumeracyShapeSpaceAndMeasureEffort(numeracyShapeSpaceAndMeasuresEffort);
	keyStageTwoEndYearEvaluation.setNumeracyDataHandlingAchievement(numeracyDataHandlingAchievement);
	keyStageTwoEndYearEvaluation.setNumeracyDataHandlingEffort(numeracyDataHandlingEffort);
	keyStageTwoEndYearEvaluation.setNumeracyProblemSolvingAchievement(numeracyProblemSolvingAchievement);
	keyStageTwoEndYearEvaluation.setNumeracyProblemSolvingEffort(numeracyProblemSolvingEffort);
	keyStageTwoEndYearEvaluation.setNumeracyClassTeacherComments(numeracyClassTeacherComments);
	keyStageTwoEndYearEvaluation.setIpcScienceAchievement(ipcScienceAchievement);
	keyStageTwoEndYearEvaluation.setIpcScienceEffort(ipcScienceEffort);
	keyStageTwoEndYearEvaluation.setIpcHumanitiesAchievement(ipcHumanitiesAchievement);
	keyStageTwoEndYearEvaluation.setIpcHumanitiesEffort(ipcHumanitiesEffort);
	keyStageTwoEndYearEvaluation.setIpcArtAndDesignAchievement(ipcArtAndDesignAchievement);
	keyStageTwoEndYearEvaluation.setIpcArtAndDesignEffort(ipcArtAndDesignEffort);
	keyStageTwoEndYearEvaluation.setIpcClassTeacherComments(ipcClassTeacherComments);
	keyStageTwoEndYearEvaluation.setClassTeacherGeneralComments(classTeacherGeneralComments);
	keyStageTwoEndYearEvaluation.setSuggestedTargestForthcomingYear(suggestedTargetsForthcomingYear);
	keyStageTwoEndYearEvaluation.setModifiedBy(modifiedBy);
	keyStageTwoEndYearEvaluation.setModificationDate(modificationDate);
	KeyStageTwoEndYearEvaluation.update(keyStageTwoEndYearEvaluation);
%>
<p class="msg done">Evaluation result updated successfully!</p>