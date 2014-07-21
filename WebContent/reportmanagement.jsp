<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<fieldset>
		<legend>Report Management</legend>
		<%
			Account account = (Account) session.getAttribute("account");
			String functionalityName = "reportManagement";
			Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
			Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
			if(role.isReadable()){
		%>
			<div>
				<table border="1" width="100%">
					<tr>
						<td>Select Report:</td>
						<td>
							<select name="slctreporttype" id="slctreporttype" style="width:100%" onchange="showReport(this.value);">
								<option value="" selected="selected">--Select--</option>
								<option value="attendancetakesby">Attendance Taken By</option>
								<option value="attendancereport">Attendance Report</option>
								<option value="attendancereportforcoordinators">Attendance Report For Head/Coordinators</option>
								<option value="classstudentsummery">Class Student Summary</option>
								<!-- <option value="letteroftransfer">Letter of Transfer</option> -->
								<option value="guardiancontactlist">Guardian Contact List</option>
								<option value="towhomitmayconcern">To Whom It May Concern</option>
								<option value="summaryofprimaryclasses">Summary of Primary Classes</option>	
								<option value="specialcoursegradingreport">Special Course Grading</option>	
								<option value="endofyeargradecard79">End of Year Grade Card 7 - 9</option>
								<option value="endofyeargradecardIGCSE1">IGCSE Grade Card</option>
								<option value="studentcourseperformancematrix">Student Course Performance Matrix</option>		
								<option value="gradecardib">IB</option>												
							</select>
						</td>
					</tr>
				</table>								
			</div>
			<div id="reportDetailDiv"></div>
		<%
			}else{
				out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
			}
		%>		
	</fieldset>
</div>
<!-- Now comes the tabs section mahder -->
<div id="successDiv"></div>

