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
<script type="text/javascript" src="js/printe.js"></script>

</head>
<body>

<div id="Display" style="width:1000px; border:dotted 1px;" >
	<font size="6"><center><b>SANDFORD INTERNATIONAL SCHOOL</b></center></font>
	<center>(Administered under Sanford International Endowment)</center>
	<font size="6"><center><b>&#4659;&#4757;&#4853;&#4942;&#4653;&#4853; &#4770;&#4757;&#4720;&#4653;&#4755;&#4669;&#4755;&#4621; &#4725;&#4637;&#4613;&#4653;&#4725;&#4708;&#4725;</b></center></font>
	<center>(&#4704;&#4659;&#4757;&#4853;&#4942;&#4653;&#4853; &#4770;&#4757;&#4720;&#4653;&#4755;&#4669;&#4755;&#4621; &#4770;&#4757;&#4854;&#4813;&#4636;&#4757;&#4725; &#4661;&#4653; &#4840;&#4634;&#4720;&#4851;&#4848;&#4653; )</center>
	<center>Reception Mid-year Report</center>
	
	<%
	List<Section1> helloList1 = Section1.getAllSection();
	Iterator<Section1> helloItr1 = helloList.iterator();
%>
	
	<%Section1 v = helloItr1.next(); %>
	<center>January: <%=
	v.getCurentdate()%></center><br />
	
<form name="a">
	
	
<table border="0" width="1000" align="center">
<tr>

<td>Class: </td>
<td> <select id="txtsection">
 <option value="">Select Class</option>
 <%
			while(helloItr.hasNext()){
				Section1 h = helloItr.next();
	%>
 <option  onclick="midyearreportforp(<%=h.getId()%>)" value="<%=h.getId()%>"><%=h.getSection_name()%></option>
 <%
			}
	%>
 </select>
 </td>
 <td>Name: </td>
<td width="200"><div id="named"></div></td>
<td>Date of Birth: </td>
<td width="200"><div id="dated"></div></td>
</tr>


<tr>

</tr>
<tr>
<td colspan="6"><center>&nbsp;<div id="error"></div></center></td>
</tr>

<tr>
<td colspan="2" align="right">comment : </td>
<td colspan="4">
<div id="contenta">


</div>

</td>
</tr>
<tr>
<td colspan=3>Reception Teacher:</td>
<td colspan=3 align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Head of Primary:</td>
</tr>

<tr>
<td colspan=3 align="center"><div id="teacher"></div></td>
<td colspan=3 align="right"><div id="dhead"></div></td>
</tr>
<tr>
<td colspan="6"></td>
</tr>
</table>
	</form>
</div>
<div id="printer" align="right"><a href="" onclick="printDiv('Display')" style="color:#0000FF">Click to print <img src="Image/images.jpeg" width="50" height="50" /></a></div>

</body>
</html>