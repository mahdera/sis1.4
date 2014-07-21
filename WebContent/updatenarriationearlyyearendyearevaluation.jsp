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
	String personalSocialEmotionalDevelopment = request.getParameter("personalSocialEmotionalDevelopment");
	String communicationAndLanguage = request.getParameter("communicationAndLanguage");
	String physicalDevelopment = request.getParameter("physicalDevelopment");
	String literacy = request.getParameter("literacy");
	String mathematics = request.getParameter("mathematics");
	String understandingTheWorld = request.getParameter("understandingTheWorld");
	String expressiveArtsAndDesign = request.getParameter("expressiveArtsAndDesign");
	String generalComments = request.getParameter("generalComments");
	
	EarlyYearsEndYearEvaluation earlyYearsEndYearEvaluation = EarlyYearsEndYearEvaluation.getEarlyYearsEndYearEvaluation(id);
	earlyYearsEndYearEvaluation.setPersonalSocialEmotionalDevelopment(personalSocialEmotionalDevelopment);
	earlyYearsEndYearEvaluation.setCommunicationAndLanguage(communicationAndLanguage);
	earlyYearsEndYearEvaluation.setPhysicalDevelopment(physicalDevelopment);
	earlyYearsEndYearEvaluation.setLiteracy(literacy);
	earlyYearsEndYearEvaluation.setMathematics(mathematics);
	earlyYearsEndYearEvaluation.setUnderstandingTheWorld(understandingTheWorld);
	earlyYearsEndYearEvaluation.setExpressiveArtsAndDesign(expressiveArtsAndDesign);
	earlyYearsEndYearEvaluation.setGeneralComments(generalComments);
	earlyYearsEndYearEvaluation.setModifiedBy(modifiedBy);
	earlyYearsEndYearEvaluation.setModificationDate(modificationDate);
	EarlyYearsEndYearEvaluation.update(earlyYearsEndYearEvaluation);
%>
<p class="msg done">Evaluation result updated successfylly!</p>