<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	FrenchKeyStageTwo frenchKeyStageTwo = FrenchKeyStageTwo.getFrenchKeyStageTwo(id);
	Applicant applicant = Applicant.getApplicant(frenchKeyStageTwo.getStudentIdNumber());
	String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	Section1 section = Section1.getSectionUsingId(frenchKeyStageTwo.getSectionId());
%>
<div id="printReportDiv" style="width:100%">
<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
	<tr>
		<td style="font-weight:bold;font-size:12pt;text-align:center" colspan="3">
			SANDFORD INTERNATIONAL SCHOOL<br/>
			<img src="design/sandford_form_logo.png"/><br/>
			French Key Stage Two Primary School Report
		</td>
	</tr>
	<tr>
		<td><strong>Name:</strong> <%=studentFullName %></td>
		<td><strong>Date of Birth:</strong> <%=applicant.getDateOfBirth1() %></td>
		<td><strong>Class:</strong> <%=section.getSection_name() %></td>
	</tr>
	<tr>
		<td colspan="3">
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
<form style="background:#fff">
	<div id="errorDiv"></div>
	<table border="1" width="100%" style="border: 0px solid #2779aa;" rules="all">		
		<tr style="background:#eee">
			<td colspan="4" align="left" style="font-weight:bolder;font-size:13pt">FRENCH</td>
		</tr>
		<tr>
			<td colspan="3">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr style="font-weight:bolder;background:#eee">
						<td width="50%">CURRICULUM AREA</td>
						<td>ACHIEVEMENT</td>
						<td>EFFORT</td>
					</tr>
					<tr>
						<td>Speaking and Listening</td>
						<td>
							<%=frenchKeyStageTwo.getSpeakingAndListeningAchievement() %>
						</td>
						<td>
							<%=frenchKeyStageTwo.getSpeakingAndListeningEffort() %>
						</td>
					</tr>
					<tr>
						<td>Reading</td>
						<td>
							<%=frenchKeyStageTwo.getReadingAchievement() %>
						</td>
						<td>
							<%=frenchKeyStageTwo.getReadingEffort() %>
						</td>						
					</tr>
					<tr>
						<td>Writing</td>
						<td>
							<%=frenchKeyStageTwo.getWritingAchievement() %>
						</td>
						<td>
							<%=frenchKeyStageTwo.getWritingEffort() %>
						</td>
					</tr>
				</table>
			</td>
			<td colspan="1" width="50%" style="vertical-align:top">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr style="font-weight:bolder;background:#eee">
						<td>SPECIALIST TEACHER'S COMMENTS</td>
					</tr>
					<tr>
						<td style="vertical-align:top;">
							<%=frenchKeyStageTwo.getClassTeacherComments() %>			
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