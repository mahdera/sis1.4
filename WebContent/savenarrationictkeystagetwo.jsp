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
	String learningAndApplicationOfSkillsAcheivement = request.getParameter("learningAndApplicationOfSkillsAcheivement");
	int learningAndApplicationOfSkillsEffort = Integer.parseInt(request.getParameter("learningAndApplicationOfSkillsEffort"));
	String evaluationSkillsAcheivement = request.getParameter("evaluationSkillsAcheivement");
	int evaluationSkillsEffort = Integer.parseInt(request.getParameter("evaluationSkillsEffort"));
	String ictClassTeacherComments = request.getParameter("ictClassTeacherComments");
	
	IctKeyStageTwo ictKeyStageTwo = new IctKeyStageTwo(sectionId,studentIdNumber,teacherId,learningAndApplicationOfSkillsAcheivement,
			learningAndApplicationOfSkillsEffort,evaluationSkillsAcheivement,evaluationSkillsEffort,ictClassTeacherComments,
			modificationDate,modifiedBy,modificationDate);
	ictKeyStageTwo.save();
%>
<p class="msg done">ICT evaluation result saved successfully!</p>