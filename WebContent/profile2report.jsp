<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
	List<Section1> helloList = Section1.getAllSection();
	Iterator<Section1> helloItr = helloList.iterator();
	
	List<Acadamicyear> acy=Acadamicyear.accay();
	Iterator<Acadamicyear> acyItr = acy.iterator();
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/Ajax.js"></script>
</head>
<body>
<form name="a">	
	
<table border="0" width="100%" align="center">
<tr>

<td colspan="2">Class: </td>
<td align="center"><div align="center"> 
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
 <td>Name: </td>
<td width="215" align="center"><div id="named" align="center"></div></td>
<td width="107">D.O.B: </td>
<td width="241" align="center"><div id="dated" align="center"></div></td>
<td width="93" align="center"><input type="button" value="SHOW" id="btnshowprofile2report"/></td>
</tr>
</table>
<br>
<div id="printdisplay"></div>
</form>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsection').change(function(){
			var id = $('#txtsection').val();
			if(id != ""){
				$('#named').load("namediplayforprofile2.jsp?id="+id);
			}
		});
		
		$('#btnshowprofile2report').click(function(){
			var sectionId = $('#txtsection').val();
			var studentId = $('#txtsid').val();
			var dob = $('#txtdob').val();
			
			if(sectionId != "" && studentId != "" && dob != ""){				
				$('#printdisplay').load("showprofile2report.jsp?secid="+sectionId+"&sid="+studentId+"&dob="+dob);
			}
		});
	});//end document.ready function
</script>
</html>