<table border="0" width="100%" style="background:#eee">
	<tr>
		<td width="30%">Select Key Stage One Sub Options:</td>
		<td>
			<select name="slctkeystageonesuboptions" id="slctkeystageonesuboptions" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<option value="key_stage_one_mid_year_report">Key Stage One Mid Year Report</option>
				<option value="key_stage_one_end_year_report">Key Stage One End Year Report</option>				
			</select>
		</td>
	</tr>
</table>
<div id="keyStageOneReportDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctkeystageonesuboptions').change(function(){
			var selectedReportType = $('#slctkeystageonesuboptions').val();
			if(selectedReportType != ""){
				if(selectedReportType == "key_stage_one_mid_year_report"){
					$('#keyStageOneReportDiv').load("showkeystageonemidyearclassandacademicyearselectorbar.jsp");
				}else if(selectedReportType == "key_stage_one_end_year_report"){
					$('#keyStageOneReportDiv').load("showkeystageoneendyearclassandacademicyearselectorbar.jsp");
				}
			}
		});
	});//end document.ready function
</script>