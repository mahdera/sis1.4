<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>


<%
String sid=request.getParameter("id");
List<Specialityclas> helloList = Specialityclas.peselect(sid);
Iterator<Specialityclas> helloItr = helloList.iterator();
%>

<% 
int ctr=0;
while(helloItr.hasNext()){
	Specialityclas pe = helloItr.next();
	
	if(pe.getPoa()!=null)
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
	<th colspan="5">SPECIALIST TEACHERS' COMMENTS</th>
</tr>
<tr>
	<th colspan="9" align="left">PHYSICAL EDUCATION(P.E) </th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">PERSONAL ORGANISATION <br /></td>
	<td width="206" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtpoa" id="txtpoa" value="E" /></td>
				<td><input type="radio" name="txtpoa" id="txtpoa" value="M" /></td>
				<td><input type="radio" name="txtpoa" id="txtpoa" value="S" /></td>
				<td><input type="radio" name="txtpoa" id="txtpoa" value="N" /></td>
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
				<td><input type="radio" name="txtpoe" id="txtpoe" value="1" /></td>
				<td><input type="radio" name="txtpoe" id="txtpoe" value="2" /></td>
				<td><input type="radio" name="txtpoe" id="txtpoe" value="3" /></td>
				<td><input type="radio" name="txtpoe" id="txtpoe" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td width="317" colspan="4" align="center"><textarea name="txtpon" style="width:100%" rows="3"  id="txtpon" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">INDIVIDUAL SKILL  </td>
	<td width="206" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtisa" id="txtisa" value="E" /></td>
				<td><input type="radio" name="txtisa" id="txtisa" value="M" /></td>
				<td><input type="radio" name="txtisa" id="txtisa" value="S" /></td>
				<td><input type="radio" name="txtisa" id="txtisa" value="N" /></td>
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
				<td><input type="radio" name="txtise" id="txtise" value="1" /></td>
				<td><input type="radio" name="txtise" id="txtise" value="2" /></td>
				<td><input type="radio" name="txtise" id="txtise" value="3" /></td>
				<td><input type="radio" name="txtise" id="txtise" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtisn" style="width:100%" rows="3"  id="txtisn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">TEAM WORK</td>
	<td width="206" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txttwa" id="txttwa" value="E" /></td>
				<td><input type="radio" name="txttwa" id="txttwa" value="M" /></td>
				<td><input type="radio" name="txttwa" id="txttwa" value="S" /></td>
				<td><input type="radio" name="txttwa" id="txttwa" value="N" /></td>
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
				<td><input type="radio" name="txtise" id="txtise" value="1" /></td>
				<td><input type="radio" name="txttwe" id="txttwe" value="2" /></td>
				<td><input type="radio" name="txttwe" id="txttwe" value="3" /></td>
				<td><input type="radio" name="txttwe" id="txttwe" value="4" /></td>
			</tr>
		</table>		
	</td>	
	<td colspan="4" align="center"><textarea name="txttwn" style="width:100%" rows="3"  id="txttwn" ></textarea></td>
</tr>
<tr>
	<td colspan="9" align="right">
		<input type="button" value="Save" onClick="javascript:savepeinfo(document.getElementById('txtsid').value,document.getElementById('txtteacher').value,this.form,document.getElementById('txtpon').value,document.getElementById('txtisn').value,document.getElementById('txttwn').value,displaysavepeinfo);" class="input-submit"/>
		<input type="reset" value="Clear" class="input-submit"/>
	</td>
</tr>
</table>
<%
}
else if(ctr==1)
{
	List<Specialityclas> helloListpe = Specialityclas.peselect(sid);
	Iterator<Specialityclas> helloItrpe = helloListpe.iterator();
	while(helloItrpe.hasNext()){
		Specialityclas pe = helloItrpe.next();
%>



<table border="1" width="100%">

<tr>
<th colspan="2">CURRICULUM AREA</th>
<th>ACHIEVEMENT</th>
<th>EFFORT</th>
<th colspan="5">SPECIALIST TEACHERS' COMMENTS</th>
</tr>

<tr>
<th colspan="5" align="left">PHYSICAL EDUCATION(P.E) </th>
<th colspan="2" align="left">Teacher:&nbsp;<%=pe.getTfullname() %></th>
</tr>

<tr>
<td colspan="2">PERSONAL ORGANISATION <br /></td>
<td width="206" align="center" valign="middle">
<%if(pe.getPoa().equals("E"))
{
 %>
 <div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpoa" id="txtpoa" value="E"  checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="N" />&nbsp;
</div>
<%
}
else if(pe.getPoa().equals("M"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpoa" id="txtpoa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="N" />&nbsp;
 </div>
<%
}
else if(pe.getPoa().equals("S"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpoa" id="txtpoa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="N" />&nbsp;
 </div>
<%
}
else if(pe.getPoa().equals("N"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpoa" id="txtpoa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="N" checked="checked"/>&nbsp;
 </div>
<%
}
else if(pe.getPoa().equals(""))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtpoa" id="txtpoa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtpoa" id="txtpoa" value="N" />&nbsp;
 </div>
<%} %>
</td>
<td width="192" align="center" valign="middle">
<%if(pe.getPoe()==1)
{
 %>
 <div id="b" style="width:200px;">
 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpoe" id="txtpoe" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getPoe()==2)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpoe" id="txtpoe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getPoe()==3)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpoe" id="txtpoe" value="1"/>&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getPoe()==4)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpoe" id="txtpoe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="4" checked="checked"/>&nbsp;
 </div>
<%}
else if(pe.getPoe()==0)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtpoe" id="txtpoe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtpoe" id="txtpoe" value="4" />&nbsp;
 </div>
<%} %>
</td>
<td width="317" colspan="4" align="center"><textarea name="txtpon" cols="50" rows="5"  id="txtpon" ><%=pe.getPon()%></textarea></td>
</tr>
<tr>

<td colspan="2">INDIVIDUAL SKILL  </td>

<td width="206" align="center" valign="middle">
<% if(pe.getIsa().equals("E") )
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtisa" id="txtisa" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" />&nbsp;
</div>
<%
}
else if(pe.getIsa().equals("M"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtisa" id="txtisa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" />&nbsp;
 </div>
<%
}
else if(pe.getIsa().equals("S"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtisa" id="txtisa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" />&nbsp;
 </div>
<%
}
else if(pe.getIsa().equals("N"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtisa" id="txtisa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" checked="checked"/>&nbsp;
 </div>
<%}
else if(pe.getIsa().equals(""))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtisa" id="txtisa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" />&nbsp;
 </div>
<%} %>


</td>

<td width="192" align="center" valign="middle">

<% if(pe.getIse()==1)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getIse()==2)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getIse()==3)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getIse()==4)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtise" id="txtise" value="4" checked="checked"/>&nbsp;
 </div>
<%
}
else if(pe.getIse()==0)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
&nbsp;<input type="radio" name="txtise" id="txtise" value="1" />&nbsp;
&nbsp;<input type="radio" name="txtise" id="txtise" value="2" />&nbsp;
&nbsp;<input type="radio" name="txtise" id="txtise" value="3" />&nbsp;
&nbsp;<input type="radio" name="txtise" id="txtise" value="4" />&nbsp;
</div>
<%} %>
</td>
<td colspan="4" align="center"><textarea name="txtisn" cols="50" rows="5"  id="txtisn" ><%=pe.getIsn() %></textarea></td>
</tr>


<tr>
<td colspan="2">TEAM WORK   </td>

<td width="206" align="center" valign="middle">
<% if(pe.getTwa().equals("E")) 
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txttwa" id="txttwa" value="E" checked="checked"/>&nbsp;
&nbsp;<input type="radio" name="txttwa" id="txttwa" value="M" />&nbsp;
&nbsp;<input type="radio" name="txttwa" id="txttwa" value="S" />&nbsp;
&nbsp;<input type="radio" name="txttwa" id="txttwa" value="N" />&nbsp;
</div>
<%
}
else if(pe.getTwa().equals("M"))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txttwa" id="txttwa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="N" />&nbsp;
 </div>
<%
}
else if(pe.getTwa().equals("S"))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txttwa" id="txttwa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="N" />&nbsp;
 </div>
<%
}
else if(pe.getTwa().equals("N"))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txttwa" id="txttwa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="N" checked="checked"/>&nbsp;
 </div>
<%}
else if(pe.getTwa().equals(""))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txttwa" id="txttwa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txttwa" id="txttwa" value="N" />&nbsp;
 </div>
<%} %>

</td>

<td width="192" align="center" valign="middle">
<% if(pe.getTwe()==1)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getTwe()==2)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getTwe()==3)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="4" />&nbsp;
 </div>
<%
}
else if(pe.getTwe()==4)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="4" checked="checked"/>&nbsp;
 </div>
<%
}
else if(pe.getTwe()==0)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txttwe" id="txttwe" value="4" />&nbsp;
 </div>
<%} %>

<td colspan="4" align="center"><textarea name="txttwn" cols="50" rows="5"  id="txttwn" ><%=pe.getTwn() %></textarea></td>
</tr>

<tr>
<td colspan="9" align="center"><input type="button" value="Save" onClick="javascript:updatepeinfo(document.getElementById('txtsid').value,document.getElementById('txtteacher').value,this.form,document.getElementById('txtpon').value,document.getElementById('txtisn').value,document.getElementById('txttwn').value,displaysavepeinfo)" /></td>
</tr>
</table>


<%} }%>
