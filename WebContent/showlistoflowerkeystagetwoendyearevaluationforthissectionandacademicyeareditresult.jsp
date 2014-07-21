<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	int academicYear = Integer.parseInt(request.getParameter("academicYear"));
	
	List<KeyStageTwoEndYearEvaluation> keyStageTwoEndYearEvaluationList = KeyStageTwoEndYearEvaluation.getAllKeyStageTwoEndYearEvaluationsForThisSectionAndAcademicYear(sectionId,academicYear);
	Iterator<KeyStageTwoEndYearEvaluation> keyStageTwoEndYearEvaluationItr = keyStageTwoEndYearEvaluationList.iterator();
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	int currentYearOnly = 1900 + modificationDate.getYear();
	//now get the month name...
	int currentMonth = (modificationDate.getMonth() + 1);
	String currentMonthName = "";
	if(currentMonth == 1){
		currentMonthName = "January";
	}else if(currentMonth == 2){
		currentMonthName = "February";
	}else if(currentMonth == 3){
		currentMonthName = "March";
	}else if(currentMonth == 4){
		currentMonthName = "April";
	}else if(currentMonth == 5){
		currentMonthName = "May";
	}else if(currentMonth == 6){
		currentMonthName = "June";
	}else if(currentMonth == 7){
		currentMonthName = "July";
	}else if(currentMonth == 8){
		currentMonthName = "August";
	}else if(currentMonth == 9){
		currentMonthName = "September";
	}else if(currentMonth == 10){
		currentMonthName = "October";
	}else if(currentMonth == 11){
		currentMonthName = "November";
	}else if(currentMonth == 12){
		currentMonthName = "December";
	}
	
	if(!keyStageTwoEndYearEvaluationList.isEmpty()){
%>
<table border="0" width="100%">
	<tr>
		<td colspan="7" align="center" style="font-weight:bolder;font-size:15pt;background:#eee">
			Key Stage Two Mid-Year Primary School Report<br/>
		    <%=currentMonthName%>  <%=currentYearOnly%>
		</td>
	</tr>
	<tr style="background:#eee;font-weight:bolder">
		<td>Ser.No</td>
		<td>Student Id Number</td>
		<td>Student Name</td>
		<td>Date Created</td>
		<td>Modified By</td>
		<td>Modification Date</td>
		<td>Details</td>
	</tr>
	<%
		int ctr=1; 
		while(keyStageTwoEndYearEvaluationItr.hasNext()){
			KeyStageTwoEndYearEvaluation keyStageTwoEndYearEvaluation = keyStageTwoEndYearEvaluationItr.next();
			Applicant applicant = Applicant.getApplicant(keyStageTwoEndYearEvaluation.getStudentId());
			String studentName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
			User modifiedBy = User.getUser(keyStageTwoEndYearEvaluation.getModifiedBy());
			String modifiedByFullName = modifiedBy.getFirstName()+" "+modifiedBy.getMiddleName()+" "+modifiedBy.getLastName();
			
			%>
				<tr>
					<td><%=ctr++ %></td>
					<td><%=keyStageTwoEndYearEvaluation.getStudentId() %></td>
					<td><%=studentName %></td>
					<td><%=keyStageTwoEndYearEvaluation.getDateCreated() %></td>
					<td><%=modifiedByFullName %></td>
					<td><%=keyStageTwoEndYearEvaluation.getModificationDate() %></td>
					<td>
						<a href="#.jsp" onclick="showKeyStageTwoEndYearReportDetailEditResult(<%=keyStageTwoEndYearEvaluation.getId() %>);" class="showReportLinkClass">Show Detail</a>
						|
						<a href="#.jsp" onclick="hideDiv(<%=keyStageTwoEndYearEvaluation.getId() %>)" class="hideReportLinkClass">Hide Detail</a>
					</td>
				</tr>
				<%
					String divId = "keyStageTwoEndYearReportDiv" + keyStageTwoEndYearEvaluation.getId();
				%>
				<tr>
					<td colspan="7">
						<div id="<%=divId %>"></div>
					</td>
				</tr>
			<%
		}//end while loop
	%>
</table>
<%
	}else{
	%>
		<p class="msg warning">No evaluation result found!</p>
	<%
	}
%>
<script type="text/javascript">
	function showKeyStageTwoEndYearReportDetailEditResult(id){
		var divId = "keyStageTwoEndYearReportDiv" + id;
		$('#'+divId).load("showlowerkeystagetwoendyearreportdetaileditresult.jsp?id="+id);
	}
	
	function hideDiv(id){
		var divId = "keyStageTwoEndYearReportDiv" + id;
		$('#'+divId).html('');
	}
</script>