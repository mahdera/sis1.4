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
	int performingEffort = Integer.parseInt(request.getParameter("performingEffort"));
	int creativeAndListeningSkillEffort = Integer.parseInt(request.getParameter("creatingAndListeningSkillEffort"));
	String musicClassTeacherComments = request.getParameter("musicClassTeacherComments");
	
	MusicKeyStageOne musicKeyStageOne = new MusicKeyStageOne(sectionId,studentIdNumber,teacherId,
			performingEffort,creativeAndListeningSkillEffort,musicClassTeacherComments,modificationDate,
			modifiedBy,modificationDate);
	musicKeyStageOne.save();
%>
<p class="msg done">Music evaluation result saved successfully!</p>