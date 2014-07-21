<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	KeyStageTwoMidYearEvaluation keyStageTwoMidYearEvaluation = KeyStageTwoMidYearEvaluation.getKeyStageTwoMidYearEvaluation(id);
	Applicant applicant = Applicant.getApplicant(keyStageTwoMidYearEvaluation.getStudentIdNumber());
	String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	Section1 section = Section1.getSectionUsingId(keyStageTwoMidYearEvaluation.getSectionId());
%>
<div id="printReportDiv" style="width:100%">
<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
	<tr>
		<td style="font-weight:bold;font-size:12pt;text-align:center" colspan="3">
			SANDFORD INTERNATIONAL SCHOOL<br/>
			<img src="design/sandford_form_logo.png"/><br/>
			Key Stage Two Mid Year Primary School Report
		</td>
	</tr>
	<tr>
		<td><strong>Name:</strong> <%=studentFullName %></td>
		<td><strong>Date of Birth:</strong> <%=applicant.getDateOfBirth1() %></td>
		<td><strong>Class:</strong> <%=section.getSection_name() %></td>
	</tr>
</table>
<form style="background:#ffffff">
	<div id="errorDiv"></div>
	<table border="1" width="100%" style="border: 0px solid #2779aa;" rules="all">
		<tr style="font-weight:bolder;font-size:10pt">
			<td width="20%">CURRICULUM AREA </td>
			<td width="10%">ACHIEVEMENT</td>
			<td width="10%">EFFORT</td>
			<td>CLASS TEACHER COMMENTS</td>
		</tr>		
		<tr>
			<td colspan="3" style="vertical-align:top;">				
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="50%" style="font-weight:bolder">LITERACY</td>
						<td>
							<%=keyStageTwoMidYearEvaluation.getLiteracyAchievement() %>
						</td>
						<td>
							<%=keyStageTwoMidYearEvaluation.getLiteracyEffort() %>
						</td>
					</tr>										
				</table>
			</td>
			<td style="vertical-align:top">
				<%=keyStageTwoMidYearEvaluation.getLiteracyClassTeacherComments() %>
			</td>
		</tr>				
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="50%" style="font-weight:bolder">NUMERACY</td>
						<td>
							<%=keyStageTwoMidYearEvaluation.getNumeracyAchievement() %>
						</td>
						<td>
							<%=keyStageTwoMidYearEvaluation.getNumeracyEffort() %>
						</td>
					</tr>										
				</table>
			</td>
			<td>
				<%=keyStageTwoMidYearEvaluation.getNumeracyClassTeacherComments() %>
			</td>
		</tr>			
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>						
						<td width="50%" style="font-weight:bolder">INTERNATIONAL PRIMARY CURRICULUM</td>
						<td>
							<%=keyStageTwoMidYearEvaluation.getIpcAchievement() %>
						</td>
						<td>
							<%=keyStageTwoMidYearEvaluation.getIpcEffort() %>
						</td>
					</tr>					
				</table>				
			</td>
			<td>
				<%=keyStageTwoMidYearEvaluation.getIpcClassTeacherComments() %>
			</td>
		</tr>
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>						
						<td width="50%" style="font-weight:bolder">SCIENCE</td>
						<td>
							<%=keyStageTwoMidYearEvaluation.getScienceAchievement() %>
						</td>
						<td>
							<%=keyStageTwoMidYearEvaluation.getScienceEffort() %>
						</td>
					</tr>					
				</table>				
			</td>
			<td>
				<%=keyStageTwoMidYearEvaluation.getScienceClassTeacherComments() %>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>
		</tr>
		<tr>
			<td colspan="4">
				<%=keyStageTwoMidYearEvaluation.getClassTeacherGeneralComments() %>
			</td>
		</tr>	
		<tr style="background:#eee;font-weight:bolder;font-size:13pt">
			<td colspan="4" style="text-align:center">
				KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS
			</td>
		</tr>	
		<tr>
			<td colspan="4">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td><strong>E</strong></td>
						<td><strong>E</strong>xceeding Expectations</td>
						<td><strong>S</strong></td>
						<td>Achieving <strong>S</strong>ome Expectations</td>
						<td><strong>1</strong></td>
						<td>Excellent</td>
						<td><strong>3</strong></td>
						<td>Satisfactory</td>
					</tr>
					<tr>
						<td><strong>M</strong></td>
						<td><strong>M</strong>eeting Expectations</td>
						<td><strong>N</strong></td>
						<td><strong>N</strong>ot Yet Achieving Expectations</td>
						<td><strong>2</strong></td>
						<td>Good</td>
						<td><strong>4</strong></td>
						<td>Unsatisfactory</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</form>
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="design/printer.jpeg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>
<script type="text/javascript">
	function printDiv(divName) {		
	    var printContents = document.getElementById(divName).innerHTML;    
	    window.document.getElementById(divName).innerHTML = printContents;
	    window.print();    
	}
</script>