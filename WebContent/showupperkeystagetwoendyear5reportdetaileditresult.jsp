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
							<select name="slctliteracyreadingachievement" id="slctliteracyreadingachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getLiteracyReadingAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracyReadingAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageTwoEndYearEvaluation.getLiteracyReadingAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracyReadingAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctliteracyeffortreading" id="slctliteracyeffortreading" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getLiteracyReadingEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracyReadingEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageTwoEndYearEvaluation.getLiteracyReadingEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracyReadingEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td>Writing</td>
						<td>							
							<select name="slctliteracywritingachievement" id="slctliteracywritingachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getLiteracyWritingAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracyWritingAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getLiteracyWritingAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracyWritingAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctliteracyeffortwriting" id="slctliteracyeffortwriting" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getLiteracyWritingEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracyWritingEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getLiteracyWritingEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracyWritingEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td>Speaking and Listening</td>
						<td>
							<select name="slctliteracyspeakingandlisteningachievement" id="slctliteracyspeakingandlisteningachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctliteracyeffortspeakingandlistening" id="slctliteracyeffortspeakingandlistening" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>					
				</table>
			</td>
			<td style="vertical-align:top">				
				<textarea class="jqte-test" name="textarealitracyclassteachercomments" id="textarealitracyclassteachercomments" rows="10" style="width:100%"><%=keyStageTwoEndYearEvaluation.getLiteracyClassTeacherComments()%></textarea>
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
							<select name="slctnumeracyachievementnumberandcalculation" id="slctnumeracyachievementnumberandcalculation" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalculationAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalculationAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalculationAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalculationAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctnumeracyeffortnumberandcalcualtion" id="slctnumeracyeffortnumberandcalcualtion" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td>Shape, Space and Measures</td>
						<td>							
							<select name="slctnumeracyachievementshapespaceandmeasures" id="slctnumeracyachievementshapespaceandmeasures" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctnumeracyeffortshapespaceandmeasures" id="slctnumeracyeffortshapespaceandmeasures" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td>Data Handling</td>
						<td>							
							<select name="slctnumeracyachievementdatahandling" id="slctnumeracyachievementdatahandling" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getNumeracyDataHandlingAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyDataHandlingAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getNumeracyDataHandlingAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyDataHandlingAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctnumeracyeffortdatahandling" id="slctnumeracyeffortdatahandling" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getNumeracyDataHandlingEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyDataHandlingEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getNumeracyDataHandlingEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyDataHandlingEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td>Problem Solving</td>
						<td>							
							<select name="slctnumeracyachievementproblemsolving" id="slctnumeracyachievementproblemsolving" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctnumeracyeffortproblemsolving" id="slctnumeracyeffortproblemsolving" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>					
				</table>
			</td>
			<td>				
				<textarea class="jqte-test" name="textareanumeracyclassteachercomments" id="textareanumeracyclassteachercomments" rows="10" style="width:100%"><%=keyStageTwoEndYearEvaluation.getNumeracyClassTeacherComments() %></textarea>
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
							<select name="slctipcscienceachievement" id="slctipcscienceachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getIpcScienceAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcScienceAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getIpcScienceAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcScienceAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctipcscienceeffort" id="slctipcscienceeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getIpcScienceEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcScienceEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getIpcScienceEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcScienceEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td>Humanities</td>
						<td>							
							<select name="slctipchumanitiesachievement" id="slctipchumanitiesachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getIpcHumanitiesAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcHumanitiesAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcHumanitiesAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcHumanitiesAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctipchumanitieseffort" id="slctipchumanitieseffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getIpcHumanitiesEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcHumanitiesEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getIpcHumanitiesEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcHumanitiesEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td>Art and Design</td>
						<td>							
							<select name="slctipcartanddesignachievement" id="slctipcartanddesignachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getIpcArtAndDesignAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcArtAndDesignAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getIpcArtAndDesignAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcArtAndDesignAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>							
							<select name="slctipcartanddesigneffort" id="slctipcartanddesigneffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoEndYearEvaluation.getIpcArtAndDesignEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcArtAndDesignEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoEndYearEvaluation.getIpcArtAndDesignEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoEndYearEvaluation.getIpcArtAndDesignEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}
								%>
							</select>
						</td>
					</tr>
				</table>				
			</td>
			<td>				
				<textarea class="jqte-test" rows="10" style="width:100%" name="textareaipcclassteachercomments" id="textareaipcclassteachercomments"><%=keyStageTwoEndYearEvaluation.getIpcClassTeacherComments() %></textarea>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>
		</tr>
		<tr>
			<td colspan="4">				
				<textarea class="jqte-test" name="textareaclassteachergeneralcomments" id="textareaclassteachergeneralcomments" rows="10" style="width:100%"><%=keyStageTwoEndYearEvaluation.getClassTeacherGeneralComments() %></textarea>
			</td>
		</tr>
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">SUGGESTED TARGETS FOR THE FORTHCOMING YEAR</td>
		</tr>
		<tr>
			<td colspan="4">				
				<textarea name="textareasuggestedtargets" id="textareasuggestedtargets" class="jqte-test" rows="10" style="width:100%"><%=keyStageTwoEndYearEvaluation.getSuggestedTargestForthcomingYear() %></textarea>
			</td>
		</tr>	
		<tr>
			<td colspan="4" align="right">
				<input type="button" id="btnupdate" value="Update" class="input-submit"/>
				<input type="reset" value="Clear" class="input-submit"/>
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
			//now get the values from the form
			var id = "<%=id %>";			
			var literacyReadingAchievement = $('#slctliteracyreadingachievement').val();
			var literacyReadingEffort = $('#slctliteracyeffortreading').val();
			var literacyWritingAchievement = $('#slctliteracywritingachievement').val();
			var literacyWritingEffort = $('#slctliteracyeffortwriting').val();
			var literacySpeakingAndListeningAchievement = $('#slctliteracyspeakingandlisteningachievement').val();
			var literacySpeakingAndListeningEffort = $('#slctliteracyeffortspeakingandlistening').val();
			var literacyClassTeacherComments = $('#textarealitracyclassteachercomments').val();
			var numeracyNumberAndCalculationAchievement = $('#slctnumeracyachievementnumberandcalculation').val();
			var numeracyNumberAndCalculationEffort = $('#slctnumeracyeffortnumberandcalcualtion').val();
			var numeracyShapeSpaceAndMeasuresAchievement = $('#slctnumeracyachievementshapespaceandmeasures').val();
			var numeracyShapeSpaceAndMeasuresEffort = $('#slctnumeracyeffortshapespaceandmeasures').val();
			var numeracyDataHandlingAchievement = $('#slctnumeracyachievementdatahandling').val();
			var numeracyDataHandlingEffort = $('#slctnumeracyeffortdatahandling').val();
			var numeracyProblemSolvingAchievement = $('#slctnumeracyachievementproblemsolving').val();
			var numeracyProblemSolvingEffort = $('#slctnumeracyeffortproblemsolving').val();
			var numeracyClassTeacherComments = $('#textareanumeracyclassteachercomments').val();
			var ipcScienceAchievement = $('#slctipcscienceachievement').val();
			var ipcScienceEffort = $('#slctipcscienceeffort').val();
			var ipcHumanitiesAchievement = $('#slctipchumanitiesachievement').val();
			var ipcHumanitiesEffort = $('#slctipchumanitieseffort').val();
			var ipcArtAndDesignAchievement = $('#slctipcartanddesignachievement').val();
			var ipcArtAndDesignEffort = $('#slctipcartanddesigneffort').val();
			var ipcClassTeacherComments = $('#textareaipcclassteachercomments').val();
			var classTeacherGeneralComments = $('#textareaclassteachergeneralcomments').val();
			var suggestedTargetsForthcomingYear = $('#textareasuggestedtargets').val();
			
			if(literacyReadingAchievement != "" && literacyReadingEffort != "" && literacyWritingAchievement != "" &&
					literacyWritingEffort != "" && literacySpeakingAndListeningAchievement != "" &&
					literacySpeakingAndListeningEffort != "" && literacyClassTeacherComments != "" &&
					numeracyNumberAndCalculationAchievement != "" && numeracyNumberAndCalculationEffort != "" &&
					numeracyShapeSpaceAndMeasuresAchievement != "" && numeracyShapeSpaceAndMeasuresEffort != "" &&
					numeracyDataHandlingAchievement != "" && numeracyDataHandlingEffort != "" &&
					numeracyProblemSolvingAchievement != "" && numeracyProblemSolvingEffort != "" &&
					numeracyClassTeacherComments != "" && ipcScienceAchievement != "" &&
					ipcScienceEffort != "" && ipcHumanitiesAchievement != "" && ipcHumanitiesEffort != "" &&
					ipcArtAndDesignAchievement != "" && ipcArtAndDesignEffort !="" && ipcClassTeacherComments != "" &&
					classTeacherGeneralComments != "" && suggestedTargetsForthcomingYear != ""){
				
				var dataString = "id="+id+"&literacyReadingAchievement="+literacyReadingAchievement+"&literacyReadingEffort="+
				literacyReadingEffort+"&literacyWritingAchievement="+literacyWritingAchievement+
				"&literacyWritingEffort="+literacyWritingEffort+"&literacySpeakingAndListeningAchievement="+
				literacySpeakingAndListeningAchievement+"&literacySpeakingAndListeningEffort="+
				literacySpeakingAndListeningEffort+"&literacyClassTeacherComments="+literacyClassTeacherComments+
				"&numeracyNumberAndCalculationAchievement="+numeracyNumberAndCalculationAchievement+
				"&numeracyNumberAndCalculationEffort="+numeracyNumberAndCalculationEffort+
				"&numeracyShapeSpaceAndMeasuresAchievement="+numeracyShapeSpaceAndMeasuresAchievement+
				"&numeracyShapeSpaceAndMeasuresEffort="+numeracyShapeSpaceAndMeasuresEffort+
				"&numeracyDataHandlingAchievement="+numeracyDataHandlingAchievement+"&numeracyDataHandlingEffort="+
				numeracyDataHandlingEffort+"&numeracyProblemSolvingAchievement="+numeracyProblemSolvingAchievement+
				"&numeracyProblemSolvingEffort="+numeracyProblemSolvingEffort+"&numeracyClassTeacherComments="+
				numeracyClassTeacherComments+"&ipcScienceAchievement="+ipcScienceAchievement+"&ipcScienceEffort="+
				ipcScienceEffort+"&ipcHumanitiesAchievement="+ipcHumanitiesAchievement+"&ipcHumanitiesEffort="+
				ipcHumanitiesEffort+"&ipcArtAndDesignAchievement="+ipcArtAndDesignAchievement+"&ipcArtAndDesignEffort="+
				ipcArtAndDesignEffort+"&ipcClassTeacherComments="+ipcClassTeacherComments+"&classTeacherGeneralComments="+
				classTeacherGeneralComments+"&suggestedTargetsForthcomingYear="+suggestedTargetsForthcomingYear;
				var divId = "keyStageTwoEndYearReportDiv" + id;
				
				$.ajax({
				    url: 'updatenarrationupperkeystagetwoendyear5primaryschoolreport.jsp',		
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