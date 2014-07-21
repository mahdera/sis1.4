<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<div id="printReportDiv">
<%
	long id = Long.parseLong(request.getParameter("id"));
	ReceptionMidYearEvaluation receptionMidYearEvaluation = ReceptionMidYearEvaluation.getReceptionMidYearEvaluation(id);
	
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
	
	Applicant applicant = Applicant.getApplicant(receptionMidYearEvaluation.getStudentIdNumber());
	String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	
	Section1 section = Section1.getSectionUsingId(receptionMidYearEvaluation.getSectionId());
	String sectionName = section.getSection_name();
%>
<center>
	<table border="0" width="50%">
		<tr>
			<td align="center" style="border:1px solid #fff"><img src="design/butter_fly.png" border="0" width="100%"/></td>
			<td align="center" style="border:1px solid #fff"><img src="design/butter_fly.png" border="0" width="100%"/></td>
			<td align="center" style="border:1px solid #fff"><img src="design/butter_fly.png" border="0" width="100%"/></td>
			<td align="center" style="border:1px solid #fff"><img src="design/butter_fly.png" border="0" width="100%"/></td>
			<td align="center" style="border:1px solid #fff"><img src="design/butter_fly.png" border="0" width="100%"/></td>
			<td align="center" style="border:1px solid #fff"><img src="design/butter_fly.png" border="0" width="100%"/></td>
			<td align="center" style="border:1px solid #fff"><img src="design/butter_fly.png" border="0" width="100%"/></td>
		</tr>
	</table>
</center>
<center>
	<table border="0" wdith="100%">
		<tr>
			<td colspan="7" align="center" style="border:1px solid #fff">
				<img src="design/nursery_header.png" border="0" width="50%"/>
			</td>
		</tr>
	</table>
</center>
<div id="errorDiv"></div>
<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
	<tr>
		<td colspan="6" align="center" style="font-weight:bolder;background:#fff">
			Reception Mid-Year Report<br/>
		    <%=currentMonthName%>  <%=currentYearOnly%>
		</td>
	</tr>
	<tr style="background:#fff;font-weight:bolder;font-size:10pt">
		<td>Name:</td>
		<td><%=studentFullName %></td>
		<td>Class:</td>
		<td><%=sectionName %></td>
		<td>Date of Birth:</td>
		<td><%=applicant.getDateOfBirth1() %></td>
	</tr>
	<tr>
		<td colspan="6">			
			<textarea name="textareareceptionmidyearcomment" id="textareareceptionmidyearcomment" class="jqte-test" rows="10" style="width:100%"><%=receptionMidYearEvaluation.getReceptionMidYearComment() %></textarea>
		</td>
	</tr>
</table>
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<input type="button" value="Update" class="input-submit" id="btnupdate"/>
			<input type="reset" value="Clear" class="input-submit"/>
		</td>
	</tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
	$('.jqte-test').jqte();			
	// settings of status
	var jqteStatus = true;
	$(".status").click(function()
	{
		jqteStatus = jqteStatus ? false : true;
		$('.jqte-test').jqte({"status" : jqteStatus})
	});
	
	$('#btnupdate').click(function(){
		var id = "<%=id%>";		
		var receptionMidYearComment = $('#textareareceptionmidyearcomment').val();
		
		if(receptionMidYearComment != ""){
			var dataString = "id="+id+"&receptionMidYearComment="+receptionMidYearComment;
			var divId = "receptionMidYearReportDiv" + id;
			
			$.ajax({
			    url: 'updatenarriationreceptionmidyear.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){				    		
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}else{
			$('#errorDiv').html("<p class='msg error'>Empty input data! Please enter all required data fields and try again!</p>");	
		}
	});
});//end document.ready function
</script>