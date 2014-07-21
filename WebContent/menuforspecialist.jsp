<table border="1" width="100%">
	<tr>
		<td width="260">Select Category :</td>
		<td>
			<select name="slctcategory" id="slctcategory" style="width:100%" >
				<option value="" selected="selected">--Select--</option>
				<option value="amharic_key_stage_two">Amharic Key Stage Two</option>
				<option value="french_key_stage_two">French Key Stage Two</option>
				<option value="ict_key_stage_one">ICT Key Stage One</option>
				<option value="ict_key_stage_two">ICT Key Stage Two</option> 
				<option value="music_key_stage_one">Music Key Stage One</option>
				<option value="music_key_stage_two">Music Key Stage Two</option>
				<option value="physical_education_key_stage_one">Physical Education Key Stage One</option>
				<option value="physical_education_key_stage_two">Physical Education Key Stage Two</option>				
			</select>
		</td>
	</tr>
</table>
<div id="showreception"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctcategory').click(function(){
			var selectedCategory = $('#slctcategory').val();
			if(selectedCategory != ""){
				if(selectedCategory == "ict_key_stage_one"){
					$('#showreception').load("ictspecialcoursekeystageone.jsp");
				}else if(selectedCategory == "ict_key_stage_two"){
					$('#showreception').load("ictspecialcoursekeystagetwo.jsp");
				}else if(selectedCategory == "physical_education_key_stage_one"){
					$('#showreception').load("physicaleducationkeystageone.jsp");
				}else if(selectedCategory == "physical_education_key_stage_two"){
					$('#showreception').load("physicaleducationkeystagetwo.jsp");
				}else if(selectedCategory == "amharic_key_stage_two"){
					$('#showreception').load("amharicspecialitykeystagetwo.jsp");
				}else if(selectedCategory == "french_key_stage_two"){
					$('#showreception').load("frenchspecialitykeystagetwo.jsp");
				}else if(selectedCategory == "music_key_stage_one"){
					$('#showreception').load("musicspecialcoursekeystageone.jsp");
				}else if(selectedCategory == "music_key_stage_two"){
					$('#showreception').load("musicspecialcoursekeystagetwo.jsp");
				}
			}
		});
	});//end document.ready function
</script>

