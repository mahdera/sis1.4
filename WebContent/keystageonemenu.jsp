
<table border="1" width="100%">
<tr>
<td>Select Category :</td>
<td>
<select name="slctcategory" id="slctcategory" style="width:100%">
	<option value="" selected="selected">--Select--</option>
	<option value="keystageonemidyear">Key Stage One Mid-Year Report</option> 
	<option value="keystageoneendofschool">Key Stage one End-Year Report</option>					
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
				if(selectedCategory == "keystageonemidyear"){
					$('#showreception').load('keysatgeonemidyearprimaryscoolreport.jsp');
				}else{
					$('#showreception').load('Keystageoneendyear.jsp');
				}
			}
		});
	});//end document.ready function
</script>

