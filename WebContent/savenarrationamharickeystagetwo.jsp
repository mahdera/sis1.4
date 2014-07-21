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
	String amharicSpeakingAndListeningAchievement = request.getParameter("amharicSpeakingAndListeningAchievement");
	int amharciSpeakingAndListeningEffort = Integer.parseInt(request.getParameter("amharciSpeakingAndListeningEffort"));
	String amharicReadingAchievement = request.getParameter("amharicReadingAchievement");
	int amharicReadingEffort = Integer.parseInt(request.getParameter("amharicReadingEffort"));
	String amharicWritingAchievement = request.getParameter("amharicWritingAchievement");
	int amharicWritingEffort = Integer.parseInt(request.getParameter("amharicWritingEffort"));
	String amharicClassTeacherComments = request.getParameter("amharicClassTeacherComments");
	
	AmharicKeyStageTwo amharicKeyStageTwo = new AmharicKeyStageTwo(sectionId,studentIdNumber,teacherId,
			amharicSpeakingAndListeningAchievement,amharciSpeakingAndListeningEffort,amharicReadingAchievement,
			amharicReadingEffort,amharicWritingAchievement,amharicWritingEffort,amharicClassTeacherComments,
			modificationDate,modifiedBy,modificationDate);
	amharicKeyStageTwo.save();
%>
<p class="msg done">Amharic evaluation result saved successfully!</p>