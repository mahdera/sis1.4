<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String sid = request.getParameter("id");
	List<Specialityclas> helloList = Specialityclas.ictselect(sid);
	Iterator<Specialityclas> helloItr = helloList.iterator();
%>
<form style="background:#ffffff">
	<div id="errorDiv"></div>
	<table border="1" width="100%">		
		<tr style="font-weight:bolder;background:#eee;font-size:13pt">
			<td colspan="3" align="left">PHYSICAL EDUCATION (PE) </td>
		</tr>
		<tr>
			<td colspan="2">
				<table border="0" width="100%">
					<tr style="font-weight:bolder;background:#eee;">
						<td>CURRICULUM AREA</td>
						<td>ACHIEVEMENT</td>
						<td>EFFORT</td>						
					</tr>
					<tr>	
						<td>Personal Organisation</td>
						<td>
							<select name="slctpersonalorganizationachievement" id="slctpersonalorganizationachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctpersonalorganizationeffort" id="slctpersonalorganizationeffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>	
						</td>						
					</tr>
					<tr>	
						<td>Individual Skills </td>
						<td>
							<select name="slctindividualskillsachievement" id="slctindividualskillsachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctindividualskillseffort" id="slctindividualskillseffort" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</td>						
					</tr>
					<tr>	
						<td>Team Work</td>
						<td>
							<select name="slctteamworkachievement" id="slctteamworkachievement" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="E">E</option>
								<option value="S">S</option>
								<option value="M">M</option>
								<option value="N">N</option>
							</select>
						</td>
						<td>
							<select name="slctteamworkeffort" id="slctteamworkeffort" style="width:100%">
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
							<textarea name="textareaphysicaleducationteacherclasscomments" id="textareaphysicaleducationteacherclasscomments" class="jqte-test"></textarea>		
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
			var personalOrganizationEffort = $('#slctpersonalorganizationeffort').val();			
			var individualSkillsEffort = $('#slctindividualskillseffort').val();			
			var teamWorkEffort = $('#slctteamworkeffort').val();			
			var physicalEducationClassTeacherComments = $('#textareaphysicaleducationteacherclasscomments').val();
			var personalOrganizationAchievement = $('#slctpersonalorganizationachievement').val();
			var individualSkillsAchievement = $('#slctindividualskillsachievement').val();
			var teamWorkAchievement = $('#slctteamworkachievement').val();
			
			if(sectionId != "" && studentIdNumber != "" && teacherId != "" && personalOrganizationEffort != "" &&
					individualSkillsEffort != "" && teamWorkEffort != "" && 
					physicalEducationClassTeacherComments != "" && personalOrganizationAchievement != "" &&
					individualSkillsAchievement != "" && teamWorkAchievement != ""){
				var dataString = "sectionId="+sectionId+"&studentIdNumber="+studentIdNumber+
				"&teacherId="+teacherId+"&personalOrganizationEffort="+personalOrganizationEffort+
				"&individualSkillsEffort="+individualSkillsEffort+"&teamWorkEffort="+
				teamWorkEffort+"&physicalEducationClassTeacherComments="+physicalEducationClassTeacherComments+
				"&personalOrganizationAchievement="+personalOrganizationAchievement+
				"&individualSkillsAchievement="+individualSkillsAchievement+
				"&teamWorkAchievement="+teamWorkAchievement;
				
				$.ajax({
				    url: 'savenarrationphysicaleducationkeystagetwo.jsp',		
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
