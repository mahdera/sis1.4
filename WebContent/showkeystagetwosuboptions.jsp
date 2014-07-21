<table border="0" width="100%" style="background:#eee">
	<tr>
		<td width="30%">Select Key Stage Two Sub Options:</td>
		<td>
			<select name="slctkeystagetwosuboptions" id="slctkeystagetwosuboptions" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<option value="lower_key_stage_two_mid_year_report">Lower Key Stage Two Mid Year Report</option>
				<option value="lower_key_stage_two_end_year_report">Lower Key Stage Two End Year Report</option>
				<option value="upper_key_stage_two_mid_year_report_year_5">Upper Key Stage Two Mid Year Report (Year 5)</option>
				<option value="upper_key_stage_two_end_year_report_year_5">Upper Key Stage Two End Year Report (Year 5)</option>
				<option value="upper_key_stage_two_mid_year_report_year_6">Upper Key Stage Two Mid Year Report (Year 6)</option>
				<option value="upper_key_stage_two_end_year_report_year_6">Upper Key Stage Two End Year Report (Year 6)</option>				
			</select>
		</td>
	</tr>
</table>
<div id="keyStageTwoReportDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctkeystagetwosuboptions').click(function(){
			var selectedReportType = $('#slctkeystagetwosuboptions').val();
			if(selectedReportType != ""){
				if(selectedReportType == "lower_key_stage_two_mid_year_report"){
					$('#keyStageTwoReportDiv').load("showlowerkeystagetwomidyearclassandacademicyearselectorbar.jsp");
				}else if(selectedReportType == "lower_key_stage_two_end_year_report"){
					$('#keyStageTwoReportDiv').load("showlowerkeystagetwoendyearclassandacademicyearselectorbar.jsp");
				}else if(selectedReportType == "upper_key_stage_two_mid_year_report_year_5"){
					$('#keyStageTwoReportDiv').load("showupperkeystagetwomidyear5classandacademicyearselectorbar.jsp");
				}else if(selectedReportType == "upper_key_stage_two_end_year_report_year_5"){
					$('#keyStageTwoReportDiv').load("showupperkeystagetwoendyear5classandacademicyearselectorbar.jsp");
				}else if(selectedReportType == "upper_key_stage_two_mid_year_report_year_6"){
					$('#keyStageTwoReportDiv').load("showupperkeystagetwomidyear6classandacademicyearselectorbar.jsp");
				}else if(selectedReportType == "upper_key_stage_two_end_year_report_year_6"){
					$('#keyStageTwoReportDiv').load("showupperkeystagetwoendyear6classandacademicyearselectorbar.jsp");
				}
			}
		});
	});//end document.ready function
</script>