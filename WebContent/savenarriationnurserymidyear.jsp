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
	String nurseryMidYearComment = request.getParameter("nurseryMidYearComment");
	
	NurseryMidYearEvaluation nurseryMidYearEvaluation = new NurseryMidYearEvaluation(sectionId,
			studentIdNumber,nurseryMidYearComment,modificationDate,modifiedBy,modificationDate);
	nurseryMidYearEvaluation.save();
%>
<p class="msg done">Mid-year student evaluation result saved successfully!</p>