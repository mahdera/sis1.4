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
	int literacyReadingEffort = Integer.parseInt(request.getParameter("literacyReadingEffort"));
	int literacyWritingEffort = Integer.parseInt(request.getParameter("literacyWritingEffort"));
	int literacySpeakingAndListeningEffort = Integer.parseInt(request.getParameter("literacySpeakingAndListeningEffort"));
	String literacyClassTeacherComments = request.getParameter("literacyClassTeacherComments");
	int numeracyEffort = Integer.parseInt(request.getParameter("numeracyEffort"));
	String numeracyClassTeacherComments = request.getParameter("numeracyClassTeacherComments");
	int ipcScienceEffort = Integer.parseInt(request.getParameter("ipcScienceEffort"));
	int ipcHumanitiesEffort = Integer.parseInt(request.getParameter("ipcHumanitiesEffort"));
	int ipcArtAndDesignEffort = Integer.parseInt(request.getParameter("ipcArtAndDesignEffort"));
	String ipcClassTeacherComments = request.getParameter("ipcClassTeacherComments");
	String classTeacherGeneralComments = request.getParameter("classTeacherGeneralComments");	
	
	KeyStageOneMidYearEvaluation keyStageOneMidYearEvaluation = KeyStageOneMidYearEvaluation.getKeyStageOneMidYearEvaluation(id);
	keyStageOneMidYearEvaluation.setLiteracyReadingEffort(literacyReadingEffort);
	keyStageOneMidYearEvaluation.setLiteracyWritingEffort(literacyWritingEffort);
	keyStageOneMidYearEvaluation.setLiteracySpeakingAndListeningEffort(literacySpeakingAndListeningEffort);
	keyStageOneMidYearEvaluation.setLiteracyClassTeacherComments(literacyClassTeacherComments);
	keyStageOneMidYearEvaluation.setNumeracyEffort(numeracyEffort);
	keyStageOneMidYearEvaluation.setNumeracyClassTeacherComments(numeracyClassTeacherComments);
	keyStageOneMidYearEvaluation.setIpcScienceEffort(ipcScienceEffort);
	keyStageOneMidYearEvaluation.setIpcHumanitiesEffort(ipcHumanitiesEffort);
	keyStageOneMidYearEvaluation.setIpcArtAndDesignEffort(ipcArtAndDesignEffort);
	keyStageOneMidYearEvaluation.setIpcClassTeacherComments(ipcClassTeacherComments);
	keyStageOneMidYearEvaluation.setClassTeacherGeneralComments(classTeacherGeneralComments);
	keyStageOneMidYearEvaluation.setModifiedBy(modifiedBy);
	keyStageOneMidYearEvaluation.setModificationDate(modificationDate);
	KeyStageOneMidYearEvaluation.update(keyStageOneMidYearEvaluation);
%>
<p class="msg done">Evaluation result updated successfully!</p>