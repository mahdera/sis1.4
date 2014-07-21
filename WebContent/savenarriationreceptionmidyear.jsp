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
	String receptionMidYearComment = request.getParameter("receptionMidYearComment");
	
	ReceptionMidYearEvaluation receptionMidYearEvaluation = new ReceptionMidYearEvaluation(sectionId,
			studentIdNumber,receptionMidYearComment,modificationDate,modifiedBy,modificationDate);
	receptionMidYearEvaluation.save();
%>
<p class="msg done">Mid-year student evaluation result saved successfully!</p>