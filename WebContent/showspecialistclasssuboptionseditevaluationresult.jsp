<table border="0" width="100%" style="background:#eee">
	<tr>
		<td width="30%">Select Specialist Class Sub Options:</td>
		<td>
			<select name="slctspecialistclasssuboptions" id="slctspecialistclasssuboptions" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<option value="amharic_key_stage_two_year_report">Amharic Key Stage Two Report</option>
				<option value="french_key_stage_two_year_report">French Key Stage Two Report</option>
				<option value="ict_key_stage_one_report">ICT Key Stage One Report</option>
				<option value="ict_key_stage_two_report">ICT Key Stage Two Report</option>
				<option value="music_key_stage_one_report">Music Key Stage One Report</option>
				<option value="music_key_stage_two_report">Music Key Stage Two Report</option>
				<option value="physical_education_key_stage_one_report">Physical Education Key Stage One Report</option>
				<option value="physical_education_key_stage_two_report">Physical Education Key Stage Two Report</option>
			</select>
		</td>
	</tr>
</table>
<div id="specialistReportDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctspecialistclasssuboptions').change(function(){
			var selectedReportType = $('#slctspecialistclasssuboptions').val();		
			if(selectedReportType != ""){
				if(selectedReportType == "amharic_key_stage_two_year_report"){
					$('#specialistReportDiv').load("showamharickeystagetwoclassandacademicyearselectorbareditresult.jsp");
				}else if(selectedReportType == "french_key_stage_two_year_report"){
					$('#specialistReportDiv').load("showfrenchkeystagetwoclassandacademicyearselectorbareditresult.jsp");
				}else if(selectedReportType == "ict_key_stage_one_report"){
					$('#specialistReportDiv').load("showictkeystageoneclassandacademicyearselectorbareditresult.jsp");
				}else if(selectedReportType == "ict_key_stage_two_report"){
					$('#specialistReportDiv').load("showictkeystagetwoclassandacademicyearselectorbareditresult.jsp");
				}else if(selectedReportType == "music_key_stage_one_report"){
					$('#specialistReportDiv').load("showmusickeystageoneclassandacademicyearselectorbareditresult.jsp");
				}else if(selectedReportType == "music_key_stage_two_report"){
					$('#specialistReportDiv').load("showmusickeystagetwoclassandacademicyearselectorbareditresult.jsp");
				}else if(selectedReportType == "physical_education_key_stage_one_report"){
					$('#specialistReportDiv').load("showphysicaleducationkeystageoneclassandacademicyearselectorbareditresult.jsp");
				}else if(selectedReportType == "physical_education_key_stage_two_report"){
					$('#specialistReportDiv').load("showphysicaleducationkeystagetwoclassandacademicyearselectorbareditresult.jsp");
				}
			}
		});
	});//end document.ready function
</script>