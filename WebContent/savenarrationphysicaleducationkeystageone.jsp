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
	int personalOrganizationEffort = Integer.parseInt(request.getParameter("personalOrganizationEffort"));
	int individualSkillsEffort = Integer.parseInt(request.getParameter("individualSkillsEffort"));
	int teamWorkEffort = Integer.parseInt(request.getParameter("teamWorkEffort"));
	String physicalEducationClassTeacherComments = request.getParameter("physicalEducationClassTeacherComments");
	
	PhysicalEducationKeyStageOne physicalEducationKeyStageOne = new PhysicalEducationKeyStageOne(sectionId,
			studentIdNumber,teacherId,personalOrganizationEffort,individualSkillsEffort,teamWorkEffort,
			physicalEducationClassTeacherComments,modificationDate,modifiedBy,modificationDate);
	physicalEducationKeyStageOne.save();
%>
<p class="msg done">Physical education evaluation result saved successfully!</p>