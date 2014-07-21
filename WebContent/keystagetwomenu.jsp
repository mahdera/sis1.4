
<table border="1" width="100%">
<tr>
<td>Select Category :</td>
<td>
<select name="slctcategory" id="slctcategory" style="width:100%">
	<option value="" selected="selected">--Select--</option>
	<option value="keystagetwomidyear">Lower Key Stage Two Mid-Year Report</option> 
	<option value="keystagetwoendofschool">Lower Key Stage Two End-Year Report</option>
	<option value="upperkeystagetwomidyearyear5">Upper Key Stage Two Mid-Year Report (Year 5)</option> 
	<option value="upperkeystagetwoendofschoolyear5">Upper Key Stage Two End-Year Report (Year 5)</option>
	<option value="upperkeystagetwomidyearyear6">Upper Key Stage Two Mid-Year Report (Year 6)</option> 
	<option value="upperkeystagetwoendofschoolyear6">Upper Key Stage Two End-Year Report (Year 6)</option>					
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
				if(selectedCategory == "keystagetwomidyear"){
					$('#showreception').load("lowerkeystagetwomidyearreport.jsp");
				}else if(selectedCategory == "keystagetwoendofschool"){
					$('#showreception').load("lowerkeystagetwoendyearreport.jsp");
				}else if(selectedCategory == "upperkeystagetwomidyearyear5"){
					$('#showreception').load("upperkeystagetwomidyearyear5.jsp");
				}else if(selectedCategory == "upperkeystagetwoendofschoolyear5"){
					$('#showreception').load("upperkeystagetwoendofschoolyear5.jsp");
				}else if(selectedCategory == "upperkeystagetwomidyearyear6"){
					$('#showreception').load("upperkeystagetwomidyearyear6.jsp");
				}else if(selectedCategory == "upperkeystagetwoendofschoolyear6"){
					$('#showreception').load("upperkeystagetwoendofschoolyear6.jsp");
				}
			}
		});
	});//end document.ready function
</script>

