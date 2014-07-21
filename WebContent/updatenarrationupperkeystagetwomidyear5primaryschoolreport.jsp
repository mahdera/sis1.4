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
	String literacyAchievement = request.getParameter("literacyAchievement");
	int literacyEffort = Integer.parseInt(request.getParameter("literacyEffort"));	
	String literacyClassTeacherComments = request.getParameter("literacyClassTeacherComments");
	String numeracyAchievement = request.getParameter("numeracyAchievement");
	int numeracyEffort = Integer.parseInt(request.getParameter("numeracyEffort"));	
	String numeracyClassTeacherComments = request.getParameter("numeracyClassTeacherComments");
	String ipcAchievement = request.getParameter("ipcAchievement");
	int ipcEffort = Integer.parseInt(request.getParameter("ipcEffort"));	
	String ipcClassTeacherComments = request.getParameter("ipcClassTeacherComments");
	String classTeacherGeneralComments = request.getParameter("classTeacherGeneralComments");
	String scienceAchievement = request.getParameter("scienceAchievement");
	int scienceEffort = Integer.parseInt(request.getParameter("scienceEffort"));
	String scienceClassTeacherComments = request.getParameter("scienceClassTeacherComments");
	
	KeyStageTwoMidYearEvaluation keyStageTwoMidYearEvaluation = KeyStageTwoMidYearEvaluation.getKeyStageTwoMidYearEvaluation(id);
	keyStageTwoMidYearEvaluation.setLiteracyAchievement(literacyAchievement);
	keyStageTwoMidYearEvaluation.setLiteracyEffort(literacyEffort);
	keyStageTwoMidYearEvaluation.setLiteracyClassTeacherComments(literacyClassTeacherComments);
	keyStageTwoMidYearEvaluation.setNumeracyAchievement(numeracyAchievement);
	keyStageTwoMidYearEvaluation.setNumeracyEffort(numeracyEffort);
	keyStageTwoMidYearEvaluation.setNumeracyClassTeacherComments(numeracyClassTeacherComments);
	keyStageTwoMidYearEvaluation.setIpcAchievement(ipcAchievement);
	keyStageTwoMidYearEvaluation.setIpcEffort(ipcEffort);
	keyStageTwoMidYearEvaluation.setIpcClassTeacherComments(ipcClassTeacherComments);
	keyStageTwoMidYearEvaluation.setClassTeacherGeneralComments(classTeacherGeneralComments);
	keyStageTwoMidYearEvaluation.setScienceAchievement(scienceAchievement);
	keyStageTwoMidYearEvaluation.setScienceEffort(scienceEffort);
	keyStageTwoMidYearEvaluation.setScienceClassTeacherComments(scienceClassTeacherComments);
	keyStageTwoMidYearEvaluation.setModifiedBy(modifiedBy);
	keyStageTwoMidYearEvaluation.setModificationDate(modificationDate);
	KeyStageTwoMidYearEvaluation.update(keyStageTwoMidYearEvaluation);
%>
<p class="msg done">Evaluation result updated successfully!</p>