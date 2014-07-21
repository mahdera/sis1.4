<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	PhysicalEducationKeyStageTwo physicalEducationKeyStageTwo = PhysicalEducationKeyStageTwo.getPhysicalEducationKeyStageTwo(id);
	Applicant applicant = Applicant.getApplicant(physicalEducationKeyStageTwo.getStudentIdNumber());
	String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	Section1 section = Section1.getSectionUsingId(physicalEducationKeyStageTwo.getSectionId());
%>
<div id="printReportDiv" style="width:100%">
<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
	<tr>
		<td style="font-weight:bold;font-size:12pt;text-align:center" colspan="3">
			SANDFORD INTERNATIONAL SCHOOL<br/>
			<img src="design/sandford_form_logo.png"/><br/>
			Physical Education Key Stage Two Primary School Report
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
		<tr style="font-weight:bolder;background:#eee;font-size:13pt">
			<td colspan="3" align="left">PHYSICAL EDUCATION (PE) </td>
		</tr>
		<tr>
			<td colspan="2">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr style="font-weight:bolder;background:#eee;">
						<td>CURRICULUM AREA</td>
						<td>ACHIEVEMENT</td>
						<td>EFFORT</td>						
					</tr>
					<tr>	
						<td>Personal Organisation</td>
						<td>
							<%=physicalEducationKeyStageTwo.getPersonalOrganizationAchievement() %>
						</td>
						<td>
							<%=physicalEducationKeyStageTwo.getPersonalOrganizationEffort() %>	
						</td>						
					</tr>
					<tr>	
						<td>Individual Skills </td>
						<td>
							<%=physicalEducationKeyStageTwo.getIndividualSkillsAchievement() %>
						</td>
						<td>
							<%=physicalEducationKeyStageTwo.getIndividualSkillsEffort() %>
						</td>						
					</tr>
					<tr>	
						<td>Team Work</td>
						<td>
							<%=physicalEducationKeyStageTwo.getTeamWorkAchievement() %>
						</td>
						<td>
							<%=physicalEducationKeyStageTwo.getTeamWorkEffort() %>
						</td>						
					</tr>
				</table>
			</td>
			<td style="vertical-align:top">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr style="font-weight:bolder;background:#eeeeee">
						<td>SPECIALIST TEACHER'S COMMENTS</td>
					</tr>
					<tr>
						<td>
							<%=physicalEducationKeyStageTwo.getClassTeacherComments() %>		
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