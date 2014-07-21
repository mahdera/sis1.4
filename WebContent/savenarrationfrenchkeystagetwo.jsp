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
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String frenchSpeakingAndListeningAchievement = request.getParameter("frenchSpeakingAndListeningAchievement");
	int frenchSpeakingAndListeningEffort = Integer.parseInt(request.getParameter("frenchSpeakingAndListeningEffort"));
	String frenchReadingAchievement = request.getParameter("frenchReadingAchievement");
	int frenchReadingEffort = Integer.parseInt(request.getParameter("frenchReadingEffort"));
	String frenchWritingAchievement = request.getParameter("frenchWritingAchievement");
	int frenchWritingEffort = Integer.parseInt(request.getParameter("frenchWritingEffort"));
	String frenchTeacherClassComments = request.getParameter("frenchTeacherClassComments");
	
	FrenchKeyStageTwo frenchKeyStageTwo = new FrenchKeyStageTwo(sectionId,studentIdNumber,teacherId,
			frenchSpeakingAndListeningAchievement,frenchSpeakingAndListeningEffort,frenchReadingAchievement,
			frenchReadingEffort,frenchWritingAchievement,frenchWritingEffort,frenchTeacherClassComments,
			modificationDate,modifiedBy,modificationDate);
	frenchKeyStageTwo.save();
%>
<p class="msg done">French evaluation result saved successfully!</p>