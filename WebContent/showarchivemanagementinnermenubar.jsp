<table border="0" width="100%">
	<tr style="background:#eee;font-weight:bolder;text-align:center">
		<td><a href="#.jsp" id="addRecordToArchiveLink">Add Record To Archive</a></td>
		<td><a href="#.jsp" id="viewArchiveListLink">View Archive List</a></td>
	</tr>
</table>
<div id="archiveInnerDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addRecordToArchiveLink').click(function(){
			$('#archiveInnerDiv').load("showlistofstudentsforarchivemanagementselectorbar.jsp");
		});
		
		$('#viewArchiveListLink').click(function(){
			$('#archiveInnerDiv').load("showlistofstudentsinthearchiveselectorbar.jsp");
		});
	});//end document.ready function
</script>