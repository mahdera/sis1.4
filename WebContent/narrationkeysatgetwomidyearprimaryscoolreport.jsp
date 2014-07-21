<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<% 
String sid=request.getParameter("id");
List<Keystagetwo> helloList = Keystagetwo.getKeysatgetwo(sid); 
Iterator<Keystagetwo> helloItr = helloList.iterator();

		int ctr=0;
			while(helloItr.hasNext()){
				Keystagetwo kst = helloItr.next();
				
			if(kst.getLn()!="" || kst.getLn()!=null )
				{
					ctr=1;					
				}
			else
			{
				ctr=0;
			}
			}
%>
<%
if(ctr==0)
{
%>

<table border="1" width="100%">

<tr>
<th colspan="2">CURRICULUM AREA </th>
<th width="214">ACHIEVEMENT</th>
<th width="230">EFFORT</th>
<th width="319" colspan="3">TEACHER COMMENT </th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">LITERACY <br /></td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtliteracya" id="txtliteracya" value="E" /></td>
				<td><input type="radio" name="txtliteracya" id="txtliteracya" value="M" /></td>
				<td><input type="radio" name="txtliteracya" id="txtliteracya" value="S" /></td>
				<td><input type="radio" name="txtliteracya" id="txtliteracya" value="N" /></td>
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
				<td><input type="radio" name="txtliteracye" id="txtliteracye" value="1" /></td>
				<td><input type="radio" name="txtliteracye" id="txtliteracye" value="2" /></td>
				<td><input type="radio" name="txtliteracye" id="txtliteracye" value="3" /></td>
				<td><input type="radio" name="txtliteracye" id="txtliteracye" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtln" style="width:100%" rows="3"  id="txtln" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">NUMERACY</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtnuma" id="txtnuma" value="E" /></td>
				<td><input type="radio" name="txtnuma" id="txtnuma" value="M" /></td>
				<td><input type="radio" name="txtnuma" id="txtnuma" value="S" /></td>
				<td><input type="radio" name="txtnuma" id="txtnuma" value="N" /></td>
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
				<td><input type="radio" name="txtnume" id="txtnume" value="1" /></td>
				<td><input type="radio" name="txtnume" id="txtnume" value="2" /></td>
				<td><input type="radio" name="txtnume" id="txtnume" value="3" /></td>
				<td><input type="radio" name="txtnume" id="txtnume" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtnumn" style="width:100%" rows="3"  id="txtnumn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">INTERNATIONAL PRIMARY CURRICULUM </td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtipca" id="txtipca" value="E" /></td>
				<td><input type="radio" name="txtipca" id="txtipca" value="M" /></td>
				<td><input type="radio" name="txtipca" id="txtipca" value="S" /></td>
				<td><input type="radio" name="txtipca" id="txtipca" value="N" /></td>
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
				<td><input type="radio" name="txtipce" id="txtipce" value="1" /></td>
				<td><input type="radio" name="txtipce" id="txtipce" value="2" /></td>
				<td><input type="radio" name="txtipce" id="txtipce" value="3" /></td>
				<td><input type="radio" name="txtipce" id="txtipce" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtipcn" style="width:100%" rows="3"  id="txtipcn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">SCIENCE</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtsca" id="txtsca" value="E" /></td>
				<td><input type="radio" name="txtsca" id="txtsca" value="M" /></td>
				<td><input type="radio" name="txtsca" id="txtsca" value="S" /></td>
				<td><input type="radio" name="txtsca" id="txtsca" value="N" /></td>
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
				<td><input type="radio" name="txtsce" id="txtsce" value="1" /></td>
				<td><input type="radio" name="txtsce" id="txtsce" value="2" /></td>
				<td><input type="radio" name="txtsce" id="txtsce" value="3" /></td>
				<td><input type="radio" name="txtsce" id="txtsce" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtscn" style="width:100%" rows="3"  id="txtscn" ></textarea></td>
</tr>
<tr>
	<th colspan="7" align="left"> CLASS TEACHER GENERAL COMMENTS</th>
</tr>
<tr>
	<td colspan="7" align="center">
		<textarea name="txtgc" style="width:100%" rows="4" id="txtgc" ></textarea>
	</td>
</tr>

<tr>
	<td colspan="7" align="right">
		<input type="button" value="Save" onclick="javascript:savemidyearforprimaryy(document.getElementById('txtsid').value,this.form,document.getElementById('txtln').value,document.getElementById('txtnumn').value,document.getElementById('txtipcn').value,document.getElementById('txtscn').value,document.getElementById('txtgc').value,displaysavemidyearforprimary);" class="input-submit"/>
		<input type="reset" value="Clear" class="input-submit"/>
	</td>
</tr>
</table>
<%
}
else if(ctr==1)
{
	List<Keystagetwo> helloLista = Keystagetwo.getKeysatgetwo(sid);
	Iterator<Keystagetwo> helloItra = helloList.iterator();
	while(helloItra.hasNext()){
		Keystagetwo kst = helloItra.next();
%>
<table border="1" width="100%">

<tr>
<th colspan="2">CURRICULUM AREA </th>
<th width="214">ACHIEVEMENT</th>
<th width="230">EFFORT</th>
<th width="319" colspan="3">TEACHER COMMENT </th>
</tr>

<tr>
<td colspan="2">LITERACY <br /></td>
<td align="center" valign="middle">


<%
if(kst.getLa().equals("E"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtliteracya" id="txtliteracya" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="N" />&nbsp;
<%
}
else if(kst.getLa().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
 <input type="radio" name="txtliteracya" id="txtliteracya" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="N" />&nbsp;
<%
} 
else if(kst.getLa().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtliteracya" id="txtliteracya" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="N" />&nbsp;
<%} 
else if(kst.getLa().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtliteracya" id="txtliteracya" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="S"  />&nbsp;
 &nbsp;<input type="radio" name="txtliteracya" id="txtliteracya" value="N" checked="checked"/>&nbsp;
<%}%>



</td>
<td>
<%
if(kst.getLe()==1)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracye" id="txtliteracye" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="4" />&nbsp;
<%
}
else if(kst.getLe()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracye" id="txtliteracye" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="4" />&nbsp;
<%
} 
else if(kst.getLe()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracye" id="txtliteracye" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="4" />&nbsp;
<%} 
else if(kst.getLe()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracye" id="txtliteracye" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="3"  />&nbsp;
 &nbsp;<input type="radio" name="txtliteracye" id="txtliteracye" value="4" checked="checked"/>&nbsp;
<%}%>
</td>
<td colspan="4" align="center"><textarea name="txtln" cols="50" rows="5"  id="txtln" ><%=kst.getLn()%></textarea></td>
</tr>





<tr>
<td colspan="2">NUMERACY <br /></td>
<td align="center" valign="middle">


<%
if(kst.getNuma().equals("E"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtnuma" id="txtnuma" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="N" />&nbsp;
<%
}
else if(kst.getNuma().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtnuma" id="txtnuma" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="N" />&nbsp;
<%
} 
else if(kst.getNuma().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtnuma" id="txtnuma" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="N" />&nbsp;
<%} 
else if(kst.getNuma().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtnuma" id="txtnuma" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="S"  />&nbsp;
 &nbsp;<input type="radio" name="txtnuma" id="txtnuma" value="N" checked="checked"/>&nbsp;
<%}%>



</td>
<td>
<%
if(kst.getNume()==1)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtnume" id="txtnume" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="4" />&nbsp;
<%
}
else if(kst.getNume()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtnume" id="txtnume" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="4" />&nbsp;
<%
} 
else if(kst.getNume()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtnume" id="txtnume" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="4" />&nbsp;
<%} 
else if(kst.getNume()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtnume" id="txtnume" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="3"  />&nbsp;
 &nbsp;<input type="radio" name="txtnume" id="txtnume" value="4" checked="checked"/>&nbsp;
<%}%>
</td>
<td colspan="4" align="center"><textarea name="txtnumn" cols="50" rows="5"  id="txtnumn" ><%=kst.getNumn() %></textarea></td>
</tr>




<tr>
<td colspan="2">INTERNATIONAL <br />PRIMARY <br /> CURRICULUM</td>
<td align="center" valign="middle">


<%
if(kst.getIpca().equals("E"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtipca" id="txtipca" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="N" />&nbsp;
<%
}
else if(kst.getIpca().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtipca" id="txtipca" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="N" />&nbsp;
<%
} 
else if(kst.getIpca().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtipca" id="txtipca" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="N" />&nbsp;
<%} 
else if(kst.getIpca().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtipca" id="txtipca" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="S"  />&nbsp;
 &nbsp;<input type="radio" name="txtipca" id="txtipca" value="N" checked="checked"/>&nbsp;
<%}%>



</td>
<td>
<%
if(kst.getIpce()==1)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtipce" id="txtipce" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="4" />&nbsp;
<%
}
else if(kst.getIpce()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtipce" id="txtipce" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="4" />&nbsp;
<%
} 
else if(kst.getIpce()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtipce" id="txtipce" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="4" />&nbsp;
<%} 
else if(kst.getIpce()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtipce" id="txtipce" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="3"  />&nbsp;
 &nbsp;<input type="radio" name="txtipce" id="txtipce" value="4" checked="checked"/>&nbsp;
<%}%>
</td>
<td colspan="4" align="center"><textarea name="txtipcn" cols="50" rows="5"  id="txtipcn" ><%=kst.getIpcn() %></textarea></td>
</tr>



<tr>
<td colspan="2">SCIENCE <br /></td>
<td align="center" valign="middle">


<%
if(kst.getSca().equals("E"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtsca" id="txtsca" value="E" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="N" />&nbsp;
<%
}
else if(kst.getSca().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtsca" id="txtsca" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="M" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="S" />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="N" />&nbsp;
<%
} 
else if(kst.getSca().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtsca" id="txtsca" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="S" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="N" />&nbsp;
<%} 
else if(kst.getSca().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br>
<input type="radio" name="txtsca" id="txtsca" value="E" />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="M" />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="S"  />&nbsp;
 &nbsp;<input type="radio" name="txtsca" id="txtsca" value="N" checked="checked"/>&nbsp;
<%}%>



</td>
<td>
<%
if(kst.getSce()==1)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtsce" id="txtsce" value="1" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="4" />&nbsp;
<%
}
else if(kst.getSce()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtsce" id="txtsce" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="2" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="3" />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="4" />&nbsp;
<%
} 
else if(kst.getSce()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtsce" id="txtsce" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="3" checked="checked"/>&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="4" />&nbsp;
<%} 
else if(kst.getSce()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtsce" id="txtsce" value="1" />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="2" />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="3"  />&nbsp;
 &nbsp;<input type="radio" name="txtsce" id="txtsce" value="4" checked="checked"/>&nbsp;
<%}%>
</td>
<td colspan="4" align="center"><textarea name="txtscn" cols="50" rows="5"  id="txtscn" ><%=kst.getScn() %></textarea></td>
</tr>

<tr>
<th colspan="7" align="left"> CLASS TEACHER GENERAL COMMENTS</th>
</tr>


<tr>
<td colspan="7" align="center"><textarea name="txtgc" cols="50" rows="7"  id="txtgc" ><%=kst.getGc() %></textarea></td>
</tr>

<tr>
<td colspan="7" align="center"><input type="button" value="Save" onclick="javascript:updatemidyearforprimaryy(document.getElementById('txtsid').value,this.form,document.getElementById('txtln').value,document.getElementById('txtnumn').value,document.getElementById('txtipcn').value,document.getElementById('txtscn').value,document.getElementById('txtgc').value,displaysavemidyearforprimary)"/></td>
</tr>
</table>

<%
}
}
%>