<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>


<%
String sid=request.getParameter("id");
List<Specialityclas> helloList = Specialityclas.frenchselect(sid);
Iterator<Specialityclas> helloItr = helloList.iterator();
%>

<% 
int ctr=0;
while(helloItr.hasNext()){
	Specialityclas fr = helloItr.next();
	
	if(fr.getSla()!=null)
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
	<th colspan="3">SPECIALIST TEACHERS' COMMENTS</th>
</tr>
<tr>
	<th colspan="9" align="left">FRENCH</th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">SPEAKING AND LISTENING  <br /></td>
	<td width="199" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtfsla" id="txtfsla" value="E" /></td>
				<td><input type="radio" name="txtfsla" id="txtfsla" value="M" /></td>
				<td><input type="radio" name="txtfsla" id="txtfsla" value="S" /></td>
				<td><input type="radio" name="txtfsla" id="txtfsla" value="N" /></td>
			</tr>
		</table>
	</td>
	<td width="204" align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtfsle" id="txtfsle" value="1" /></td>
				<td><input type="radio" name="txtfsle" id="txtfsle" value="2" /></td>
				<td><input type="radio" name="txtfsle" id="txtfsle" value="3" /></td>
				<td><input type="radio" name="txtfsle" id="txtfsle" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td width="317" colspan="4" align="center"><textarea name="txtfsln" style="width:100%" rows="3"  id="txtfsln" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">READING  </td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtfra" id="txtfra" value="E" /></td>
				<td><input type="radio" name="txtfra" id="txtfra" value="M" /></td>
				<td><input type="radio" name="txtfra" id="txtfra" value="S" /></td>
				<td><input type="radio" name="txtfra" id="txtfra" value="N" /></td>
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
				<td><input type="radio" name="txtfre" id="txtfre" value="1" /></td>
				<td><input type="radio" name="txtfre" id="txtfre" value="2" /></td>
				<td><input type="radio" name="txtfre" id="txtfre" value="3" /></td>
				<td><input type="radio" name="txtfre" id="txtfre" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtfrn" style="width:100%" rows="3"  id="txtfrn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">WRITING</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtfwa" id="txtfwa" value="E" /></td>
				<td><input type="radio" name="txtfwa" id="txtfwa" value="M" /></td>
				<td><input type="radio" name="txtfwa" id="txtfwa" value="S" /></td>
				<td><input type="radio" name="txtfwa" id="txtfwa" value="N" /></td>
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
				<td><input type="radio" name="txtfwe" id="txtfwe" value="1" /></td>
				<td><input type="radio" name="txtfwe" id="txtfwe" value="2" /></td>
				<td><input type="radio" name="txtfwe" id="txtfwe" value="3" /></td>
				<td><input type="radio" name="txtfwe" id="txtfwe" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtfwn" style="width:100%" rows="3"  id="txtfwn" ></textarea></td>
</tr>
<tr>
	<td colspan="9" align="right">
		<input type="button" value="Save" onClick="javascript:savefrenchinfo(document.getElementById('txtsid').value,document.getElementById('txtteacher').value,this.form,document.getElementById('txtfsln').value,document.getElementById('txtfrn').value,document.getElementById('txtfwn').value,displaysavefrenchinfo);" class="input-submit"/>
		<input type="reset" value="Clear" class="input-submit"/>
	</td>
</tr>
</table>

<%
}
else if(ctr==1)
{
	List<Specialityclas> helloListfrench = Specialityclas.frenchselect(sid);
	Iterator<Specialityclas> helloItrfrench = helloListfrench.iterator();
	while(helloItrfrench.hasNext()){
		Specialityclas fr = helloItrfrench.next();
%>

<table border="1" width="100%" >
<tr>
<th colspan="2">CURRICULUM AREA</th>
<th>ACHIEVEMENT</th>
<th>EFFORT</th>
<th colspan="3">SPECIALIST TEACHERS' COMMENTS</th>
</tr>
<tr>
<th colspan="5" align="left">FRENCH</th>
<th colspan="2" align="left">Teacher:&nbsp;<%=fr.getTfullname()%></th>
</tr>

<tr>
<td colspan="2">SPEAKING AND LISTENING  <br /></td>
<td width="196" align="center" valign="middle">
<% if(fr.getSla().equals("E"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfsla" id="txtfsla" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="N" />&nbsp;
 </div>
<%
}
else if(fr.getSla().equals("M"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfsla" id="txtfsla" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="N" />&nbsp;
</div>
<%
}
else if(fr.getSla().equals("S"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfsla" id="txtfsla" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="N" />&nbsp;
 </div>
<%
}
else if(fr.getSla().equals("N"))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfsla" id="txtfsla" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="N" checked="checked"/>&nbsp;
 </div>
<%
}
else if(fr.getSla().equals(""))
{
%>
<div id="a" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfsla" id="txtfsla" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfsla" id="txtfsla" value="N" />&nbsp;
 </div>
<%}%>
</td>

<td width="186" align="center" valign="middle">
<% if(fr.getSle()==1)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfsle" id="txtfsle" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="4" />&nbsp;
 </div>
<%
}
else if(fr.getSle()==2)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfsle" id="txtfsle" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="4" />&nbsp;
 </div>
<%
}
else if(fr.getSle()==3)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfsle" id="txtfsle" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="4" />&nbsp;
</div>
<%
}
else if(fr.getSle()==4)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfsle" id="txtfsle" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="4" checked="checked"/>&nbsp;
 </div>
<%
}
else if(fr.getSle()==0)
{
%>
<div id="b" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfsle" id="txtfsle" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfsle" id="txtfsle" value="4" />&nbsp;
 </div>
<%}%>
</td>
<td width="317" colspan="4" align="center"><textarea name="txtfsln" cols="50" rows="5"  id="txtfsln" ><%=fr.getSln() %></textarea></td>
</tr>

<tr>
<td colspan="2">READING  </td>
<td align="center" valign="middle">
<% 
if(fr.getRa().equals("E"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfra" id="txtfra" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="N" />&nbsp;
 </div>
<%
}
else if(fr.getRa().equals("M"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfra" id="txtfra" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="N" />&nbsp;
 </div>
<%
}
else if(fr.getRa().equals("S"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfra" id="txtfra" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="N" />&nbsp;
 </div>
<%
}
else if(fr.getRa().equals("N"))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfra" id="txtfra" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="N" checked="checked"/>&nbsp;
 </div>
<%
}
else if(fr.getRa().equals(""))
{
%>
<div id="c" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfra" id="txtfra" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfra" id="txtfra" value="N" />&nbsp;
 </div>
<%}%>
</td>

<td align="center" valign="middle">
<% if(fr.getRe()==1)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfre" id="txtfre" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="4" />&nbsp;
 </div>
<%
}
else if(fr.getRe()==2)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfre" id="txtfre" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="4" />&nbsp;
 </div>
<%
}
else if(fr.getRe()==3)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfre" id="txtfre" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="4" />&nbsp;
 </div>
<%
}
else if(fr.getRe()==4)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfre" id="txtfre" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="4" checked="checked"/>&nbsp;
 </div>
<%
}
else if(fr.getRe()==0)
{
%>
<div id="d" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfre" id="txtfre" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfre" id="txtfre" value="4" />&nbsp;
 </div>
<%}%>

</td>
<td colspan="4" align="center"><textarea name="txtfrn" cols="50" rows="5"  id="txtfrn" ><%=fr.getRn()%></textarea></td>
</tr>




<tr>
<td colspan="2">WRITING   </td>
<td align="center" valign="middle">
<% 
if(fr.getWa().equals("E"))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfwa" id="txtfwa" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="N" />&nbsp;
 </div>
<%
}
else if(fr.getWa().equals("M"))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
 <input type="radio" name="txtfwa" id="txtfwa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="N" />&nbsp;
 </div>
<%
}
else if(fr.getWa().equals("S"))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfwa" id="txtfwa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="N" />&nbsp;
 </div>
<%
}
else if(fr.getWa().equals("N"))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfwa" id="txtfwa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="N" checked="checked"/>&nbsp;
 </div>
<%
}
else if(fr.getWa().equals(""))
{
%>
<div id="e" style="width:200px;">
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtfwa" id="txtfwa" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtfwa" id="txtfwa" value="N" />&nbsp;
 </div>
<%}%>
</td>

<td align="center" valign="middle">
<% 
if(fr.getWe()==1)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfwe" id="txtfwe" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="4" />&nbsp;
 </div>
<%
}
else if(fr.getWe()==2)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfwe" id="txtfwe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="4" />&nbsp;
 </div>
<%
}
else if(fr.getWe()==3)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfwe" id="txtfwe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="4" />&nbsp;
 </div>
<%
}
else if(fr.getWe()==4)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfwe" id="txtfwe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="4" checked="checked"/>&nbsp;
 </div>
<%
}
else if(fr.getWe()==0)
{
%>
<div id="f" style="width:200px;">
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtfwe" id="txtfwe" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtfwe" id="txtfwe" value="4"/>&nbsp;
 </div>
<%}%>
</td>
<td colspan="4" align="center"><textarea name="txtfwn" cols="50" rows="5"  id="txtfwn" ><%=fr.getWn() %></textarea></td>
</tr>

<tr>
<td colspan="9" align="center"><input type="button" value="Save" onClick="javascript:updatefrenchinfo(document.getElementById('txtsid').value,document.getElementById('txtteacher').value,this.form,document.getElementById('txtfsln').value,document.getElementById('txtfrn').value,document.getElementById('txtfwn').value,displaysavefrenchinfo)" /></td>
</tr>
</table>

<%} }%>