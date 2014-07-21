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
	String nurseryMidYearComment = request.getParameter("nurseryMidYearComment");
	NurseryMidYearEvaluation nurseryMidYearEvaluation = NurseryMidYearEvaluation.getNurseryMidYearEvaluation(id);
	nurseryMidYearEvaluation.setNurseryMidYearComment(nurseryMidYearComment);
	nurseryMidYearEvaluation.setModifiedBy(modifiedBy);
	nurseryMidYearEvaluation.setModificationDate(modificationDate);
	NurseryMidYearEvaluation.update(nurseryMidYearEvaluation);
%>
<p class="msg done">Evaluation result updated successfully!</p>