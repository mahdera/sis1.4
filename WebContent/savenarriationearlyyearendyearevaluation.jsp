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
	String personalSocialEmotionalDevelopment = request.getParameter("personalSocialEmotionalDevelopment");
	String communicationAndLanguage = request.getParameter("communicationAndLanguage");
	String physicalDevelopment = request.getParameter("physicalDevelopment");
	String literacy = request.getParameter("literacy");
	String mathematics = request.getParameter("mathematics");
	String understandingTheWorld = request.getParameter("understandingTheWorld");
	String expressiveArtsAndDesign = request.getParameter("expressiveArtsAndDesign");
	String generalComments = request.getParameter("generalComments");
	
	EarlyYearsEndYearEvaluation earlyYearsEndYearEvaluation = new EarlyYearsEndYearEvaluation(sectionId,
			studentIdNumber,personalSocialEmotionalDevelopment,communicationAndLanguage,
			physicalDevelopment,literacy,mathematics,understandingTheWorld,expressiveArtsAndDesign,generalComments,
			modificationDate,modifiedBy,modificationDate);
	earlyYearsEndYearEvaluation.save();
%>
<p class="msg done">Early years end-year evaluation result saved successfully!</p>