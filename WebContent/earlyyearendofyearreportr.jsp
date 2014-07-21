<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<head><script type="text/javascript" src="js/Ajax.js"></script></head>
<%
	List<Section1> helloList = Section1.getAllSection();
	Iterator<Section1> helloItr = helloList.iterator();
%>

<form name="a">	
<table border="0" width="100%" align="center">
<tr>
<td width="156" height="45" colspan="2"><B>Class:</B> </td>
<td width="172" align="center"><div align="center"> 
<select id="txtsection" style="width:100%">
 <option value="">Select Class</option>
 <%
			while(helloItr.hasNext()){
				Section1 h = helloItr.next();
	%>
 <option value="<%=h.getId()%>"><%=h.getSection_name()%></option>
 <%
			}//end while loop
	%>
 </select></div>
 </td>
 <td width="59"><B>Name: </B></td>
<td width="200" align="center"><div id="named" align="center"></div></td>
<td width="173"><b>DOB: </b></td>
<td width="200" align="center"><div id="dated" align="center"></div></td>
<td align="center">
	<input type="button" value="SHOW" id="btnshowearlyyearendofyearreport"/>
</td>
</tr>
</table>
<br/>
<div id="printdisplay"></div>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsection').change(function(){
			var id = $('#txtsection').val();
			if(id != ""){
				$('#named').load("namediplayforearlyyearreport.jsp?id="+id);
			}
		});
		
		$('#btnshowearlyyearendofyearreport').click(function(){
			var sectionId = $('#txtsection').val();
			var studentId = $('#txtsid').val();
			var dob = $('#txtdob').val();
			
			if(sectionId != "" && studentId != "" && dob != ""){
				$('#printdisplay').load("showearlyyearendofyearreport.jsp?secid="+sectionId+"&sid="+studentId+"&dob="+dob);
			}
		});
	});//end document.ready function
</script>