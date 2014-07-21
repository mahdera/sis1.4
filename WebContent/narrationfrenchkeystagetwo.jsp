<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String sid=request.getParameter("id");
	List<Specialityclas> helloList = Specialityclas.amharicselect(sid);
	Iterator<Specialityclas> helloItr = helloList.iterator();
%>
<form style="background:#fff">
	<div id="errorDiv"></div>
	<table border="1" width="100%">		
		<tr style="background:#eee;">
			<td colspan="4" align="left" style="font-weight:bolder;font-size:13pt">FRENCH</td>
		</tr>
		<tr>
			<td colspan="3">
				<table border="0" width="100%">
					<tr style="font-weight:bolder;background:#eee">
						<td width="50%">CURRICULUM AREA</td>
						<td>ACHIEVEMENT</td>
						<td>EFFORT</td>
					</tr>
					<tr>
						<td>Speaking and Listening</td>
						<td>
							<select name="slctfrenchspeakingandlisteningacheivement" id="slctfrenchspeakingandlisteningacheivement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctfrenchspeakingandlisteningeffort" id="slctfrenchspeakingandlisteningeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Reading</td>
						<td>
							<select name="slctfrenchreadingacheivement" id="slctfrenchreadingacheivement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctfrenchreadingeffort" id="slctfrenchreadingeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Writing</td>
						<td>
							<select name="slctfrenchwritingacheivement" id="slctfrenchwritingacheivement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctfrenchwritingeffort" id="slctfrenchwritingeffort" style="width:100%">
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
			<td colspan="1" width="50%">
				<table border="0" width="100%">
					<tr style="font-weight:bolder;background:#eee">
						<td>SPECIALIST TEACHER'S COMMENTS</td>
					</tr>
					<tr>
						<td style="padding-top:0px;vertical-align:top;">
							<textarea name="textareafrenchclassteachercomments" id="textareafrenchclassteachercomments" class="jqte-test"></textarea>			
						</td>	
					</tr>
				</table>			
			</td>
		</tr>
		<tr>
			<td colspan="4" align="right">
				<input type="button" value="Save" id="btnsave" class="input-submit"/>
				<input type="reset" value="Clear" class="input-submit"/>
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
			var sectionId = $('#txtsection').val();
			var studentIdNumber = $('#txtsid').val();
			var teacherId = $('#txtteacher').val();
			var frenchSpeakingAndListeningAchievement = $('#slctfrenchspeakingandlisteningacheivement').val();
			var frenchSpeakingAndListeningEffort = $('#slctfrenchspeakingandlisteningeffort').val();			
			var frenchReadingAchievement = $('#slctfrenchreadingacheivement').val();
			var frenchReadingEffort = $('#slctfrenchreadingeffort').val();			
			var frenchWritingAchievement = $('#slctfrenchwritingacheivement').val();
			var frenchWritingEffort = $('#slctfrenchwritingeffort').val();
			var frenchTeacherClassComments = $('#textareafrenchclassteachercomments').val();
			
			if(sectionId != "" && studentIdNumber != "" && teacherId != "" &&
					frenchSpeakingAndListeningAchievement != "" && frenchSpeakingAndListeningEffort != ""
					&& frenchReadingAchievement != "" && frenchReadingEffort != "" && 
					frenchWritingAchievement != "" && frenchWritingEffort != "" &&
					frenchTeacherClassComments != ""){
				var dataString = "sectionId="+sectionId+"&studentIdNumber="+studentIdNumber+
				"&teacherId="+teacherId+"&frenchSpeakingAndListeningAchievement="+
				frenchSpeakingAndListeningAchievement+"&frenchSpeakingAndListeningEffort="+
				frenchSpeakingAndListeningEffort+"&frenchReadingAchievement="+frenchReadingAchievement+
				"&frenchReadingEffort="+frenchReadingEffort+"&frenchWritingAchievement="+frenchWritingAchievement+
				"&frenchWritingEffort="+frenchWritingEffort+"&frenchTeacherClassComments="+
				frenchTeacherClassComments;
				
				$.ajax({
				    url: 'savenarrationfrenchkeystagetwo.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){				    		
				    		$('#textdespfrench').html(response);					
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
