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
<div id="errorDiv"></div>
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
							<select name="slctliteracyachievement" id="slctliteracyachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoMidYearEvaluation.getLiteracyAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getLiteracyAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageTwoMidYearEvaluation.getLiteracyAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%	
									}else if(keyStageTwoMidYearEvaluation.getLiteracyAchievement().equalsIgnoreCase("n")){
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
							<select name="slctliteracyeffort" id="slctliteracyeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoMidYearEvaluation.getLiteracyEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getLiteracyEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoMidYearEvaluation.getLiteracyEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%	
									}else if(keyStageTwoMidYearEvaluation.getLiteracyEffort() == 4){
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
				<textarea class="jqte-test" name="textarealitracyclassteachercomments" id="textarealitracyclassteachercomments" rows="10" style="width:100%"><%=keyStageTwoMidYearEvaluation.getLiteracyClassTeacherComments() %></textarea>
			</td>
		</tr>				
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="50%" style="font-weight:bolder">NUMERACY</td>
						<td>							
							<select name="slctnumeracyachievement" id="slctnumeracyachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoMidYearEvaluation.getNumeracyAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getNumeracyAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoMidYearEvaluation.getNumeracyAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getNumeracyAchievement().equalsIgnoreCase("n")){
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
							<select name="slctnumeracyeffort" id="slctnumeracyeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoMidYearEvaluation.getNumeracyEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getNumeracyEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoMidYearEvaluation.getNumeracyEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getNumeracyEffort() == 4){
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
				<textarea class="jqte-test" name="textareanumeracyclassteachercomments" id="textareanumeracyclassteachercomments" rows="10" style="width:100%"><%=keyStageTwoMidYearEvaluation.getNumeracyClassTeacherComments() %></textarea>
			</td>
		</tr>			
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>						
						<td width="50%" style="font-weight:bolder">INTERNATIONAL PRIMARY CURRICULUM</td>
						<td>							
							<select name="slctipcachievement" id="slctipcachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoMidYearEvaluation.getIpcAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getIpcAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoMidYearEvaluation.getIpcAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getIpcAchievement().equalsIgnoreCase("n")){
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
							<select name="slctipceffort" id="slctipceffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoMidYearEvaluation.getIpcEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getIpcEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoMidYearEvaluation.getIpcEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getIpcEffort() == 4){
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
				<textarea class="jqte-test" rows="10" style="width:100%" name="textareaipcclassteachercomments" id="textareaipcclassteachercomments"><%=keyStageTwoMidYearEvaluation.getIpcClassTeacherComments() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="3" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>						
						<td width="50%" style="font-weight:bolder">SCIENCE</td>
						<td>							
							<select name="slctscienceachievement" id="slctscienceachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoMidYearEvaluation.getScienceAchievement().equalsIgnoreCase("e")){
										%>
										<option value="E" selected="selected">E</option>
										<option value="S">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getScienceAchievement().equalsIgnoreCase("s")){
										%>
										<option value="E">E</option>
										<option value="S" selected="selected">S</option>
										<option value="M">M</option>
										<option value="N">N</option>
										<%		
									}else if(keyStageTwoMidYearEvaluation.getScienceAchievement().equalsIgnoreCase("m")){
										%>
										<option value="E">E</option>
										<option value="S">S</option>
										<option value="M" selected="selected">M</option>
										<option value="N">N</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getScienceAchievement().equalsIgnoreCase("n")){
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
							<select name="slctscienceeffort" id="slctscienceeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageTwoMidYearEvaluation.getScienceEffort() == 1){
										%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getScienceEffort() == 2){
										%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%		
									}else if(keyStageTwoMidYearEvaluation.getScienceEffort() == 3){
										%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
										<%
									}else if(keyStageTwoMidYearEvaluation.getScienceEffort() == 4){
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
				<textarea class="jqte-test" rows="10" style="width:100%" name="textareascienceclassteachercomments" id="textareascienceclassteachercomments"><%=keyStageTwoMidYearEvaluation.getScienceClassTeacherComments() %></textarea>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>			
		</tr>
		<tr>
			<td colspan="4">				
				<textarea class="jqte-test" name="textareaclassteachergeneralcomments" id="textareaclassteachergeneralcomments" rows="10" style="width:100%"><%=keyStageTwoMidYearEvaluation.getClassTeacherGeneralComments() %></textarea>
			</td>
		</tr>	
		<tr>
			<td colspan="4" align="right">
				<input type="button" id="btnupdate" value="Update" class="input-submit"/>
				<input type="reset" value="Clear" class="input-submit"/>
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
			var id = "<%=id%>";			
			var literacyAchievement = $('#slctliteracyachievement').val();
			var literacyEffort = $('#slctliteracyeffort').val();			
			var literacyClassTeacherComments = $('#textarealitracyclassteachercomments').val();
			var numeracyAchievement = $('#slctnumeracyachievement').val();
			var numeracyEffort = $('#slctnumeracyeffort').val();			
			var numeracyClassTeacherComments = $('#textareanumeracyclassteachercomments').val();
			var ipcAchievement = $('#slctipcachievement').val();
			var ipcEffort = $('#slctipceffort').val();
			var scienceAchievement = $('#slctscienceachievement').val();
			var scienceEffort = $('#slctscienceeffort').val();
			var scienceClassTeacherComments = $('#textareascienceclassteachercomments').val();
			var ipcClassTeacherComments = $('#textareaipcclassteachercomments').val();
			var classTeacherGeneralComments = $('#textareaclassteachergeneralcomments').val();			
			
			if(literacyAchievement != "" &&	literacyEffort != "" && literacyClassTeacherComments != "" &&
					numeracyAchievement != "" && numeracyEffort != "" &&	numeracyClassTeacherComments != "" && 
					ipcAchievement != "" && ipcEffort != "" && ipcClassTeacherComments != "" &&
					classTeacherGeneralComments != "" && scienceAchievement != "" &&
					scienceEffort != "" && scienceClassTeacherComments != ""){
				
				var dataString = "id="+id+"&literacyAchievement="+literacyAchievement+"&literacyEffort="+
				literacyEffort+"&literacyClassTeacherComments="+literacyClassTeacherComments+
				"&numeracyAchievement="+numeracyAchievement+
				"&numeracyEffort="+numeracyEffort+
				"&numeracyClassTeacherComments="+numeracyClassTeacherComments+
				"&ipcAchievement="+ipcAchievement+"&ipcEffort="+
				ipcEffort+"&ipcClassTeacherComments="+ipcClassTeacherComments+"&classTeacherGeneralComments="+
				classTeacherGeneralComments+"&scienceAchievement="+scienceAchievement+
				"&scienceEffort="+scienceEffort+"&scienceClassTeacherComments="+scienceClassTeacherComments;
				var divId = "keyStageTwoMidYearReportDiv" + id;
				
				$.ajax({
				    url: 'updatenarrationupperkeystagetwomidyear5primaryschoolreport.jsp',		
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