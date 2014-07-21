<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	KeyStageOneEndYearEvaluation keyStageOneEndYearEvaluation = KeyStageOneEndYearEvaluation.getKeyStageOneEndYearEvaluation(id);
	Applicant applicant = Applicant.getApplicant(keyStageOneEndYearEvaluation.getStudentId());
	String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	Section1 section = Section1.getSectionUsingId(keyStageOneEndYearEvaluation.getSectionId());
%>
<div id="printReportDiv" style="width:100%">
<table border="0" width="100%">
	<tr>
		<td style="font-weight:bold;font-size:12pt;text-align:center" colspan="3">
			SANDFORD INTERNATIONAL SCHOOL<br/>
			<img src="design/sandford_form_logo.png"/><br/>
			Key Stage One Mid Year Primary School Report
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
			<td width="40%">CURRICULUM AREA </td>
			<td width="10%">ACHIEVEMENT</td>			
			<td width="10%">EFFORT</td>
			<td>CLASS TEACHER COMMENTS</td>
		</tr>		
		<tr>
			<td colspan="2" style="vertical-align:top;">				
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="20%" style="font-weight:bolder">LITERACY<br/>Reading</td>
						<td width="10%">
							<%=keyStageOneEndYearEvaluation.getLiteracyReadingAchievement() %>
						</td>						
						<td width="10%">
							<%=keyStageOneEndYearEvaluation.getLiteracyReadingEffort() %>
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">LITERACY<br/>Writing</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getLiteracyWritingAchievement() %>
						</td>						
						<td>
							<%=keyStageOneEndYearEvaluation.getLiteracyWritingEffort() %>
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">LITERACY<br/>Speaking and Listening</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningAchievement() %>
						</td>						
						<td>
							<%=keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningEffort() %>
						</td>
					</tr>					
				</table>
			</td>
			<td style="vertical-align:top">
				<%=keyStageOneEndYearEvaluation.getLiteracyClassTeacherComments() %>
			</td>
		</tr>	
		<tr>
			<td colspan="4" style="vertical-align:top;font-weight:bolder">
				NUMERACY
			</td>
		</tr>			
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="20%" style="font-weight:bolder">Number and Calculation</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getNumeracyNumberAndCalculationAchievement() %>
						</td>						
						<td width="10%">
							<%=keyStageOneEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() %>
						</td>
					</tr>
					<tr>
						<td width="20%" style="font-weight:bolder">Number and Calculation</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getNumeracyNumberAndCalculationAchievement() %>
						</td>						
						<td width="10%">
							<%=keyStageOneEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() %>
						</td>
					</tr>
					<tr>
						<td width="20%" style="font-weight:bolder">Shape, Space and Measures</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement() %>
						</td>						
						<td width="10%">
							<%=keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() %>
						</td>
					</tr>
					<tr>
						<td width="20%" style="font-weight:bolder">Data Handling</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getNumeracyDataHandlingAchievement() %>
						</td>						
						<td width="10%">
							<%=keyStageOneEndYearEvaluation.getNumeracyDataHandlingEffort() %>
						</td>
					</tr>									
					<tr>
						<td width="20%" style="font-weight:bolder">Problem Solving</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getNumeracyProblemSolvingAchievement() %>
						</td>						
						<td width="10%">
							<%=keyStageOneEndYearEvaluation.getNumeracyProblemSolvingEffort() %>
						</td>
					</tr>
				</table>
			</td>
			<td>
				<%=keyStageOneEndYearEvaluation.getNumeracyClassTeacherComments() %>
			</td>
		</tr>			
		<tr>
			<td colspan="2" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>						
						<td width="20%" style="font-weight:bolder">IPC<br/>Science</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getIpcScienceAchievement() %>
						</td>						
						<td width="10%">
							<%=keyStageOneEndYearEvaluation.getIpcScienceEffort() %>
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">IPC<br/>Humanities</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getIpcHumanitiesAchievement() %>
						</td>						
						<td>
							<%=keyStageOneEndYearEvaluation.getIpcHumanitiesEffort() %>
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">IPC<br/>Art and Design</td>
						<td>
							<%=keyStageOneEndYearEvaluation.getIpcArtAndDesignAchievement() %>
						</td>						
						<td>
							<%=keyStageOneEndYearEvaluation.getIpcArtAndDesignEffort() %>
						</td>
					</tr>
				</table>				
			</td>
			<td>
				<%=keyStageOneEndYearEvaluation.getIpcClassTeacherComments() %>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="3" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>
		</tr>
		<tr>
			<td colspan="3">
				<%=keyStageOneEndYearEvaluation.getClassTeacherGeneralComments() %>
			</td>
		</tr>		
		<tr>
			<td colspan="3" style="font-weight:bolder;font-size:12pt">
				KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS
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