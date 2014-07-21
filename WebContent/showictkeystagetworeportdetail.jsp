<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	IctKeyStageTwo ictKeyStageTwo = IctKeyStageTwo.getIctKeyStageTwo(id);
	Applicant applicant = Applicant.getApplicant(ictKeyStageTwo.getStudentIdNumber());
	String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	Section1 section = Section1.getSectionUsingId(ictKeyStageTwo.getSectionId());
%>
<div id="printReportDiv" style="width:100%">
<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
	<tr>
		<td style="font-weight:bold;font-size:12pt;text-align:center" colspan="3">
			SANDFORD INTERNATIONAL SCHOOL<br/>
			<img src="design/sandford_form_logo.png"/><br/>
			ICT Key Stage Two Primary School Report
		</td>
	</tr>
	<tr>
		<td><strong>Name:</strong> <%=studentFullName %></td>
		<td><strong>Date of Birth:</strong> <%=applicant.getDateOfBirth1() %></td>
		<td><strong>Class:</strong> <%=section.getSection_name() %></td>
	</tr>
</table>
<form style="background:#fff">
	<div id="errorDiv"></div>
	<table border="1" width="100%" style="border: 0px solid #2779aa;" rules="all">		
		<tr style="background:#eee;font-weight:bolder;font-size:13pt">
			<td colspan="3" align="left">INFORMATION AND COMMUNICATION TECHNOLOGY (ICT) </td>
		</tr>
		<tr>
			<td colspan="2">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr style="background:#eee;font-weight:bolder">
						<td>CURRICULUM AREA</td>
						<td>ACHIEVEMENT</td>
						<td>EFFORT</td>
					</tr>
					<tr>
						<td>Learning and Application of skills</td>
						<td>
							<%=ictKeyStageTwo.getLearningAndApplicationOfSkillsAchievement() %>
						</td>
						<td>
							<%=ictKeyStageTwo.getLearningAndApplicationOfSkillsEffort() %>
						</td>
					</tr>
					<tr>
						<td>Evaluation Skills</td>
						<td>
							<%=ictKeyStageTwo.getEvaluationSkillsAchievement() %>
						</td>
						<td>
							<%=ictKeyStageTwo.getEvaluationSkillsEffort() %>
						</td>						
					</tr>
				</table>
			</td>
			<td colspan="1" width="50%" style="vertical-align:top">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr style="background:#eee;font-weight:bolder;">
						<td>SPECIALIST TEACHERS COMMENTS</td>
					</tr>
					<tr>
						<td>
							<%=ictKeyStageTwo.getClassTeacherComments() %>
						</td>
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