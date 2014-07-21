<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
	List<Section1> helloList = Section1.getAllSection();
	Iterator<Section1> helloItr = helloList.iterator();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title> 
<script type="text/javascript" src="js/Ajax.js"></script>
<script type="text/javascript" src="js/rptvalidation.js"></script>


</head>
<body>

<div id="Display" style="width:100%; border:dotted 1px;">
<center><font size="6"><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
	<center><font size="6"><b>&#4659;&#4757;&#4853;&#4942;&#4653;&#4853; &#4770;&#4757;&#4720;&#4653;&#4755;&#4669;&#4755;&#4621; &#4725;&#4637;&#4613;&#4653;&#4725;&#4708;&#4725;</b></font></center>
	<center><b>Reception End of Year Assessment</b></center>
	<table width="100%" border="1">
<tr>
<td colspan="9" align="center" style="border:none"><B>KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS</B></td>
</tr>
<tr>
<td colspan="6" align="center"><B>Evaluation</B></td>
</tr>
<tr>
<td width="9%"><B>1</B></td>
<td width="21%"><B>Emerging</B></td>
<td width="3%"><B>2</B></td>
<td width="33%"><B>Expected</B></td>
<td width="3%"><B>3</B></td>
<td width="31%"><B>Exceeding</B></td>
</tr>

</table>
	<br />	
	
<form name="a">
	
<table border="1" width="100%" cellpadding="10">
<tr>

<th width="115" height="54" align="center">Class: </th>
<th width="164" align="center">
<div align="center"> <select id="txtsection" onChange="namedforearly(this.value)">
 <option value="">Select Class</option>
 <%
			while(helloItr.hasNext()){
				Section1 h = helloItr.next();
	%>
 <option value="<%=h.getId()%>"><%=h.getSection_name()%></option>
 <%
			}
	%>
 </select></div>
 </th>
 <th width="69" align="center">Name: </th>
<th width="260" align="center"><div id="named" align="center"></div></th>
<th width="92" align="center">Date of Birth: </th>
<th width="152" align="center"><div id="dated" align="center"></div></th>
</tr>

<tr>
<td colspan="6"><center><div id="error"> </div></center></td>
</tr>
 </table>
 <br />
 <div id="formdisplay"></div>
   </form>  
</div>

</body>
</html>