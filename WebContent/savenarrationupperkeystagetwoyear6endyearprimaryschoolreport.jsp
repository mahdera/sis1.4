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
	
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String studentIdNumber = request.getParameter("studentIdNumber");
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
	String literacyVocabularyGrammarPunctuationAchievement = request.getParameter("literacyVocabularyGrammarPunctuationAchievement");
	int literacyVocabularyGrammarPunctuationEffort = Integer.parseInt(request.getParameter("literacyVocabularyGrammarPunctuationEffort"));
	
	KeyStageTwoEndYearEvaluationYearSix keyStageTwoEndYearEvaluationYearSix = new KeyStageTwoEndYearEvaluationYearSix(sectionId,studentIdNumber,
			literacyReadingAchievement,literacyReadingEffort,literacyWritingAchievement,literacyWritingEffort,
			literacySpeakingAndListeningAchievement,literacySpeakingAndListeningEffort,literacyVocabularyGrammarPunctuationAchievement,
			literacyVocabularyGrammarPunctuationEffort,literacyClassTeacherComments,
			numeracyNumberAndCalculationAchievement,numeracyNumberAndCalculationEffort,
			numeracyShapeSpaceAndMeasuresAchievement,numeracyShapeSpaceAndMeasuresEffort,
			numeracyDataHandlingAchievement,numeracyDataHandlingEffort,numeracyProblemSolvingAchievement,
			numeracyProblemSolvingEffort,numeracyClassTeacherComments,ipcScienceAchievement,ipcScienceEffort,
			ipcHumanitiesAchievement,ipcHumanitiesEffort,ipcArtAndDesignAchievement,ipcArtAndDesignEffort,
			ipcClassTeacherComments,classTeacherGeneralComments,suggestedTargetsForthcomingYear,
			modificationDate,modifiedBy,modificationDate);
	keyStageTwoEndYearEvaluationYearSix.save(); 
%>
<p class="msg done">End-year student evaluation result saved successfully!</p>