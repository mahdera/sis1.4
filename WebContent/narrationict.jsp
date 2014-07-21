<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
String sid = request.getParameter("id");
List<Specialityclas> helloList = Specialityclas.ictselect(sid);
Iterator<Specialityclas> helloItr = helloList.iterator();
%>

<% 
int ctr=0;
while(helloItr.hasNext()){
	Specialityclas sc = helloItr.next();
	
	if(sc.getLasa()!=null)
	{
		ctr=1;					
	}
}
%>

<%
if(ctr==0)
{
%>
<table border="1" width="100%">
<tr>
	<th colspan="2">CURRICULUM AREA</th>
	<th>ACHIEVEMENT</th>
	<th>EFFORT</th>
	<th colspan="5">SPECIALIST TEACHERS COMMENTS</th>
</tr>
<tr>
	<th colspan="9" align="left">INFORMATION AND COMMUNICATION TECHNOLOGY(ICT) </th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Learning and Application of skills  <br /></td>
	<td width="193" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtlasa" id="txtlasa" value="E" /></td>
				<td><input type="radio" name="txtlasa" id="txtlasa" value="M" /></td>
				<td><input type="radio" name="txtlasa" id="txtlasa" value="S" /></td>
				<td><input type="radio" name="txtlasa" id="txtlasa" value="N" /></td>
			</tr>
		</table>		
	</td>	
	<td width="189" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtlase" id="txtlase" value="1" />&nbsp;</td>
				<td><input type="radio" name="txtlase" id="txtlase" value="2" /></td>
				<td><input type="radio" name="txtlase" id="txtlase" value="3" /></td>
				<td><input type="radio" name="txtlase" id="txtlase" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td width="317" colspan="4" align="center"><textarea name="txtlasn" style="width:100%" rows="3"  id="txtlasn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Evaluation Skills </td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtesa" id="txtesa" value="E" /></td>
				<td><input type="radio" name="txtesa" id="txtesa" value="M" /></td>
				<td><input type="radio" name="txtesa" id="txtesa" value="S" /></td>
				<td><input type="radio" name="txtesa" id="txtesa" value="N" /></td>
			</tr>
		</table>			
	</td>	
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>	
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtese" id="txtese" value="1" /></td>
				<td><input type="radio" name="txtese" id="txtese" value="2" /></td>
				<td><input type="radio" name="txtese" id="txtese" value="3" /></td>
				<td><input type="radio" name="txtese" id="txtese" value="4" /></td>
			</tr>
		</table>		
	</td>	
	<td colspan="4" align="center"><textarea name="txtesn" style="width:100%" rows="3"  id="txtesn" ></textarea></td>
</tr>

<tr>
	<td colspan="9" align="right">
		<input type="button" value="Save" onClick="javascript:saveict(document.getElementById('txtsid').value,document.getElementById('txtteacher').value,this.form,document.getElementById('txtlasn').value,document.getElementById('txtesn').value,displayict);" class="input-submit"/>
		<input type="reset" value="Clear" class="input-submit"/>
	</td>
</tr>
</table>

<%
}
else if(ctr==1)
{
	List<Specialityclas> helloListict = Specialityclas.ictselect(sid);
	Iterator<Specialityclas> helloItrict = helloListict.iterator();
	while(helloItrict.hasNext()){
		Specialityclas ict = helloItrict.next();
%>



<table border="1" width="100%">
<tr>
<th >CURRICULUM AREA</th>
<th>ACHIEVEMENT</th>
<th>EFFORT</th>
<th>SPECIALIST TEACHERS' COMMENTS</th>
</tr>
<tr>
<th colspan="3" align="left">INFORMATION AND COMMUNICATION TECHNOLOGY(ICT) </th>
<th align="left">Teacher:&nbsp;<%=ict.getTfullname()%>

</tr>

<tr>
<td colspan="1">Learning and Application of skills  <br /></td>
<td align="center" valign="middle">
<%if(ict.getLasa().equals("E"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtlasa" id="txtlasa" value="E" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="M" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="N" />&nbsp;
</div>
<%
}
else if(ict.getLasa().equals("M"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtlasa" id="txtlasa" value="E" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="M" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="N" />&nbsp;
</div>
<%
} 
else if(ict.getLasa().equals("S"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtlasa" id="txtlasa" value="E" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="M" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="S" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="N" />&nbsp;
</div>
<%
}
else if(ict.getLasa().equals("N"))
	{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtlasa" id="txtlasa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="N" checked="checked"/>&nbsp;
 </div>
<%
}
else if(ict.getLasa().equals(""))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtlasa" id="txtlasa" value="E" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="M" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txtlasa" id="txtlasa" value="N" />&nbsp;
</div>
<%} %>
</td>
<td align="center" valign="middle">
<%if(ict.getLase()==1)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtlase" id="txtlase" value="1" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="2" />&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="3" />&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="4" />&nbsp;
</div>
<%
}
else if(ict.getLase()==2)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtlase" id="txtlase" value="1" />&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="2" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="3" />&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="4" />&nbsp;
</div>
<%
} 
else if(ict.getLase()==3)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtlase" id="txtlase" value="1" />&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="2" />&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="3" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtlase" id="txtlase" value="4" />&nbsp;
</div>
<%
}
else if(ict.getLase()==4)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtlase" id="txtlase" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtlase" id="txtlase" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtlase" id="txtlase" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtlase" id="txtlase" value="4" checked="checked"/>&nbsp;
 </div>
<%}
else if(ict.getLase()==0)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtlase" id="txtlase" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtlase" id="txtlase" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtlase" id="txtlase" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtlase" id="txtlase" value="4" />&nbsp;
 </div>
<%} %>
</td>
<td align="center"><textarea name="txtlasn" cols="50" rows="7"  id="txtlasn" ><%=ict.getLasn()%></textarea></td>
</tr>

<tr>
<td colspan="1">Evaluation Skills </td>
<td align="center" valign="middle">
<%if(ict.getEsa().equals("E"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtesa" id="txtesa" value="E" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="M" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="N" />&nbsp;
</div>
<%
}
else if(ict.getEsa().equals("M"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtesa" id="txtesa" value="E" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="M" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="N" />&nbsp;
</div>
<%
} 
else if(ict.getEsa().equals("S"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtesa" id="txtesa" value="E" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="M" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="S" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="N" />&nbsp;
</div>
<%
}
	else if(ict.getEsa().equals("N"))
	{%>
	<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtesa" id="txtesa" value="E" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="M" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="N" checked="checked"/>&nbsp;
</div>
	<%}
else if(ict.getEsa().equals(""))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtesa" id="txtesa" value="E" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="M" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txtesa" id="txtesa" value="N" />&nbsp;
</div>
<%} %>
</td>
<td align="center" valign="middle">
<%if(ict.getEse()==1)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtese" id="txtese" value="1" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="2" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="3" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="4" />&nbsp;
</div>
<%
}
else if(ict.getEse()==2)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtese" id="txtese" value="1" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="2" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="3" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="4" />&nbsp;
</div>
<%
} 
else if(ict.getEse()==3)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtese" id="txtese" value="1" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="2" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="3" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="4" />&nbsp;
</div>
<%
}
	else if(ict.getEse()==4)
	{%>
	<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtese" id="txtese" value="1" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="2" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="3" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="4" checked="checked"/>&nbsp;
</div>
	<%} 
	else if(ict.getEse()==0)
	{
	%>
	<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtese" id="txtese" value="1" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="2" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="3" />&nbsp;
&nbsp;<input type="radio" name="txtese" id="txtese" value="4" />&nbsp;
</div>
	<%} %>
</td>
<td align="center"><textarea name="txtesn" cols="50" rows="7"  id="txtesn" ><%=ict.getEsn()%></textarea></td>
</tr>

<tr>
<td colspan="9" align="center"><input type="button" value="Save" onClick="javascript:Updateict(document.getElementById('txtsid').value,document.getElementById('txtteacher').value,this.form,document.getElementById('txtlasn').value,document.getElementById('txtesn').value,displayict)" /></td>
</tr>

</table>


<%} }%>
