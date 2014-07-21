<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form style="background:#fff">
	<div id="errorDiv"></div>
	<table border="0" width="100%">
		<tr>
			<td style="background:#eee;font-weight:bolder">
				Personal, Social and Emotional Development
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="textareaearlyyearspersonalsocialandemotionaldevelopment" id="textareaearlyyearspersonalsocialandemotionaldevelopment" class="jqte-test" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td style="background:#eee;font-weight:bolder">
				Communication and Language
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="textareaearlyyearscommunicationandlanguage" id="textareaearlyyearscommunicationandlanguage" class="jqte-test" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td style="background:#eee;font-weight:bolder">
				Physical Development
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="textareaearlyyearsphysicaldevelopment" id="textareaearlyyearsphysicaldevelopment" class="jqte-test" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td style="background:#eee;font-weight:bolder">
				Literacy
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="textareaearlyyearsliteracy" id="textareaearlyyearsliteracy" class="jqte-test" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td style="background:#eee;font-weight:bolder">
				Mathematics
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="textareaearlyyearsmathematics" id="textareaearlyyearsmathematics" class="jqte-test" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td style="background:#eee;font-weight:bolder">
				Understanding the World
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="textareaearlyyearsunderstandingtheworld" id="textareaearlyyearsunderstandingtheworld" class="jqte-test" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td style="background:#eee;font-weight:bolder">
				Expressive Arts and Design
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="textareaearlyyearsexpressiveartsanddesign" id="textareaearlyyearsexpressiveartsanddesign" class="jqte-test" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td style="background:#eee;font-weight:bolder">
				General Comments
			</td>
		</tr>
		<tr>
			<td>
				<textarea name="textareaearlyyearsgeneralcomments" id="textareaearlyyearsgeneralcomments" class="jqte-test" rows="10" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td align="right">
				<input type="button" value="Save" class="input-submit" id="btnsave"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('.jqte-test').jqte();			
		// settings of status
		var jqteStatus = true;
		$(".status").click(function()
		{
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({"status" : jqteStatus})
		});
		
		$('#btnsave').click(function(){
			var sectionId = $('#txtsection').val();
			var studentIdNumber = $('#txtsid').val();
			var personalSocialEmotionalDevelopment = $('#textareaearlyyearspersonalsocialandemotionaldevelopment').val();
			var communicationAndLanguage = $('#textareaearlyyearscommunicationandlanguage').val();
			var physicalDevelopment = $('#textareaearlyyearsphysicaldevelopment').val();
			var literacy = $('#textareaearlyyearsliteracy').val();
			var mathematics = $('#textareaearlyyearsmathematics').val();
			var understandingTheWorld = $('#textareaearlyyearsunderstandingtheworld').val();
			var expressiveArtsAndDesign = $('#textareaearlyyearsexpressiveartsanddesign').val();
			var generalComments = $('#textareaearlyyearsgeneralcomments').val();
			
			if(sectionId != "" && studentIdNumber != "" && personalSocialEmotionalDevelopment != "" &&
					communicationAndLanguage != "" && physicalDevelopment != "" &&
					literacy != "" && mathematics != "" && understandingTheWorld != "" &&
					expressiveArtsAndDesign != "" && generalComments != ""){
				
				var dataString = "sectionId="+sectionId+"&studentIdNumber="+
				studentIdNumber+"&personalSocialEmotionalDevelopment="+personalSocialEmotionalDevelopment+
				"&communicationAndLanguage="+communicationAndLanguage+"&physicalDevelopment="+physicalDevelopment+
				"&literacy="+literacy+"&mathematics="+mathematics+"&understandingTheWorld="+understandingTheWorld+
				"&expressiveArtsAndDesign="+expressiveArtsAndDesign+"&generalComments="+generalComments;
				
				$.ajax({
				    url: 'savenarriationearlyyearendyearevaluation.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){				    		
				    		$('#textarea').html(response);					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Empty input data! Please enter all required data fields and try again!</p>");	
			}
		});
	});//end document.ready function
</script>