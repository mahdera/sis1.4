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
		<tr style="background:#eee;font-weight:bolder;font-size:13pt">
			<td colspan="3" align="left">INFORMATION AND COMMUNICATION TECHNOLOGY (ICT) </td>
		</tr>
		<tr>
			<td colspan="2">
				<table border="0" width="100%">
					<tr style="background:#eee;font-weight:bolder">
						<td>CURRICULUM AREA</td>
						<td>ACHIEVEMENT</td>
						<td>EFFORT</td>
					</tr>
					<tr>
						<td>Learning and Application of skills</td>
						<td>
							<select name="slctlearningandapplicationofskillsachievement" id="slctlearningandapplicationofskillsachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctlearningandapplicationofskillseffort" id="slctlearningandapplicationofskillseffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Evaluation Skills</td>
						<td>
							<select name="slctevaluationskillsachievement" id="slctevaluationskillsachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctevaluationskillseffort" id="slctevaluationskillseffort" style="width:100%">
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
					<tr style="background:#eee;font-weight:bolder;">
						<td>SPECIALIST TEACHERS COMMENTS</td>
					</tr>
					<tr>
						<td>
							<textarea name="textareaictclassteachercomments" style="width:100%" id="textareaictclassteachercomments" class="jqte-test"></textarea>
						</td>
					</tr>
				</table>
			</td>
		</tr>	
		<tr>
			<td colspan="4" align="right">
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
			var learningAndApplicationOfSkillsAcheivement = $('#slctlearningandapplicationofskillsachievement').val();
			var learningAndApplicationOfSkillsEffort = $('#slctlearningandapplicationofskillseffort').val();			
			var evaluationSkillsAcheivement = $('#slctevaluationskillsachievement').val();
			var evaluationSkillsEffort = $('#slctevaluationskillseffort').val();
			var ictClassTeacherComments = $('#textareaictclassteachercomments').val();
			
			if(sectionId != "" && studentIdNumber != "" && teacherId != "" && learningAndApplicationOfSkillsAcheivement != "" &&
					learningAndApplicationOfSkillsEffort != "" && evaluationSkillsAcheivement != "" &&
					evaluationSkillsEffort != "" && ictClassTeacherComments != ""){
				var dataString = "sectionId="+sectionId+"&studentIdNumber="+studentIdNumber+
				"&teacherId="+teacherId+"&learningAndApplicationOfSkillsAcheivement="+learningAndApplicationOfSkillsAcheivement+
				"&learningAndApplicationOfSkillsEffort="+learningAndApplicationOfSkillsEffort+
				"&evaluationSkillsAcheivement="+evaluationSkillsAcheivement+"&evaluationSkillsEffort="+
				evaluationSkillsEffort+"&ictClassTeacherComments="+ictClassTeacherComments;
				
				$.ajax({
				    url: 'savenarrationictkeystagetwo.jsp',		
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
