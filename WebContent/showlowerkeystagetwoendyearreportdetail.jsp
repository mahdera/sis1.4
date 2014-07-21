<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	KeyStageTwoEndYearEvaluation keyStageTwoEndYearEvaluation = KeyStageTwoEndYearEvaluation.getKeyStageTwoEndYearEvaluation(id);
	Applicant applicant = Applicant.getApplicant(keyStageTwoEndYearEvaluation.getStudentId());
	String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	Section1 section = Section1.getSectionUsingId(keyStageTwoEndYearEvaluation.getSectionId());
%>
<div id="printReportDiv" style="width:100%">
	<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
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
			<td width="20%">CURRICULUM AREA </td>
			<td width="10%">ACHIEVEMENT</td>
			<td width="10%">EFFORT</td>
			<td>CLASS TEACHER COMMENTS</td>
		</tr>
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">LITERACY</td>
		</tr>
		<tr>
			<td colspan="3" style="vertical-align:top;">				
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="50%">Reading</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getLiteracyReadingAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getLiteracyReadingEffort() %>
						</td>
					</tr>
					<tr>
						<td>Writing</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getLiteracyWritingAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getLiteracyWritingEffort() %>
						</td>
					</tr>
					<tr>
						<td>Speaking and Listening</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningEffort() %>
						</td>
					</tr>					
				</table>
			</td>
			<td style="vertical-align:top">
				<%=keyStageTwoEndYearEvaluation.getLiteracyClassTeacherComments() %>
			</td>
		</tr>
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">NUMERACY</td>
		</tr>		
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="50%">Number and Calculation</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalculationAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() %>
						</td>
					</tr>
					<tr>
						<td>Shape, Space and Measures</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() %>
						</td>
					</tr>
					<tr>
						<td>Data Handling</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getNumeracyDataHandlingAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getNumeracyDataHandlingEffort() %>
						</td>
					</tr>
					<tr>
						<td>Problem Solving</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingEffort() %>
						</td>
					</tr>					
				</table>
			</td>
			<td>
				<%=keyStageTwoEndYearEvaluation.getNumeracyClassTeacherComments() %>
			</td>
		</tr>		
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">INTERNATIONAL PRIMARY CURRICULUM</td>
		</tr>	
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>						
						<td width="50%">Science</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getIpcScienceAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getIpcScienceEffort() %>
						</td>
					</tr>
					<tr>
						<td>Humanities</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getIpcHumanitiesAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getIpcHumanitiesEffort() %>
						</td>
					</tr>
					<tr>
						<td>Art and Design</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getIpcArtAndDesignAchievement() %>
						</td>
						<td>
							<%=keyStageTwoEndYearEvaluation.getIpcArtAndDesignEffort() %>
						</td>
					</tr>
				</table>				
			</td>
			<td>
				<%=keyStageTwoEndYearEvaluation.getIpcClassTeacherComments() %>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>
		</tr>
		<tr>
			<td colspan="4">
				<%=keyStageTwoEndYearEvaluation.getClassTeacherGeneralComments() %>
			</td>
		</tr>
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">SUGGESTED TARGETS FOR THE FORTHCOMING YEAR</td>
		</tr>
		<tr>
			<td colspan="4">
				<%=keyStageTwoEndYearEvaluation.getSuggestedTargestForthcomingYear() %>
			</td>
		</tr>	
		<tr style="background:#eee;font-weight:bolder;font-size:13pt">
			<td colspan="4">
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