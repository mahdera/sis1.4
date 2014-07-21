
<table border="1" width="100%">
	<tr>
		<td>Select Category :</td>
		<td>
			<select name="slctcategory" id="slctcategory" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<option value="nurserymidyearreport">Nursery Mid-Year Report</option>
				<option value="nurseryendyearreport">Nursery End-Year Report</option>
				<option value="receptionmidyearreport">Reception Mid-Year Report</option>
				<option value="receptionendyearreport">Reception End-Year Report</option>			
			</select>
		</td>
	</tr>
</table>
<div id="showreception"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctcategory').change(function(){
			var selectedCategory = $('#slctcategory').val();
			if(selectedCategory != ""){
				if(selectedCategory == "nurserymidyearreport"){
					$('#showreception').load("nurserymidyearreport.jsp");
				}else if(selectedCategory == "nurseryendyearreport"){
					$('#showreception').load("nurseryendyearreport.jsp");
				}else if(selectedCategory == "receptionmidyearreport"){
					$('#showreception').load("receptionmidyearreport.jsp");
				}else if(selectedCategory == "receptionendyearreport"){
					$('#showreception').load("receptionendyearreport.jsp");
				}
			}
		});
	});//end document.ready function
</script>

