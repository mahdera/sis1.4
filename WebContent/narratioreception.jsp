<script type="text/javascript" src="js/rptvalidation.js">
</script>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>



<% 
String sid=request.getParameter("id");
List<EarlyYearsEvaluation> helloList = EarlyYearsEvaluation.receptionendofyearassessment(sid);
Iterator<EarlyYearsEvaluation> helloItr = helloList.iterator();
%>

<%
		int ctr=0;
			while(helloItr.hasNext()){
				EarlyYearsEvaluation endyear = helloItr.next();		
				
				if(endyear.getBpex()!="" || endyear.getBpex()!=null)
				{
					ctr=1;					
				}
			}
%>
<%
if(ctr==1)
{
	List<EarlyYearsEvaluation> helloList2 = EarlyYearsEvaluation.receptionendofyearassessment(sid);
	Iterator<EarlyYearsEvaluation> helloItr2 = helloList.iterator();
	while(helloItr2.hasNext()){
		EarlyYearsEvaluation end = helloItr2.next();
		
%>

<table border="0" width="100%" >
<tr>
<th colspan="3" >Characteristics of effective learning</th>
<th colspan="3" >How (name of child) learns</th>
</tr>
<tr>
<td colspan="3" valign="top">By Playing and exploring :</td>
<td colspan="3" valign="middle"><textarea name="txtbpe" cols="80" rows="10"  id="txtbpe" ><%=end.getBpex()%></textarea></td>

</tr>


<tr>
<td colspan="3" valign="top">Through active learning :</td>
<td colspan="3" valign="middle"><textarea name="txttal" cols="80" rows="10"  id="txttal" ><%=end.getTal()%></textarea></td>

</tr>


<tr>
<td colspan="3" valign="top">By creating and thinking critically :</td>
<td colspan="3" valign="middle"><textarea name="txtbctc" cols="80" rows="10"  id="txtbctc" ><%=end.getBctc() %></textarea></td>

</tr>

<tr>
<td colspan="6" align="center" valign="middle"><br /><input type="button" name="btnsave" value="save" onclick="javascript:receptionendofyearassessmentupdate(document.getElementById('txtsid').value,document.getElementById('txtbpe').value,document.getElementById('txttal').value,document.getElementById('txtbctc').value,display2)"/></td>
</tr>

</table>
<%
}
}
	else if(ctr==0)
	{
	%>

<table border="0" width="100%">
<tr>
<th colspan="3" >Characteristics of effective learning</th>
<th colspan="3" valign="middle">How (name of child) learns</th>
</tr>
<tr>
<td colspan="3" valign="top">By Playing and exploring :</td>
<td colspan="3" valign="middle"><textarea name="txtbpe" cols="80" rows="10"  id="txtbpe" ></textarea></td>

</tr>


<tr>
<td colspan="3" valign="top">Through active learning : 
</td>
<td colspan="3" valign="middle"><textarea name="txttal" cols="80" rows="10"  id="txttal" ></textarea></td>

</tr>


<tr>
<td colspan="3" valign="top">By creating and thinking critically : 

</td>
<td colspan="3" valign="middle"><textarea name="txtbctc" cols="80" rows="10"  id="txtbctc" ></textarea></td>

</tr>

<tr>
<td colspan="6" align="center" valign="middle"><br /><input type="button" name="btnsave" value="Save" onclick="javascript:receptionendofyearassessment(document.getElementById('txtsid').value,document.getElementById('txtbpe').value,document.getElementById('txttal').value,document.getElementById('txtbctc').value,display2)"/></td>
</tr>

</table>
<%}%>
