<table border="1" width="100%">
<tr>
<td width="26%">Select Category :</td>
<td>
<select name="slctreceptioncategory" id="slctreceptioncategory" style="width:100%">
	<option value="" selected="selected">--Select--</option>
	<option value="receptionmidyearreport1">Reception Mid-Year Report</option> 
	<option value="Profile 11">Profile 1-Reception End of Year Assessment</option>
	<option value="Profile 22">Profile 2-Reception End of Year Assessment</option>
	<option value="Early Year End of Year Report1">Early Year End of Year Report</option>
	<option value="reception End of Year class summary">Reception End of Year Assessment Class Summary</option>	
</select>
</td>
</tr>
</table>
<div id="showreceptiondetail"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctreceptioncategory').change(function(){
			var menu = $('#slctreceptioncategory').val();
			if(menu != ""){
				if(menu == "receptionmidyearreport1"){
					$('#showreceptiondetail').load("reportforreceptionmidyearreport.jsp");
				}else if(menu == "Profile 11"){
					$('#showreceptiondetail').load("profile1report.jsp");
				}else if(menu == "Profile 22"){
					$('#showreceptiondetail').load("profile2report.jsp");
				}else if(menu == "Early Year End of Year Report1"){
					$('#showreceptiondetail').load("earlyyearendofyearreportr.jsp");
				}else if(menu == "reception End of Year class summary"){
					$('#showreceptiondetail').load("receptionendofyearassessmentprofile2.jsp");
				}
			}
		});
	});//end documnet.ready function
</script>
