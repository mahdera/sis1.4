<table border="1" width="100%">
<tr>
<td width="30%">Select Category :</td>
<td>
<select name="slctcategory" id="slctcategory" style="width:100%" >
	<option value="" selected="selected">--Select--</option>
	<option value="early_years">Early Years</option> 
	<option value="key_stage_one">Key Stage One</option>
	<option value="key_stage_two">Key Stage Two</option>
	<option value="specialist_class">Specialist Class</option>					
</select>
</td>
</tr>
</table>
<div id="showreception"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctcategory').change(function(){
			var menu = $('#slctcategory').val();
			if(menu != ""){
				if(menu == "early_years"){
					$('#showreception').load("showearlyyearssuboptions.jsp");
				}else if(menu == "key_stage_one"){
					$('#showreception').load("showkeystageonesuboptions.jsp");
				}else if(menu == "key_stage_two"){
					$('#showreception').load("showkeystagetwosuboptions.jsp");
				}else if(menu == "specialist_class"){
					$('#showreception').load("showspecialistclasssuboptions.jsp");
				}
			}
		});
	});//end document.ready function
</script>

