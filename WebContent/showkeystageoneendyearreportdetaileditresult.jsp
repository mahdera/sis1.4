<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	KeyStageOneEndYearEvaluation keyStageOneEndYearEvaluation = KeyStageOneEndYearEvaluation.getKeyStageOneEndYearEvaluation(id);
	System.out.println(keyStageOneEndYearEvaluation.toString());
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
<div id="errorDiv"></div>
<form style="background:#ffffff">
	<div id="errorDiv"></div>
	<table border="1" width="100%">
		<tr style="font-weight:bolder;font-size:10pt">
			<td width="20%"><font color="red">*</font>CURRICULUM AREA </td>
			<td width="10%"><font color="red">*</font>ACHIEVEMENT</td>
			<td width="10%"><font color="red">*</font>EFFORT</td>
			<td><font color="red">*</font>CLASS TEACHER COMMENTS</td>
		</tr>
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">LITERACY</td>
		</tr>
		<tr>
			<td colspan="3" style="vertical-align:top;padding-top:34px">				
				<table border="0" width="100%">
					<tr>
						<td width="50%">Reading</td>
						<td>
							<select name="slctliteracyreadingachievement" id="slctliteracyreadingachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%									
									if(keyStageOneEndYearEvaluation.getLiteracyReadingAchievement().equalsIgnoreCase("E")){
								%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
								<%
									}else if(keyStageOneEndYearEvaluation.getLiteracyReadingAchievement().equalsIgnoreCase("S")){
								%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
								<%		
									}else if(keyStageOneEndYearEvaluation.getLiteracyReadingAchievement().equalsIgnoreCase("m")){
								%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
								<%			
									}else if(keyStageOneEndYearEvaluation.getLiteracyReadingAchievement().equalsIgnoreCase("n")){
								%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
								<%		
									}else{
								%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
								<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctliteracyeffortreading" id="slctliteracyeffortreading" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getLiteracyReadingEffort() == 1){
								%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%
									}else if(keyStageOneEndYearEvaluation.getLiteracyReadingEffort() == 2){
								%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%	
									}else if(keyStageOneEndYearEvaluation.getLiteracyReadingEffort() == 3){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
								<%	
									}else if(keyStageOneEndYearEvaluation.getLiteracyReadingEffort() == 4){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
								<%	
									}else{
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
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
									if(keyStageOneEndYearEvaluation.getLiteracyWritingAchievement().equalsIgnoreCase("e")){
								%>
								<option value="E" selected="selected">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
								<%
									}else if(keyStageOneEndYearEvaluation.getLiteracyWritingAchievement().equalsIgnoreCase("s")){
								%>
								<option value="E">E</option>
								<option value="S" selected="selected">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
								<%		
									}else if(keyStageOneEndYearEvaluation.getLiteracyWritingAchievement().equalsIgnoreCase("m")){
								%>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M" selected="selected">M</option>
								<option value="N">N</option>
								<%	
									}else if(keyStageOneEndYearEvaluation.getLiteracyWritingAchievement().equalsIgnoreCase("n")){
								%>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N" selected="selected">N</option>
								<%	
									}else{
								%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
								<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctliteracyeffortwriting" id="slctliteracyeffortwriting" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getLiteracyWritingEffort() == 1){
								%>
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<%
									}else if(keyStageOneEndYearEvaluation.getLiteracyWritingEffort() == 2){
								%>
								<option value="1">1</option>
								<option value="2" selected="selected">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<%		
									}else if(keyStageOneEndYearEvaluation.getLiteracyWritingEffort() == 3){
								%>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3" selected="selected">3</option>
								<option value="4">4</option>
								<%		
									}else if(keyStageOneEndYearEvaluation.getLiteracyWritingEffort() == 4){
								%>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4" selected="selected">4</option>
								<%		
									}else{
								%>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
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
									if(keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}else{
									%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
									<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctliteracyeffortspeakingandlistening" id="slctliteracyeffortspeakingandlistening" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getLiteracySpeakingAndListeningEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}else{
									%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									<%
									}
								%>
							</select>
						</td>
					</tr>					
				</table>
			</td>
			<td style="vertical-align:top">
				<textarea class="jqte-test" name="textarealitracyclassteachercomments" id="textarealitracyclassteachercomments" rows="10" style="width:100%"><%=keyStageOneEndYearEvaluation.getLiteracyClassTeacherComments() %></textarea>
			</td>
		</tr>
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">NUMERACY</td>
		</tr>		
		<tr>
			<td colspan="3" style="vertical-align:top;padding-top:34px">
				<table border="0" width="100%">
					<tr>
						<td width="50%">Number and Calculation</td>
						<td>
							<select name="slctnumeracyachievementnumberandcalculation" id="slctnumeracyachievementnumberandcalculation" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getNumeracyNumberAndCalculationAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyNumberAndCalculationAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyNumberAndCalculationAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyNumberAndCalculationAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%	
									}else{
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctnumeracyeffortnumberandcalcualtion" id="slctnumeracyeffortnumberandcalcualtion" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}else{
									%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
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
									if(keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}else{
									%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
									<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctnumeracyeffortshapespaceandmeasures" id="slctnumeracyeffortshapespaceandmeasures" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}else{
									%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
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
									if(keyStageOneEndYearEvaluation.getNumeracyDataHandlingAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyDataHandlingAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyDataHandlingAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyDataHandlingAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}else{
									%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
									<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctnumeracyeffortdatahandling" id="slctnumeracyeffortdatahandling" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getNumeracyDataHandlingEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyDataHandlingEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyDataHandlingEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyDataHandlingEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}else{
										%>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
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
									if(keyStageOneEndYearEvaluation.getNumeracyProblemSolvingAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyProblemSolvingAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyProblemSolvingAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyProblemSolvingAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}else{
									%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
									<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctnumeracyeffortproblemsolving" id="slctnumeracyeffortproblemsolving" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getNumeracyProblemSolvingEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyProblemSolvingEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getNumeracyProblemSolvingEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getNumeracyProblemSolvingEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}else{
									%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									<%
									}
								%>
							</select>
						</td>
					</tr>					
				</table>
			</td>
			<td>
				<textarea class="jqte-test" name="textareanumeracyclassteachercomments" id="textareanumeracyclassteachercomments" rows="10" style="width:100%"><%=keyStageOneEndYearEvaluation.getNumeracyClassTeacherComments() %></textarea>
			</td>
		</tr>		
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">INTERNATIONAL PRIMARY CURRICULUM</td>
		</tr>	
		<tr>
			<td colspan="3" style="vertical-align:top;padding-top:34px">
				<table border="0" width="100%">
					<tr>						
						<td width="50%">Science</td>
						<td>
							<select name="slctipcscienceachievement" id="slctipcscienceachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getIpcScienceAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcScienceAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getIpcScienceAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getIpcScienceAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}else{
									%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
									<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctipcscienceeffort" id="slctipcscienceeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getIpcScienceEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcScienceEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getIpcScienceEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcScienceEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}else{
										%>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
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
									if(keyStageOneEndYearEvaluation.getIpcHumanitiesAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcHumanitiesAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getIpcHumanitiesAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcHumanitiesAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}else{
									%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
									<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctipchumanitieseffort" id="slctipchumanitieseffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getIpcHumanitiesEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcHumanitiesEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcHumanitiesEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcHumanitiesEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}else{
									%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
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
									if(keyStageOneEndYearEvaluation.getIpcArtAndDesignAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcArtAndDesignAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageOneEndYearEvaluation.getIpcArtAndDesignAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcArtAndDesignAchievement().equalsIgnoreCase("n")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N" selected="selected">N</option>
										<%
									}else{
									%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
									<%
									}
								%>
							</select>
						</td>
						<td>
							<select name="slctipcartanddesigneffort" id="slctipcartanddesigneffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneEndYearEvaluation.getIpcArtAndDesignEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcArtAndDesignEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcArtAndDesignEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageOneEndYearEvaluation.getIpcArtAndDesignEffort() == 4){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected="selected">4</option>
										<%
									}else{
									%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									<%
									}
								%>
							</select>
						</td>
					</tr>
				</table>				
			</td>
			<td>
				<textarea class="jqte-test" rows="10" style="width:100%" name="textareaipcclassteachercomments" id="textareaipcclassteachercomments"><%=keyStageOneEndYearEvaluation.getIpcClassTeacherComments() %></textarea>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>
		</tr>
		<tr>
			<td colspan="4">
				<textarea class="jqte-test" name="textareaclassteachergeneralcomments" id="textareaclassteachergeneralcomments" rows="10" style="width:100%"><%=keyStageOneEndYearEvaluation.getClassTeacherGeneralComments() %></textarea>
			</td>
		</tr>
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">SUGGESTED TARGETS FOR THE FORTHCOMING YEAR</td>
		</tr>
		<tr>
			<td colspan="4">
				<textarea name="textareasuggestedtargets" id="textareasuggestedtargets" class="jqte-test" rows="10" style="width:100%"><%=keyStageOneEndYearEvaluation.getSuggestedTargestForthcomingYear() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4" align="right">
				<input type="button" id="btnupdate" value="Update" class="input-submit"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<p class="msg info">N.B. Fields indicated with <font color="red">*</font> are required. Hence can not be left empty!</p>
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
		
		if(literacyReadingAchievement != "" &&
				literacyReadingEffort != "" && literacyWritingAchievement != "" &&
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
			var divId = "keyStageOneEndYearReportDiv" + id;
			
			$.ajax({
			    url: 'updatenarrationkeystageoneendyearprimaryschoolreport.jsp',		
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