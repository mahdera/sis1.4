<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
	List<Section1> helloList = Section1.getAllSection();
	Iterator<Section1> helloItr = helloList.iterator();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" media="print" type="text/css" href="css/print.css"/>
<script type="text/javascript" src="js/Ajax.js"></script>
</head>
<body>
<form name="a">		
<table border="0" width="100%" align="center">
<tr>

<td width="71" align="center">Class: </td>
<td width="212"><div align="center">
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
 <td width="53">Name: </td>
<td width="239"><div id="named" align="center"></div></td>
<td width="110">Date of Birth: </td>
<td width="200"><div id="dated" align="center"></div></td>
<td width="85"><input type="button" value="show" id="btnshowreceptionmidyearreport"/></td>
</tr>
</table>
</form>
<br/><br/>
<div id="printdisplay"></div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsection').change(function(){
			var id = $('#txtsection').val();
			if(id != ""){
				$('#named').load("namedisplay11.jsp?id="+id);
			}
		});
		
		$('#btnshowreceptionmidyearreport').click(function(){
			var sectionId = $('#txtsection').val();
			var studentId = $('#txtsid').val();
			var dob = $('#txtdob').val();
			
			if(sectionId != "" && studentId != "" && dob != ""){
				$('#printdisplay').load("showreceptionmidyearreport.jsp?secid="+sectionId+"&sid="+studentId+"&dob="+dob);
			}
		});
	});//end document.ready function
</script>
</html>
