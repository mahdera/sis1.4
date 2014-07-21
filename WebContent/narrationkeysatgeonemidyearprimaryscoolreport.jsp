<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form style="background:#ffffff">
	<div id="errorDiv"></div>
	<table border="1" width="100%">
		<tr style="font-weight:bolder;font-size:10pt">
			<td width="20%"><font color="red">*</font>CURRICULUM AREA </td>			
			<td width="10%"><font color="red">*</font>EFFORT</td>
			<td><font color="red">*</font>CLASS TEACHER COMMENTS</td>
		</tr>		
		<tr>
			<td colspan="2" style="vertical-align:top;padding-top:34px">				
				<table border="0" width="100%">
					<tr>
						<td width="20%" style="font-weight:bolder">LITERACY<br/>Reading</td>						
						<td width="10%">
							<select name="slctliteracyeffortreading" id="slctliteracyeffortreading" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">LITERACY<br/>Writing</td>						
						<td>
							<select name="slctliteracyeffortwriting" id="slctliteracyeffortwriting" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">LITERACY<br/>Speaking and Listening</td>						
						<td>
							<select name="slctliteracyeffortspeakingandlistening" id="slctliteracyeffortspeakingandlistening" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>					
				</table>
			</td>
			<td style="vertical-align:top">
				<textarea class="jqte-test" name="textarealitracyclassteachercomments" id="textarealitracyclassteachercomments" rows="10" style="width:100%"></textarea>
			</td>
		</tr>				
		<tr>
			<td colspan="2" style="vertical-align:top;padding-top:34px">
				<table border="0" width="100%">
					<tr>
						<td width="20%" style="font-weight:bolder">NUMERACY</td>						
						<td width="10%">
							<select name="slctnumeracyeffort" id="slctnumeracyeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>									
				</table>
			</td>
			<td>
				<textarea class="jqte-test" name="textareanumeracyclassteachercomments" id="textareanumeracyclassteachercomments" rows="10" style="width:100%"></textarea>
			</td>
		</tr>			
		<tr>
			<td colspan="2" style="vertical-align:top;padding-top:34px">
				<table border="0" width="100%">
					<tr>						
						<td width="20%" style="font-weight:bolder">IPC<br/>Science</td>						
						<td width="10%">
							<select name="slctipcscienceeffort" id="slctipcscienceeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">IPC<br/>Humanities</td>						
						<td>
							<select name="slctipchumanitieseffort" id="slctipchumanitieseffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>
					<tr>
						<td style="font-weight:bolder">IPC<br/>Art and Design</td>						
						<td>
							<select name="slctipcartanddesigneffort" id="slctipcartanddesigneffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>
				</table>				
			</td>
			<td>
				<textarea class="jqte-test" rows="10" style="width:100%" name="textareaipcclassteachercomments" id="textareaipcclassteachercomments"></textarea>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="3" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>
		</tr>
		<tr>
			<td colspan="3">
				<textarea class="jqte-test" name="textareaclassteachergeneralcomments" id="textareaclassteachergeneralcomments" rows="10" style="width:100%"></textarea>
			</td>
		</tr>		
		<tr>
			<td colspan="3" align="right">
				<input type="button" id="btnsave" value="Save" class="input-submit"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<p class="msg info">N.B. Fields indicated with <font color="red">*</font> are required. Hence can not be left empty!</p>
			</td>
		</tr>
	</table>
</form>
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
		
		$('#btnsave').click(function(){
			//now get the values from the form
			var sectionId = $('#txtsection').val();
			var studentIdNumber = $('#txtsid').val();			
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
			
			
			if(sectionId != "" && studentIdNumber != "" && literacyReadingEffort != "" &&
					literacyWritingEffort != "" && literacySpeakingAndListeningEffort != "" && 
					literacyClassTeacherComments != "" && numeracyEffort != "" && 
					numeracyClassTeacherComments != "" && ipcScienceEffort != "" && ipcHumanitiesEffort != ""  
					&& ipcArtAndDesignEffort !="" && ipcClassTeacherComments != "" && 
					classTeacherGeneralComments != ""){
				
				var dataString = "sectionId="+sectionId+"&studentIdNumber="+studentIdNumber+
				"&literacyReadingEffort="+literacyReadingEffort+"&literacyWritingEffort="+literacyWritingEffort+
				"&literacySpeakingAndListeningEffort="+literacySpeakingAndListeningEffort+
				"&literacyClassTeacherComments="+literacyClassTeacherComments+
				"&numeracyEffort="+numeracyEffort+
				"&numeracyClassTeacherComments="+numeracyClassTeacherComments+
				"&ipcScienceEffort="+ipcScienceEffort+
				"&ipcHumanitiesEffort="+ipcHumanitiesEffort+
				"&ipcArtAndDesignEffort="+ipcArtAndDesignEffort+
				"&ipcClassTeacherComments="+ipcClassTeacherComments+
				"&classTeacherGeneralComments="+classTeacherGeneralComments;				
				
				$.ajax({
				    url: 'savenarrationkeystageonemidyearprimaryschoolreport.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){				    		
				    		$('#narrationd').html(response);					
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