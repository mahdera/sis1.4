<script type="text/javascript" src="js/rptvalidation.js">
</script>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>



<% 
String sid=request.getParameter("id");
List<EarlyYearsEvaluation> helloList = EarlyYearsEvaluation.earlyyearendofyearreport(sid);
Iterator<EarlyYearsEvaluation> helloItr = helloList.iterator();
%>

<%
		int ctr=0;
			while(helloItr.hasNext()){
				EarlyYearsEvaluation endyear = helloItr.next();
				
			if(endyear.getPsed()!=null)
				{
					ctr=1;					
				}
			}
%>
<%
if(ctr==0)
{
%>

<table border="0" width="100%">

<tr>
<td>Personal Social and <br />
Emotional Development :</td>
<td colspan="2"><textarea name="txtpsed" cols="30" rows="3"  id="txtpsed" ></textarea></td>

<td> Communication and <br />Language</td>
<td colspan="2"><textarea name="txtcl" cols="30" rows="3"  id="txtcl" ></textarea></td>

</tr>


<tr>
<td>Physical Development</td>
<td colspan="2"><textarea name="txtpd" cols="30" rows="3"  id="txtpd" ></textarea></td>

<td> Mathematics</td>
<td colspan="2"><textarea name="txtmts" cols="30" rows="3"  id="txtmts" ></textarea></td>

</tr>


<tr>
<td>Literacy</td>
<td colspan="2"><textarea name="txtliteracy" cols="30" rows="3"  id="txtliteracy" ></textarea></td>

<td> Understanding the World</td>
<td colspan="2"><textarea name="txtuw" cols="30" rows="3"  id="txtuw" ></textarea></td>

</tr>

<tr>
<td>Expressive Arts and Design</td>
<td colspan="2"><textarea name="txtead" cols="30" rows="3"  id="txtead" ></textarea></td>

<td> General Comment</td>
<td colspan="2"> <textarea name="txtgc" cols="30" rows="3"  id="txtgc" ></textarea></td>

</tr>
<tr>
<td colspan="8" align="center"><br />
<input type="button" value="Save" onclick="earlyyearendofyearrpt(document.getElementById('txtsid').value,document.getElementById('txtpsed').value,document.getElementById('txtcl').value,document.getElementById('txtpd').value,document.getElementById('txtmts').value,document.getElementById('txtliteracy').value,document.getElementById('txtuw').value,document.getElementById('txtead').value,document.getElementById('txtgc').value,displayearlyyearendofyearrpt)"/></td>
</tr>
</table>
<%
}
else if(ctr==1)
{
	List<EarlyYearsEvaluation> helloLista = EarlyYearsEvaluation.earlyyearendofyearreport(sid);
	Iterator<EarlyYearsEvaluation> helloItra = helloList.iterator();
	while(helloItra.hasNext()){
		EarlyYearsEvaluation end = helloItra.next();
%>



<table border="0" width="100%">

<tr>
<td>Personal Social and <br />
Emotional Development :</td>
<td colspan="2"><textarea name="txtpsed" cols="30" rows="3"  id="txtpsed" ><%=end.getPsed()%></textarea></td>

<td> Communication and <br />Language</td>
<td colspan="2"><textarea name="txtcl" cols="30" rows="3"  id="txtcl" ><%=end.getCl()%></textarea></td>

</tr>


<tr>
<td>Physical Development</td>
<td colspan="2"><textarea name="txtpd" cols="30" rows="3"  id="txtpd"><%=end.getPd()%></textarea></td>

<td> Mathematics</td>
<td colspan="2"><textarea name="txtmts" cols="30" rows="3"  id="txtmts" ><%=end.getMath()%></textarea></td>

</tr>


<tr>
<td>Literacy</td>
<td colspan="2"><textarea name="txtliteracy" cols="30" rows="3"  id="txtliteracy" ><%=end.getLit()%></textarea></td>

<td> Understanding the World</td>
<td colspan="2"><textarea name="txtuw" cols="30" rows="3"  id="txtuw" ><%=end.getUw()%></textarea></td>

</tr>

<tr>
<td>Expressive Arts and Design</td>
<td colspan="2"><textarea name="txtead" cols="30" rows="3"  id="txtead" ><%=end.getEad()%></textarea></td>

<td> General Comment</td>
<td colspan="2"> <textarea name="txtgc" cols="30" rows="3"  id="txtgc" ><%=end.getGc() %></textarea></td>

</tr>
<tr>
<td colspan="8" align="center"><br />
<input type="button" value="Save" onclick="earlyyearendofyearrpt(document.getElementById('txtsid').value,document.getElementById('txtpsed').value,document.getElementById('txtcl').value,document.getElementById('txtpd').value,document.getElementById('txtmts').value,document.getElementById('txtliteracy').value,document.getElementById('txtuw').value,document.getElementById('txtead').value,document.getElementById('txtgc').value,displayearlyyearendofyearrpt)"/></td>
</tr>
</table>


<%} }%>

