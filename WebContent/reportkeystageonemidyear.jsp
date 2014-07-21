<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<head><script type="text/javascript" src="js/Ajax.js"></script></head>
<%
	List<Section1> helloList = Section1.getAllSection();
	Iterator<Section1> helloItr = helloList.iterator();
%>

<form name="a">	
<table border="1" width="100%" align="center">
<tr>
<td width="156" height="45" colspan="2"><B>Class:</B> </td>
<td width="172" align="center"><div align="center"> <select id="txtsection" onchange="midyearreportforksoreporta(this.value)">
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
 <td width="59"><B>Name: </B></td>
<td width="200" align="center"><div id="named" align="center"></div></td>
<td width="173"><b>Age: </b></td>
<td width="200" align="center"><div id="age" align="center"></div></td>
<td align="center"><input type="button" value="SHOW" onClick="javascript:midyearreportforksoreport(document.getElementById('txtsection').value,document.getElementById('txtsid').value,document.getElementById('txtage').value)"/></td>
</tr>
</table>
<br/>
<div id="printdisplay"></div>
</form>
