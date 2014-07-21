<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	KeyStageOneMidYearEvaluation keyStageOneMidYearEvaluation = KeyStageOneMidYearEvaluation.getKeyStageOneMidYearEvaluation(id);
	Applicant applicant = Applicant.getApplicant(keyStageOneMidYearEvaluation.getStudentIdNumber());
	String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	Section1 section = Section1.getSectionUsingId(keyStageOneMidYearEvaluation.getSectionId());
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
			<td width="10%">EFFORT</td>
			<td>CLASS TEACHER COMMENTS</td>
		</tr>		
		<tr>
			<td colspan="2" style="vertical-align:top;">				
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="20%" style="font-weight:bolder">LITERACY<br/>Reading</td>						
						<td width="10%">							
							<select name="slctliteracyeffortreading" id="slctliteracyeffortreading" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneMidYearEvaluation.getLiteracyReadingEffort() == 1){
								%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%
									}else if(keyStageOneMidYearEvaluation.getLiteracyReadingEffort() == 2){
								%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getLiteracyReadingEffort() == 3){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getLiteracyReadingEffort() == 4){
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
						<td style="font-weight:bolder">LITERACY<br/>Writing</td>						
						<td>							
							<select name="slctliteracyeffortwriting" id="slctliteracyeffortwriting" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneMidYearEvaluation.getLiteracyWritingEffort() == 1){
								%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%
									}else if(keyStageOneMidYearEvaluation.getLiteracyWritingEffort() == 2){
								%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getLiteracyWritingEffort() == 3){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getLiteracyWritingEffort() == 4){
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
						<td style="font-weight:bolder">LITERACY<br/>Speaking and Listening</td>						
						<td>							
							<select name="slctliteracyeffortspeakingandlistening" id="slctliteracyeffortspeakingandlistening" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneMidYearEvaluation.getLiteracySpeakingAndListeningEffort() == 1){
								%>
									<option value="1" selected="selected">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								<%
									}else if(keyStageOneMidYearEvaluation.getLiteracySpeakingAndListeningEffort() == 2){
								%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getLiteracySpeakingAndListeningEffort() == 3){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
								<%	
									}else if(keyStageOneMidYearEvaluation.getLiteracySpeakingAndListeningEffort() == 4){
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
				<textarea class="jqte-test" name="textarealitracyclassteachercomments" id="textarealitracyclassteachercomments" rows="10" style="width:100%"><%=keyStageOneMidYearEvaluation.getLiteracyClassTeacherComments() %></textarea>
			</td>
		</tr>				
		<tr>
			<td colspan="2" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td width="20%" style="font-weight:bolder">NUMERACY</td>						
						<td width="10%">							
							<select name="slctnumeracyeffort" id="slctnumeracyeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneMidYearEvaluation.getNumeracyEffort() == 1){
								%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%
									}else if(keyStageOneMidYearEvaluation.getNumeracyEffort() == 2){
								%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getNumeracyEffort() == 3){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getNumeracyEffort() == 4){
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
				<textarea class="jqte-test" name="textareanumeracyclassteachercomments" id="textareanumeracyclassteachercomments" rows="10" style="width:100%"><%=keyStageOneMidYearEvaluation.getNumeracyClassTeacherComments() %></textarea>
			</td>
		</tr>			
		<tr>
			<td colspan="2" style="vertical-align:top;">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>						
						<td width="20%" style="font-weight:bolder">IPC<br/>Science</td>						
						<td width="10%">							
							<select name="slctipcscienceeffort" id="slctipcscienceeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneMidYearEvaluation.getIpcScienceEffort() == 1){
								%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%
									}else if(keyStageOneMidYearEvaluation.getIpcScienceEffort() == 2){
								%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getIpcScienceEffort() == 3){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getIpcScienceEffort() == 4){
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
						<td style="font-weight:bolder">IPC<br/>Humanities</td>						
						<td>							
							<select name="slctipchumanitieseffort" id="slctipchumanitieseffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneMidYearEvaluation.getIpcHumanitiesEffort() == 1){
								%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%
									}else if(keyStageOneMidYearEvaluation.getIpcHumanitiesEffort() == 2){
								%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getIpcHumanitiesEffort() == 3){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getIpcHumanitiesEffort() == 4){
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
						<td style="font-weight:bolder">IPC<br/>Art and Design</td>						
						<td>							
							<select name="slctipcartanddesigneffort" id="slctipcartanddesigneffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									if(keyStageOneMidYearEvaluation.getIpcArtAndDesignEffort() == 1){
								%>
										<option value="1" selected="selected">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%
									}else if(keyStageOneMidYearEvaluation.getIpcArtAndDesignEffort() == 2){
								%>
										<option value="1">1</option>
										<option value="2" selected="selected">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getIpcArtAndDesignEffort() == 3){
								%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected="selected">3</option>
										<option value="4">4</option>
								<%		
									}else if(keyStageOneMidYearEvaluation.getIpcArtAndDesignEffort() == 4){
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
				<textarea class="jqte-test" rows="10" style="width:100%" name="textareaipcclassteachercomments" id="textareaipcclassteachercomments"><%=keyStageOneMidYearEvaluation.getIpcClassTeacherComments() %></textarea>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="3" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>
		</tr>
		<tr>
			<td colspan="3">				
				<textarea class="jqte-test" name="textareaclassteachergeneralcomments" id="textareaclassteachergeneralcomments" rows="10" style="width:100%"><%=keyStageOneMidYearEvaluation.getClassTeacherGeneralComments() %></textarea>
			</td>
		</tr>		
		<tr>
			<td colspan="3" style="font-weight:bolder;font-size:12pt">
				KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<table border="0" width="100%" style="border: 0px solid #2779aa;" rules="all">
					<tr>
						<td colspan="4" align="center" style="font-weight:bolder;font-size:13pt">
							EFFORT
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">1</td>
						<td>Excellent</td>
						<td style="font-weight:bolder">3</td>
						<td>Satisfactory</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">2</td>
						<td>Good</td>
						<td style="font-weight:bolder">4</td>
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
			<input type="button" id="btnupdate" value="Update" class="input-submit"/>
			<input type="reset" value="Clear" class="input-submit"/>			
		</td>
	</tr>
</table>
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
		var literacyReadingEffort = $('#slctliteracyeffortreading').val();			
		var literacyWritingEffort = $('#slctliteracyeffortwriting').val();			
		var literacySpeakingAndListeningEffort = $('#slctliteracyeffortspeakingandlistening').val();
		var literacyClassTeacherComments = $('#textarealitracyclassteachercomments').val();			
		var numeracyEffort = $('#slctnumeracyeffort').val();			
		var numeracyClassTeacherComments = $('#textareanumeracyclassteachercomments').val();			
		var ipcScienceEffort = $('#slctipcscienceeffort').val();			
		var ipcHumanitiesEffort = $('#slctipchumanitieseffort').val();			
		var ipcArtAndDesignEffort = $('#slctipcartanddesigneffort').val();
		var ipcClassTeacherComments = $('#textareaipcclassteachercomments').val();
		var classTeacherGeneralComments = $('#textareaclassteachergeneralcomments').val();		
		
		if(literacyReadingEffort != "" &&
				literacyWritingEffort != "" && literacySpeakingAndListeningEffort != "" && 
				literacyClassTeacherComments != "" && numeracyEffort != "" && 
				numeracyClassTeacherComments != "" && ipcScienceEffort != "" && ipcHumanitiesEffort != ""  
				&& ipcArtAndDesignEffort !="" && ipcClassTeacherComments != "" && 
				classTeacherGeneralComments != ""){
			
			var dataString = "id="+id+"&literacyReadingEffort="+literacyReadingEffort+
			"&literacyWritingEffort="+literacyWritingEffort+
			"&literacySpeakingAndListeningEffort="+literacySpeakingAndListeningEffort+
			"&literacyClassTeacherComments="+literacyClassTeacherComments+
			"&numeracyEffort="+numeracyEffort+
			"&numeracyClassTeacherComments="+numeracyClassTeacherComments+
			"&ipcScienceEffort="+ipcScienceEffort+
			"&ipcHumanitiesEffort="+ipcHumanitiesEffort+
			"&ipcArtAndDesignEffort="+ipcArtAndDesignEffort+
			"&ipcClassTeacherComments="+ipcClassTeacherComments+
			"&classTeacherGeneralComments="+classTeacherGeneralComments;	
			var divId = "keyStageOneMidYearReportDiv" + id;
			
			$.ajax({
			    url: 'updatenarrationkeystageonemidyearprimaryschoolreport.jsp',		
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