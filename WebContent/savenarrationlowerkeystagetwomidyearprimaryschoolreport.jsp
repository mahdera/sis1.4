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
	
	KeyStageTwoMidYearEvaluation keyStageTwoMidYearEvaluation = new KeyStageTwoMidYearEvaluation(sectionId,
			studentIdNumber,literacyAchievement,literacyEffort,literacyClassTeacherComments,
			numeracyAchievement,numeracyEffort,numeracyClassTeacherComments,ipcAchievement,
			ipcEffort,ipcClassTeacherComments,scienceAchievement,scienceEffort,scienceClassTeacherComments,
			classTeacherGeneralComments,modificationDate,modifiedBy,modificationDate);
	keyStageTwoMidYearEvaluation.save();
%>
<p class="msg done">Mid-year student evaluation result saved successfully!</p>