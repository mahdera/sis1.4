<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	int academicYear = Integer.parseInt(request.getParameter("academicYear"));
	
	List<MusicKeyStageOne> musicKeyStageOneList = MusicKeyStageOne.getAllMusicKeyStageOneEvaluationsForThisSectionAndAcademicYear(sectionId,academicYear);
	Iterator<MusicKeyStageOne> musicKeyStageOneItr = musicKeyStageOneList.iterator();
	
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
	
	if(!musicKeyStageOneList.isEmpty()){
%>
<table border="0" width="100%">
	<tr>
		<td colspan="7" align="center" style="font-weight:bolder;font-size:15pt;background:#eee">
			Music Key Stage One Primary School Report<br/>
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
		while(musicKeyStageOneItr.hasNext()){
			MusicKeyStageOne musicKeyStageOne = musicKeyStageOneItr.next();
			Applicant applicant = Applicant.getApplicant(musicKeyStageOne.getStudentIdNumber());
			String studentName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
			User modifiedBy = User.getUser(musicKeyStageOne.getModifiedBy());
			String modifiedByFullName = modifiedBy.getFirstName()+" "+modifiedBy.getMiddleName()+" "+modifiedBy.getLastName();
			
			%>
				<tr>
					<td><%=ctr++ %></td>
					<td><%=musicKeyStageOne.getStudentIdNumber() %></td>
					<td><%=studentName %></td>
					<td><%=musicKeyStageOne.getDateCreated() %></td>
					<td><%=modifiedByFullName %></td>
					<td><%=musicKeyStageOne.getModificationDate() %></td>
					<td>
						<a href="#.jsp" onclick="showMusicKeyStageOneReportDetail(<%=musicKeyStageOne.getId() %>);" class="showReportLinkClass">Show Detail</a>
						|
						<a href="#.jsp" onclick="hideDiv(<%=musicKeyStageOne.getId() %>)" class="hideReportLinkClass">Hide Detail</a>
					</td>
				</tr>
				<%
					String divId = "keyStageOneEndYearReportDiv" + musicKeyStageOne.getId();
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
	function showMusicKeyStageOneReportDetail(id){
		var divId = "keyStageOneEndYearReportDiv" + id;
		$('#'+divId).load("showmusickeystageonereportdetail.jsp?id="+id);
	}
	
	function hideDiv(id){
		var divId = "keyStageOneEndYearReportDiv" + id;
		$('#'+divId).html('');
	}
</script>