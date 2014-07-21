
<table border="1" width="100%">
	<tr>
		<td>Select Category :</td>
		<td>
		<select name="slctcategory" id="slctcategory" style="width:100%">
			<option value="" selected="selected">--Select--</option>
			<option value="nurserymidyearreport">Nursery Mid-Year Report</option>
			<option value="nurseryendyearreport">Nursery End-Year Report</option>
			<option value="receptionmidyearreport">Reception Mid-Year Report</option>
			<option value="receptionmidyearreport">Reception End-Year Report</option>			
		</select>
		</td>
	</tr>
</table>
<div id="showreception"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctcategory').change(function(){
			$('#showreception').load('report1.jsp');
		});
	});//end document.ready function
</script>

