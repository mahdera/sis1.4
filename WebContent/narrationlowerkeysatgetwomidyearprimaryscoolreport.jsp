<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form style="background:#ffffff">
	<div id="errorDiv"></div>
	<table border="1" width="100%">
		<tr style="font-weight:bolder;font-size:10pt">
			<td width="20%"><font color="red">*</font>CURRICULUM AREA </td>
			<td width="10%"><font color="red">*</font>ACHIEVEMENT</td>
			<td width="10%"><font color="red">*</font>EFFORT</td>
			<td><font color="red">*</font>CLASS TEACHER COMMENTS</td>
		</tr>		
		<tr>
			<td colspan="3" style="vertical-align:top;padding-top:34px">				
				<table border="0" width="100%">
					<tr>
						<td width="50%" style="font-weight:bolder">LITERACY</td>
						<td>
							<select name="slctliteracyachievement" id="slctliteracyachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctliteracyeffort" id="slctliteracyeffort" style="width:100%">
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
			<td colspan="3" style="vertical-align:top;padding-top:34px">
				<table border="0" width="100%">
					<tr>
						<td width="50%" style="font-weight:bolder">NUMERACY</td>
						<td>
							<select name="slctnumeracyachievement" id="slctnumeracyachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
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
			<td colspan="3" style="vertical-align:top;padding-top:34px">
				<table border="0" width="100%">
					<tr>						
						<td width="50%" style="font-weight:bolder">INTERNATIONAL PRIMARY CURRICULUM</td>
						<td>
							<select name="slctipcachievement" id="slctipcachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctipceffort" id="slctipceffort" style="width:100%">
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
		<tr>
			<td colspan="3" style="vertical-align:top;padding-top:34px">
				<table border="0" width="100%">
					<tr>						
						<td width="50%" style="font-weight:bolder">SCIENCE</td>
						<td>
							<select name="slctscienceachievement" id="slctscienceachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctscienceeffort" id="slctscienceeffort" style="width:100%">
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
				<textarea class="jqte-test" rows="10" style="width:100%" name="textareascienceclassteachercomments" id="textareascienceclassteachercomments"></textarea>
			</td>
		</tr>	
		<tr style="background:#eee">
			<td colspan="4" style="font-weight:bolder;font-size:13pt">CLASS TEACHER GENERAL COMMENTS</td>
		</tr>
		<tr>
			<td colspan="4">
				<textarea class="jqte-test" name="textareaclassteachergeneralcomments" id="textareaclassteachergeneralcomments" rows="10" style="width:100%"></textarea>
			</td>
		</tr>		
		<tr>
			<td colspan="4" align="right">
				<input type="button" id="btnsave" value="Save" class="input-submit"/>
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
			
			if(sectionId != "" && studentIdNumber != "" && literacyAchievement != "" &&
					literacyEffort != "" && literacyClassTeacherComments != "" &&
					numeracyAchievement != "" && numeracyEffort != "" &&	numeracyClassTeacherComments != "" && 
					ipcAchievement != "" && ipcEffort != "" && ipcClassTeacherComments != "" &&
					classTeacherGeneralComments != "" && scienceAchievement != "" &&
					scienceEffort != "" && scienceClassTeacherComments != ""){
				
				var dataString = "sectionId="+sectionId+"&studentIdNumber="+studentIdNumber+
				"&literacyAchievement="+literacyAchievement+"&literacyEffort="+
				literacyEffort+"&literacyClassTeacherComments="+literacyClassTeacherComments+
				"&numeracyAchievement="+numeracyAchievement+
				"&numeracyEffort="+numeracyEffort+
				"&numeracyClassTeacherComments="+numeracyClassTeacherComments+
				"&ipcAchievement="+ipcAchievement+"&ipcEffort="+
				ipcEffort+"&ipcClassTeacherComments="+ipcClassTeacherComments+"&classTeacherGeneralComments="+
				classTeacherGeneralComments+"&scienceAchievement="+scienceAchievement+
				"&scienceEffort="+scienceEffort+"&scienceClassTeacherComments="+scienceClassTeacherComments;
				
				$.ajax({
				    url: 'savenarrationlowerkeystagetwomidyearprimaryschoolreport.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){				    		
				    		$('#textdesp').html(response);					
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