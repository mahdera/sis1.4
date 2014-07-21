<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>


<%
String sid=request.getParameter("id");
List<Specialityclas> helloList = Specialityclas.musicselect(sid);
Iterator<Specialityclas> helloItr = helloList.iterator();
%>

<% 
int ctr=0;
while(helloItr.hasNext()){
	Specialityclas sc = helloItr.next();
	if(sc.getMpera()!=null)
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
	<th colspan="2">CURRICULUM AREA</th>
	<th>ACHIEVEMENT</th>
	<th>EFFORT</th>
	<th colspan="5">SPECIALIST TEACHERS' COMMENTS</th>
</tr>
<tr>
	<th colspan="9" align="left">MUSIC</th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">PERFORMING<br /></td>
	<td width="190" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtpa" id="txtpa" value="E" /></td>
				<td><input type="radio" name="txtpa" id="txtpa" value="M" /></td>
				<td><input type="radio" name="txtpa" id="txtpa" value="S" /></td>
				<td><input type="radio" name="txtpa" id="txtpa" value="N" /></td>
			</tr>
		</table>		
	</td>	
	<td width="192" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtpe" id="txtpe" value="1" /></td>
				<td><input type="radio" name="txtpe" id="txtpe" value="2" /></td>
				<td><input type="radio" name="txtpe" id="txtpe" value="3" /></td>
				<td><input type="radio" name="txtpe" id="txtpe" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td width="317" colspan="4" align="center"><textarea name="txtpn" style="width:100%" rows="3"  id="txtpn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">CREATIVE AND LISTENING SKILLS </td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtclsa" id="txtclsa" value="E" /></td>
				<td><input type="radio" name="txtclsa" id="txtclsa" value="M" /></td>
				<td><input type="radio" name="txtclsa" id="txtclsa" value="S" /></td>
				<td><input type="radio" name="txtclsa" id="txtclsa" value="N" /></td>
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
				<td><input type="radio" name="txtclse" id="txtclse" value="1" /></td>
				<td><input type="radio" name="txtclse" id="txtclse" value="2" /></td>
				<td><input type="radio" name="txtclse" id="txtclse" value="3" /></td>
				<td><input type="radio" name="txtclse" id="txtclse" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtesn" style="width:100%" rows="3"  id="txtclsn" ></textarea></td>
</tr>
<tr>
	<td colspan="9" align="right">
		<input type="button" value="Save" onClick="javascript:savemusicinfo(document.getElementById('txtsid').value,document.getElementById('txtteacher').value,this.form,document.getElementById('txtpn').value,document.getElementById('txtclsn').value,displaysavemusic);" class="input-submit" />
		<input type="reset" value="Clear" class="input-submit"/>
	</td>
</tr>
</table>

<%
}
else if(ctr==1)
{
	List<Specialityclas> helloListict = Specialityclas.musicselect(sid);
	Iterator<Specialityclas> helloItrict = helloListict.iterator();
	while(helloItrict.hasNext()){
		Specialityclas music = helloItrict.next();		
%>

<table border="0" width="100%">
<tr>
<th>CURRICULUM AREA</th>
<th>ACHIEVEMENT</th>
<th>EFFORT</th>
<th colspan="5">SPECIALIST TEACHERS' COMMENTS</th>
</tr>

<tr>
<th colspan="3" align="left">MUSIC</th>
<th colspan="2" align="left">Teacher:&nbsp;<%=music.getTfullname()%></th>
</tr>

<tr>
<td colspan="1">PERFORMING<br /></td>
<td align="center" valign="middle">
<%
if(music.getMpera().equals("E"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpa" id="txtpa" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="N" />&nbsp;
 </div>
<%
}
else if(music.getMpera().equals("M"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpa" id="txtpa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="N" />&nbsp;
 </div>
<%
} 
else if(music.getMpera().equals("S"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpa" id="txtpa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="N" />&nbsp;
 </div>
<%
}
	else if(music.getMpera().equals("N"))
	{
	%>
	<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpa" id="txtpa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="N" checked="checked" />&nbsp;
 </div>
	<%} 
	else if(music.getMpera().equals(""))
	{
	%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpa" id="txtpa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtpa" id="txtpa" value="N" />&nbsp;
 </div>
	<%} %>

</td>

<td align="center" valign="middle">
<%
if(music.getMpere()==1)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpe" id="txtpe" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="4" />&nbsp;
</div>
<%
}
else if(music.getMpere()==2)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpe" id="txtpe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="4" />&nbsp;
 </div>
<%
}
else if(music.getMpere()==3)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpe" id="txtpe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="4" />&nbsp;
 </div>
<%
}
else if(music.getMpere()==4)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpe" id="txtpe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="4" checked="checked"/>&nbsp;
 </div>
<%}
else if(music.getMpere()==0)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpe" id="txtpe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtpe" id="txtpe" value="4" />&nbsp;
 </div>
<%} %>

</td>
<td align="center" colspan="2"><textarea name="txtpn" cols="50" rows="7"  id="txtpn" ><%=music.getMpern() %></textarea></td>
</tr>


<tr>
<td colspan="1">CREATIVE AND LISTENING SKILLS</td>
<td align="center" valign="middle">
<%
if(music.getMclsa().equals("E"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtclsa" id="txtclsa" value="E" checked="checked"/>&nbsp;
<input type="radio" name="txtclsa" id="txtclsa" value="M" />&nbsp;
<input type="radio" name="txtclsa" id="txtclsa" value="S" />&nbsp;
<input type="radio" name="txtclsa" id="txtclsa" value="N" />&nbsp;
</div>
<%
}
else if(music.getMclsa().equals("M"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtclsa" id="txtclsa" value="E" />&nbsp;
&nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="M" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="N" />&nbsp;
</div>
<%
} 
else if(music.getMclsa().equals("S"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtclsa" id="txtclsa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="N" />&nbsp;
 </div>
<%
}
	else if(music.getMclsa().equals("N"))
	{%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtclsa" id="txtclsa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="N" checked="checked"/>&nbsp;
 </div>
	<%}
else if(music.getMclsa().equals(""))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtclsa" id="txtclsa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtclsa" id="txtclsa" value="N" />&nbsp;
 </div>
<%} %>

</td>

<td align="center" valign="middle">
<%if(music.getMclse()==1)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtclse" id="txtclse" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="4" />&nbsp;
 </div>
<%
}
else if(music.getMclse()==2)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtclse" id="txtclse" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="4" />&nbsp;
 </div>
<%
} 
else if(music.getMclse()==3)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtclse" id="txtclse" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="4" />&nbsp;
 </div>
<%
}
else if(music.getMclse()==4)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtclse" id="txtclse" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="4" checked="checked"/>&nbsp;
 </div>
<%}
else if(music.getMclse()==0)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtclse" id="txtclse" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtclse" id="txtclse" value="4" />&nbsp;
 </div>
<%} %>
</td>
<td align="center" colspan="2"><textarea name="txtclsn" cols="50" rows="7"  id="txtclsn" ><%=music.getMclsn()%></textarea></td>
</tr>

<tr>
<td colspan="9" align="center"><input type="button" value="Save" onClick="javascript:updatemusicinfo(document.getElementById('txtsid').value,document.getElementById('txtteacher').value,this.form,document.getElementById('txtpn').value,document.getElementById('txtclsn').value,displaysavemusic)" /></td>
</tr>

</table>


<%
}
}
%>
