<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<div id="errorDiv"></div>
	<table border="0" width="100%">
		<tr>
			<td>
				<textarea name="textareanurserymidyearcomment" id="textareanurserymidyearcomment" class="jqte-test" rows="10" style="width:100%"></textarea>
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
			var nurseryMidYearComment = $('#textareanurserymidyearcomment').val();
			
			if(sectionId != "" && studentIdNumber != "" && nurseryMidYearComment != ""){
				var dataString = "sectionId="+sectionId+"&studentIdNumber="+
				studentIdNumber+"&nurseryMidYearComment="+nurseryMidYearComment;
				
				$.ajax({
				    url: 'savenarriationnurserymidyear.jsp',		
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