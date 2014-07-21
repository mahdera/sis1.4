<table border="0" width="100%" style="background:#eee">
	<tr>
		<td width="30%">Select Early Years Sub Options:</td>
		<td>
			<select name="slctearlyyearssuboptions" id="slctearlyyearssuboptions" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<option value="nursery_mid_year_report">Nursery Mid Year Report</option>
				<option value="nursery_end_year_report">Nursery End Year Report</option>
				<option value="reception_mid_year_report">Reception Mid Year Report</option>
				<option value="reception_end_year_report">Reception End Year Report</option>
			</select>
		</td>
	</tr>
</table>
<div id="earlyYearsSubOptionsDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctearlyyearssuboptions').change(function(){
			var selectedReportType = $('#slctearlyyearssuboptions').val();
			if(selectedReportType != ""){
				if(selectedReportType == "nursery_mid_year_report"){
					$('#earlyYearsSubOptionsDiv').load('shownurserymidyearclassandacademicyearselectorbar.jsp');
				}else if(selectedReportType == "nursery_end_year_report"){
					$('#earlyYearsSubOptionsDiv').load('shownurseryendyearclassandacademicyearselectorbar.jsp');
				}else if(selectedReportType == "reception_mid_year_report"){
					$('#earlyYearsSubOptionsDiv').load('showreceptionmidyearclassandacademicyearselectorbar.jsp');
				}else if(selectedReportType == "reception_end_year_report"){
					$('#earlyYearsSubOptionsDiv').load('showreceptionendyearclassandacademicyearselectorbar.jsp');
				}
			}
		});
	});//end document.ready function
</script>