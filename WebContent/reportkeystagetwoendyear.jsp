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
<title>Insert title here</title>
<script type="text/javascript" src="js/Ajax.js"></script>
<script type="text/javascript" src="js/rptvalidation.js"></script>
</head>
<body>
<form name="a">	
	
<table border="0" width="100%" align="center">
<tr>

<td colspan="2">Class: </td>
<td align="center"><div align="center"> <select id="txtsection" onChange="midyearreportforpp3(this.value)">
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
 </td>
 <td>Name: </td>
<td width="215" align="center"><div id="named" align="center"></div></td>
<td width="107">D.O.B: </td>
<td width="241" align="center"><div id="dated" align="center"></div></td>
<td width="93" align="center"><input type="button" value="SHOW" onClick="javascript:showkeystagetwoendeyear(document.getElementById('txtsection').value,document.getElementById('txtsid').value,document.getElementById('txtdob').value)"/></td>
</tr>
</table>
<br>
<div id="printdisplay"></div>
</form>
</body>
</html>