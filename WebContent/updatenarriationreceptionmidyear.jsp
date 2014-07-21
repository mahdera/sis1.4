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
	String receptionMidYearComment = request.getParameter("receptionMidYearComment");
	ReceptionMidYearEvaluation receptionMidYearEvaluation = ReceptionMidYearEvaluation.getReceptionMidYearEvaluation(id);
	receptionMidYearEvaluation.setReceptionMidYearComment(receptionMidYearComment);
	receptionMidYearEvaluation.setModifiedBy(modifiedBy);
	receptionMidYearEvaluation.setModificationDate(modificationDate);
	ReceptionMidYearEvaluation.update(receptionMidYearEvaluation);
%>
<p class="msg done">Evaluation result updated successfully!</p>