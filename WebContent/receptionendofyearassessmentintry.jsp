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

<div id="save" style="width:100%; border:dotted 1px;" >

	<center><font size="6"><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
	<center><font size="6"><b>&#4659;&#4757;&#4853;&#4942;&#4653;&#4853; &#4770;&#4757;&#4720;&#4653;&#4755;&#4669;&#4755;&#4621; &#4725;&#4637;&#4613;&#4653;&#4725;&#4708;&#4725;</b></font></center>
	<center>EYFS Profile 1 - Reception End of Year Assessment</center>
	
	<% 
	List<Section1> helloList1 = Section1.getAllSection();
	Iterator<Section1> helloItr1 = helloList.iterator();
%>
	
	<%Section1 v = helloItr1.next(); %>
	<center>January: <%=
	v.getCurentdate()%></center><br />
	
<form name="a">
	
	
<table border="0" width="100%" align="center">
<tr>

<th>Class: </th>
<th><div align="center"><select id="txtsection" onchange="midyearreportforp(this.value)">
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
 <th>Name: </th>
<th width="200"><div id="named" align="center"></div></th>
<th>Date of Birth: </th>
<th width="200"><div id="dated" align="center"></div></th>
</tr>

<tr>
<td colspan="6"><center><div id="error">&nbsp;</div></center></td>
</tr>
</table>

<div id="diplayta">
</div>
</form>
</div>

</body>
</html>