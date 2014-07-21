<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String sid = request.getParameter("id");
	List<Specialityclas> helloList = Specialityclas.ictselect(sid);
	Iterator<Specialityclas> helloItr = helloList.iterator();
%>
<form style="background:#fff">
	<div id="errorDiv"></div>
	<table border="1" width="100%">		
		<tr style="font-weight:bolder;background:#eee;font-size:13pt">
			<td colspan="3" align="left">MUSIC</td>
		</tr>
		<tr>
			<td colspan="2">
				<table border="0" width="100%">
					<tr style="font-weight:bolder;background:#eee;">
						<td>CURRICULUM AREA</td>
						<td>EFFORT</td>						
					</tr>
					<tr>	
						<td>Performing</td>
						<td>
							<select name="slctperformingeffort" id="slctperformingeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>	
						</td>						
					</tr>
					<tr>	
						<td>Creative and Listening skills </td>
						<td>
							<select name="slctcreatingandlisteningskillseffort" id="slctcreatingandlisteningskillseffort" style="width:100%">
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
				<table border="0" width="100%">
					<tr style="font-weight:bolder;background:#eeeeee">
						<td>SPECIALIST TEACHER'S COMMENTS</td>
					</tr>
					<tr>
						<td>
							<textarea name="textareamusicteacherclasscomments" id="textareamusicteacherclasscomments" class="jqte-test"></textarea>		
						</td>
					</tr>
				</table>				
			</td>
		</tr>		
		<tr>
			<td colspan="3" align="right">
				<input type="button" value="Save" class="input-submit" id="btnsave"/>
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
			var performingEffort = $('#slctperformingeffort').val();
			var creatingAndListeningSkillEffort = $('#slctcreatingandlisteningskillseffort').val();
			var musicClassTeacherComments = $('#textareamusicteacherclasscomments').val();			
			
			if(sectionId != "" && studentIdNumber != "" && teacherId != "" && performingEffort != "" &&
					creatingAndListeningSkillEffort != "" && musicClassTeacherComments != ""){
				var dataString = "sectionId="+sectionId+"&studentIdNumber="+studentIdNumber+
				"&teacherId="+teacherId+"&performingEffort="+performingEffort+
				"&creatingAndListeningSkillEffort="+creatingAndListeningSkillEffort+
				"&musicClassTeacherComments="+musicClassTeacherComments;
				
				$.ajax({
				    url: 'savenarrationmusickeystageone.jsp',		
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
