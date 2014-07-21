<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
String sid=request.getParameter("id");
List<Endofyear> helloList = Endofyear.getKeysatgeoneend(sid);
Iterator<Endofyear> helloItr = helloList.iterator();
%>

<% 
int ctr=0;
while(helloItr.hasNext()){
	Endofyear eny = helloItr.next();
	if(eny.getLra()!=null)
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
	<th align="center" colspan="2"><b>CURRICULUM AREA</b></th>
	<th align="center"><b>ACHIEVEMENT</b></th>
	<th align="center"><b>EFFORT</b></th>
	<th colspan="4" align="center"><b>CLASS TEACHER COMMENTS</b></th>
</tr>
<tr>
	<th colspan="9" align="left">LITERACY</th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">LITERACY <br />   Reading </td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtliteracyra" id="radio" value="E" /></td>
				<td><input type="radio" name="txtliteracyra" id="txtliteracyra" value="M" /></td>
				<td><input type="radio" name="txtliteracyra" id="txtliteracyra" value="S" /></td>
				<td><input type="radio" name="txtliteracyra" id="txtliteracyra" value="N" /></td>
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
				<td><input type="radio" name="txtliteracyre" id="txtliteracyre" value="1" /></td>
				<td><input type="radio" name="txtliteracyre" id="txtliteracyre" value="2" /></td>
				<td><input type="radio" name="txtliteracyre" id="txtliteracyre" value="3" /></td>
				<td><input type="radio" name="txtliteracyre" id="txtliteracyre" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td width="377" colspan="4" align="center"><textarea name="txtlrn" style="width:100%" rows="3"  id="txtlrn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">LITERACY<br /> Writing </td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtliteracywa" id="txtliteracywa" value="E" /></td>
				<td><input type="radio" name="txtliteracywa" id="txtliteracywa" value="M" /></td>
				<td><input type="radio" name="txtliteracywa" id="txtliteracywa" value="S" /></td>
				<td><input type="radio" name="txtliteracywa" id="txtliteracywa" value="N" /></td>
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
				<td><input type="radio" name="txtliteracywe" id="txtliteracywe" value="1" /></td>
				<td><input type="radio" name="txtliteracywe" id="txtliteracywe" value="2" /></td>
				<td><input type="radio" name="txtliteracywe" id="txtliteracywe" value="3" /></td>
				<td><input type="radio" name="txtliteracywe" id="txtliteracywe" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtlwn" style="width:100%" rows="3"  id="txtlwn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">LITERACY <br />Speaking and<br /> Listening </td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="E" /></td>
				<td><input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="M" /></td>
				<td><input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="S" /></td>
				<td><input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="N" /></td>
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
				<td><input type="radio" name="txtliteracysle" id="txtliteracysle" value="1" /></td>
				<td><input type="radio" name="txtliteracysle" id="txtliteracysle" value="2" /></td>
				<td><input type="radio" name="txtliteracysle" id="txtliteracysle" value="3" /></td>
				<td><input type="radio" name="txtliteracysle" id="txtliteracysle" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtlsln" style="width:100%" rows="3"  id="txtlsln" ></textarea></td>
</tr>
<tr>
	<th colspan="9" align="left">NUMERACY</th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Using and Applying Maths</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtuaama" id="txtuaama" value="E" /></td>
				<td><input type="radio" name="txtuaama" id="txtuaama" value="M" /></td>
				<td><input type="radio" name="txtuaama" id="txtuaama" value="S" /></td>
				<td><input type="radio" name="txtuaama" id="txtuaama" value="N" /></td>
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
				<td><input type="radio" name="txtuaame" id="txtuaame" value="1" /></td>
				<td><input type="radio" name="txtuaame" id="txtuaame" value="2" /></td>
				<td><input type="radio" name="txtuaame" id="txtuaame" value="3" /></td>
				<td><input type="radio" name="txtuaame" id="txtuaame" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtuaamn" style="width:100%" rows="3"  id="txtuaamn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Number and Algebra</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtnaaa" id="txtnaaa" value="E" /></td>
				<td><input type="radio" name="txtnaaa" id="txtnaaa" value="M" /></td>
				<td><input type="radio" name="txtnaaa" id="txtnaaa" value="S" /></td>
				<td><input type="radio" name="txtnaaa" id="txtnaaa" value="N" /></td>
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
				<td><input type="radio" name="txtnaae" id="txtnaae" value="1" /></td>
				<td><input type="radio" name="txtnaae" id="txtnaae" value="2" /></td>
				<td><input type="radio" name="txtnaae" id="txtnaae" value="3" /></td>
				<td><input type="radio" name="txtnaae" id="txtnaae" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtnaan" style="width:100%" rows="3"  id="txtnaan" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Shape,Space and Measures</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtssma" id="txtssma" value="E" /></td>
				<td><input type="radio" name="txtssma" id="txtssma" value="M" /></td>
				<td><input type="radio" name="txtssma" id="txtssma" value="S" /></td>
				<td><input type="radio" name="txtssma" id="txtssma" value="N" /></td>
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
				<td><input type="radio" name="txtssme" id="txtssme" value="1" /></td>
				<td><input type="radio" name="txtssme" id="txtssme" value="2" /></td>
				<td><input type="radio" name="txtssme" id="txtssme" value="3" /></td>
				<td><input type="radio" name="txtssme" id="txtssme" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtssmn" style="width:100%" rows="3"  id="txtssmn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Data Handling</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtdha" id="txtdha" value="E" /></td>
				<td><input type="radio" name="txtdha" id="txtdha" value="M" /></td>
				<td><input type="radio" name="txtdha" id="txtdha" value="S" /></td>
				<td><input type="radio" name="txtdha" id="txtdha" value="N" /></td>
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
				<td><input type="radio" name="txtdhe" id="txtdhe" value="1" /></td>
				<td><input type="radio" name="txtdhe" id="txtdhe" value="2" /></td>
				<td><input type="radio" name="txtdhe" id="txtdhe" value="3" /></td>
				<td><input type="radio" name="txtdhe" id="txtdhe" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtdhn" style="width:100%" rows="3"  id="txtdhn" ></textarea></td>
</tr>
<tr>
	<th colspan="9" align="left">SCIENCE</th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Investigation Skills</td>
	<td align="center" style="vertical-align:top">
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
	<td align="center" style="vertical-align:top">
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
	<td colspan="2" style="vertical-align:top">Knowledge and Content</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtkaca" id="txtkaca" value="E" /></td>
				<td><input type="radio" name="txtkaca" id="txtkaca" value="M" /></td>
				<td><input type="radio" name="txtkaca" id="txtkaca" value="S" /></td>
				<td><input type="radio" name="txtkaca" id="txtkaca" value="N" /></td>
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
				<td><input type="radio" name="txtkace" id="txtkace" value="1" /></td>
				<td><input type="radio" name="txtkace" id="txtkace" value="2" /></td>
				<td><input type="radio" name="txtkace" id="txtkace" value="3" /></td>
				<td><input type="radio" name="txtkace" id="txtkace" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtkacn" style="width:100%" rows="3"  id="txtkacn" ></textarea></td>
</tr>
<tr>
	<th colspan="9" align="left">Humanities</th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Research Skills</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtrsa" id="txtrsa" value="E" /></td>
				<td><input type="radio" name="txtrsa" id="txtrsa" value="M" /></td>
				<td><input type="radio" name="txtrsa" id="txtrsa" value="S" /></td>
				<td><input type="radio" name="txtrsa" id="txtrsa" value="N" /></td>
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
				<td><input type="radio" name="txtrse" id="txtrse" value="1" /></td>
				<td><input type="radio" name="txtrse" id="txtrse" value="2" /></td>
				<td><input type="radio" name="txtrse" id="txtrse" value="3" /></td>
				<td><input type="radio" name="txtrse" id="txtrse" value="4" /></td>
			</tr>
		</table>
	</td>
	<td colspan="4" align="center"><textarea name="txtrsn" style="width:100%" rows="3"  id="txtrsn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Knowledge and Content</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txthkaca" id="txthkaca" value="E" /></td>
				<td><input type="radio" name="txthkaca" id="txthkaca" value="M" /></td>
				<td><input type="radio" name="txthkaca" id="txthkaca" value="S" /></td>
				<td><input type="radio" name="txthkaca" id="txthkaca" value="N" /></td>
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
				<td><input type="radio" name="txthkace" id="txthkace" value="1" /></td>
				<td><input type="radio" name="txthkace" id="txthkace" value="2" /></td>
				<td><input type="radio" name="txthkace" id="txthkace" value="3" /></td>
				<td><input type="radio" name="txthkace" id="txthkace" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txthkacn" style="width:100%" rows="3"  id="txthkacn" ></textarea></td>
</tr>
<tr>
	<th colspan="9" align="left">ART AND DESIGN</th>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Applying Techniques</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtata" id="txtata" value="E" /></td>
				<td><input type="radio" name="txtata" id="txtata" value="M" /></td>
				<td><input type="radio" name="txtata" id="txtata" value="S" /></td>
				<td><input type="radio" name="txtata" id="txtata" value="N" /></td>
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
				<td><input type="radio" name="txtate" id="txtate" value="1" /></td>
				<td><input type="radio" name="txtate" id="txtate" value="2" /></td>
				<td><input type="radio" name="txtate" id="txtate" value="3" /></td>
				<td><input type="radio" name="txtate" id="txtate" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtatn" style="width:100%" rows="3"  id="txtatn" ></textarea></td>
</tr>
<tr>
	<td colspan="2" style="vertical-align:top">Creativity</td>
	<td align="center" style="vertical-align:top">
		<table border="0" width="100%">
			<tr>
				<td>E</td>
				<td>M</td>
				<td>S</td>
				<td>N</td>
			</tr>
			<tr>
				<td><input type="radio" name="txtca" id="txtca" value="E" /></td>
				<td><input type="radio" name="txtca" id="txtca" value="M" /></td>
				<td><input type="radio" name="txtca" id="txtca" value="S" /></td>
				<td><input type="radio" name="txtca" id="txtca" value="N" /></td>
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
				<td><input type="radio" name="txtce" id="txtce" value="1" /></td>
				<td><input type="radio" name="txtce" id="txtce" value="2" /></td>
				<td><input type="radio" name="txtce" id="txtce" value="3" /></td>
				<td><input type="radio" name="txtce" id="txtce" value="4" /></td>
			</tr>
		</table>		
	</td>
	<td colspan="4" align="center"><textarea name="txtcn" style="width:100%" rows="3"  id="txtcn" ></textarea></td>
</tr>
<tr>
	<th colspan="9" align="left"> CLASS TEACHER GENERAL COMMENTS</th>
</tr>
<tr>
	<td colspan="9" align="center">
		<textarea name="txtgc" style="width:100%" rows="4"  id="txtgc" ></textarea>
	</td>
</tr>
<tr>
	<th colspan="9" align="left">SUGGESTED TARGETS FOR THE FORTHCOMING YEAR</th>
</tr>
<tr>
	<td colspan="9" align="center">
		<textarea name="txtst" style="width:100%" rows="4"  id="txtst" ></textarea>
	</td>
</tr>
<tr>
	<td colspan="9" align="right">
		<input type="button" value="Save" onclick="javascript:saveendofschool(document.getElementById('txtsid').value,this.form,document.getElementById('txtlrn').value,document.getElementById('txtlwn').value,document.getElementById('txtlsln').value,document.getElementById('txtuaamn').value,document.getElementById('txtnaan').value,document.getElementById('txtssmn').value,document.getElementById('txtdhn').value,document.getElementById('txtisn').value,document.getElementById('txtkacn').value,document.getElementById('txtrsn').value,document.getElementById('txthkacn').value,document.getElementById('txtatn').value,document.getElementById('txtcn').value,document.getElementById('txtgc').value,document.getElementById('txtst').value,display);" class="input-submit"/>
		<input type="reset" value="Clear" class="input-submit"/>
	</td>
</tr>
</table>
<%
}
else if(ctr==1)
{
	List<Endofyear> helloLista = Endofyear.getKeysatgeoneend(sid);
	Iterator<Endofyear> helloItra = helloLista.iterator();
	while(helloItra.hasNext()){
		Endofyear enyr = helloItra.next();
%>
<table border="1" width="100%">
<tr>
<th align="center" colspan="2"><b>CURRICULUM AREA</b></th>
<th align="center"><b>ACHIEVEMENT</b></th>
<th align="center"><b>EFFORT</b></th>
<th colspan="4" align="center"><b>CLASS TEACHER COMMENTS</b></th>
</tr>
<tr>
<th colspan="9" align="left">LITERACY</th>
</tr>
<tr>
<td colspan="2">LITERACY <br /> Reading </td>
<td width="210" align="center" valign="middle">
<%if(enyr.getLra().equals("E"))
	{
	%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracyra" id="txtliteracyra" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="N" />

	<%
	}
else if(enyr.getLra().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracyra" id="txtliteracyra" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="N" />

<%
}
else if(enyr.getLra().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracyra" id="txtliteracyra" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="N" />
<%
	}
else if(enyr.getLra().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracyra" id="txtliteracyra" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyra" id="txtliteracyra" value="N" checked="checked"/>
<%} %>



</td>
<td width="194" align="center" valign="middle">
<%if(enyr.getLre()==1)
	{
	%>
	1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracyre" id="txtliteracyre" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="4" />
	<%
	}
else if(enyr.getLre()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracyre" id="txtliteracyre" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="4" />
<%
	}
else if(enyr.getLre()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracyre" id="txtliteracyre" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="4" />
<%
	}
else if(enyr.getLre()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracyre" id="txtliteracyre" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyre" id="txtliteracyre" value="4" checked="checked"/>
<%} %>

</td>
<td width="377" colspan="4" align="center"><textarea name="txtlrn" cols="60" rows="5"  id="txtlrn" ><%=enyr.getLrn()%></textarea></td>
</tr>




<tr>
<td colspan="2">LITERACY<br /> Writing </td>
<td align="center" valign="middle">
<%if(enyr.getLwa().equals("E"))
	{
	%>
	E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
E &nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="E" checked="checked"/>
M &nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="M" />
S &nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="S" />
N &nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="N" />

	<%
	}
else if(enyr.getLwa().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracywa" id="txtliteracywa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="N" />

<%
	}
else if(enyr.getLwa().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracywa" id="txtliteracywa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="N" />
<%
	}
else if(enyr.getLwa().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracywa" id="txtliteracywa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywa" id="txtliteracywa" value="N" checked="checked"/>
<%} %>

</td>

<td align="center" valign="middle">
<%if(enyr.getLwe()==1)
	{
	%>
	1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracywe" id="txtliteracywe" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="4" />
	<%
	}
else if(enyr.getLwe()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracywe" id="txtliteracywe" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="4" />
<%
	}
else if(enyr.getLwe()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracywe" id="txtliteracywe" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="4" />
<%
	}
else if(enyr.getLwe()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracywe" id="txtliteracywe" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracywe" id="txtliteracywe" value="4" checked="checked"/>
<%} %>


</td>
<td colspan="4" align="center"><textarea name="txtlwn" cols="60" rows="5"  id="txtlwn" ><%=enyr.getLwn()%></textarea></td>
</tr>

<tr>
<td colspan="2">LITERACY <br />Speaking and<br /> Listening </td>
<td align="center" valign="middle">
<%if(enyr.getLsa().equals("E"))
	{
	%>
	E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="N" />

	<%
	}
else if(enyr.getLsa().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="N" />

<%
	}
else if(enyr.getLsa().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="N" />
<%
	}
else if(enyr.getLsa().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtliteracyslea" id="txtliteracyslea" value="N" checked="checked"/>
<%} %>
</td>

<td align="center" valign="middle">
<%if(enyr.getLse()==1)
	{
	%>
	1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracysle" id="txtliteracysle" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="4" />
	<%
	}
else if(enyr.getLse()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracysle" id="txtliteracysle" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="4" />
<%
	}
else if(enyr.getLse()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracysle" id="txtliteracysle" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="4" />
<%
	}
else if(enyr.getLse()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtliteracysle" id="txtliteracysle" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtliteracysle" id="txtliteracysle" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txtlsln" cols="60" rows="5"  id="txtlsln" ><%=enyr.getLsn()%></textarea></td>
</tr>



<tr>
<th colspan="9" align="left">NUMERACY</th>
</tr>
<tr>
<td colspan="2">Using and Applying Maths</td>
<td align="center" valign="middle">
<%if(enyr.getNua().equals("E"))
	{
	%>
	E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtuaama" id="txtuaama" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="N" />

	<%
	}
else if(enyr.getNua().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtuaama" id="txtuaama" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="N" />

<%
	}
else if(enyr.getNua().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtuaama" id="txtuaama" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="N" />
<%
	}
else if(enyr.getNua().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtuaama" id="txtuaama" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtuaama" id="txtuaama" value="N" checked="checked"/>
<%} %>

</td>

<td align="center" valign="middle">
<%if(enyr.getNue()==1)
	{
	%>
<input type="radio" name="txtuaame" id="txtuaame" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="4" />
	<%
	}
else if(enyr.getNue()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtuaame" id="txtuaame" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="4" />
<%
	}
else if(enyr.getNue()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtuaame" id="txtuaame" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="4" />
<%
	}
else if(enyr.getNue()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtuaame" id="txtuaame" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtuaame" id="txtuaame" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txtuaamn" cols="60" rows="5"  id="txtuaamn" ><%=enyr.getNun()%></textarea></td>
</tr>

<tr>
<td colspan="2">Number and Algebra</td>
<td align="center" valign="middle">
<%
if(enyr.getNna().equals("E"))
	{
	%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtnaaa" id="txtnaaa" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="N" />

	<%
	}
else if(enyr.getNna().equals("M"))
	{
	%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtnaaa" id="txtnaaa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="N" />

	<%
	}
else if(enyr.getNua().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtnaaa" id="txtnaaa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="N" />
<%
	}
else if(enyr.getNua().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtnaaa" id="txtnaaa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtnaaa" id="txtnaaa" value="N" checked="checked"/>
<%} %>

</td>

<td align="center" valign="middle">
<%if(enyr.getNne()==1)
	{
	%>
	1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtnaae" id="txtnaae" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="4" />
	<%
	}
else if(enyr.getNne()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtnaae" id="txtnaae" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="4" />
<%
	}
else if(enyr.getNne()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtnaae" id="txtnaae" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="4" />
<%
	}
else if(enyr.getNne()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtnaae" id="txtnaae" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtnaae" id="txtnaae" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txtnaan" cols="60" rows="5"  id="txtnaan" ><%=enyr.getNnn()%></textarea></td>
</tr>




<tr>
<td colspan="2">Shape,Space and Measures</td>
<td align="center" valign="middle">
<%if(enyr.getSsma().equals("E"))
	{
	%>
	E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtssma" id="txtssma" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="N" />

	<%
	}
else if(enyr.getSsma().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtssma" id="txtssma" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="N" />

<%
	}
else if(enyr.getSsma().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtssma" id="txtssma" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="N" />
<%
	}
else if(enyr.getSsma().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtssma" id="txtssma" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtssma" id="txtssma" value="N" checked="checked"/>
<%} %>

</td>

<td align="center" valign="middle">
<%if(enyr.getSsme()==1)
	{
	%>
	1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtssme" id="txtssme" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="4" />
	<%
	}
else if(enyr.getSsme()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtssme" id="txtssme" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="4" />
<%
	}
else if(enyr.getSsme()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtssme" id="txtssme" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="4" />
<%
	}
else if(enyr.getSsme()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtssme" id="txtssme" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtssme" id="txtssme" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txtssmn" cols="60" rows="5"  id="txtssmn" ><%=enyr.getSsmn()%></textarea></td>
</tr>
<tr>
<td colspan="2">Data Handling</td>
<td align="center" valign="middle">
<%if(enyr.getDha().equals("E"))
	{
	%>
	E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtdha" id="txtdha" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="N" />

	<%
	}
else if(enyr.getDha().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtdha" id="txtdha" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="N" />

<%
	}
else if(enyr.getDha().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtdha" id="txtdha" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="N" />
<%
	}
else if(enyr.getDha().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtdha" id="txtdha" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtdha" id="txtdha" value="N" checked="checked"/>
<%} %>

</td>

<td align="center" valign="middle">
<%if(enyr.getDhe()==1)
	{
	%>
	1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtdhe" id="txtdhe" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="4" />
	<%
	}
else if(enyr.getDhe()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtdhe" id="txtdhe" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="4" />
<%
	}
else if(enyr.getDhe()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtdhe" id="txtdhe" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="4" />
<%
	}
else if(enyr.getDhe()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtdhe" id="txtdhe" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtdhe" id="txtdhe" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txtdhn" cols="60" rows="5"  id="txtdhn" ><%=enyr.getDhn()%></textarea></td>
</tr>


<tr>
<th colspan="9" align="left">SCIENCE</th>
</tr>
<tr>
<td colspan="2">Investigation Skills</td>
<td align="center" valign="middle">
<%if(enyr.getIsa().equals("E"))
	{
	%>
	E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtisa" id="txtisa" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" />

	<%
	}
else if(enyr.getIsa().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtisa" id="txtisa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" />

<%
	}
else if(enyr.getIsa().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtisa" id="txtisa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" />
<%
	}
else if(enyr.getIsa().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtisa" id="txtisa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtisa" id="txtisa" value="N" checked="checked"/>
<%} %>
</td>

<td align="center" valign="middle">
<%if(enyr.getIse()==1)
	{
	%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="4" />
	<%
	}
else if(enyr.getIse()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="4" />
<%
	}
else if(enyr.getIse()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="4" />
<%
	}
else if(enyr.getIse()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtise" id="txtise" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtise" id="txtise" value="4" checked="checked"/>
<%} %>
</td>
<td colspan="4" align="center"><textarea name="txtisn" cols="60" rows="5"  id="txtisn" ><%=enyr.getIsn()%></textarea></td>
</tr>
<tr>
<td colspan="2">Knowledge and Content</td>
<td align="center" valign="middle">
<%if(enyr.getSkca().equals("E"))
	{
	%>
	E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtkaca" id="txtkaca" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="N" />

	<%
	}
else if(enyr.getSkca().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtkaca" id="txtkaca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="N" />

<%
	}
else if(enyr.getSkca().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtkaca" id="txtkaca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="N" />
<%
	}
else if(enyr.getSkca().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtkaca" id="txtkaca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtkaca" id="txtkaca" value="N" checked="checked"/>
<%} %>

</td>

<td align="center" valign="middle">
<%if(enyr.getSkce()==1)
	{
	%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtkace" id="txtkace" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="4" />
	<%
	}
else if(enyr.getSkce()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtkace" id="txtkace" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="4" />
<%
	}
else if(enyr.getSkce()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtkace" id="txtkace" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="4" />
<%
	}
else if(enyr.getSkce()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtkace" id="txtkace" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtkace" id="txtkace" value="4" checked="checked"/>
<%} %>
</td>
<td colspan="4" align="center"><textarea name="txtkacn" cols="60" rows="5"  id="txtkacn" ><%=enyr.getSkcn()%></textarea></td>
</tr>
<tr>
<th colspan="9" align="left">Humanities</th>
</tr>
<tr>
<td colspan="2">Research Skills</td>
<td align="center" valign="middle">
<%if(enyr.getRsa().equals("E"))
	{
	%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtrsa" id="txtrsa" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="N" />

	<%
	}
else if(enyr.getRsa().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtrsa" id="txtrsa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="N" />

<%
	}
else if(enyr.getRsa().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtrsa" id="txtrsa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="N" />
<%
	}
else if(enyr.getRsa().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtrsa" id="txtrsa" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtrsa" id="txtrsa" value="N" checked="checked"/>
<%} %>
</td>

<td align="center" valign="middle">
<%if(enyr.getRse()==1)
	{
	%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtrse" id="txtrse" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="4" />
	<%
	}
else if(enyr.getRse()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtrse" id="txtrse" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="4" />
<%
	}
else if(enyr.getRse()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtrse" id="txtrse" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="4" />
<%
	}
else if(enyr.getRse()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtrse" id="txtrse" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtrse" id="txtrse" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txtrsn" cols="60" rows="5"  id="txtrsn" ><%=enyr.getRsn()%></textarea></td>
</tr>
<tr>
<td colspan="2">Knowledge and Content</td>
<td align="center" valign="middle">
<%if(enyr.getKca().equals("E"))
	{
	%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txthkaca" id="txthkaca" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="N" />

	<%
	}
else if(enyr.getKca().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txthkaca" id="txthkaca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="N" />

<%
	}
else if(enyr.getKca().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txthkaca" id="txthkaca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="N" />
<%
	}
else if(enyr.getKca().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txthkaca" id="txthkaca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txthkaca" id="txthkaca" value="N" checked="checked"/>
<%} %>

</td>

<td align="center" valign="middle">
<%if(enyr.getKce()==1)
	{
	%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txthkace" id="txthkace" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="2" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="3" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="4" />
	<%
	}
else if(enyr.getKce()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txthkace" id="txthkace" value="1" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="3" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="4" />
<%
	}
else if(enyr.getKce()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txthkace" id="txthkace" value="1" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="2" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="4" />
<%
	}
else if(enyr.getKce()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txthkace" id="txthkace" value="1" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="2" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="3" />
&nbsp;&nbsp;<input type="radio" name="txthkace" id="txthkace" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txthkacn" cols="60" rows="5"  id="txthkacn" ><%=enyr.getKcn()%></textarea></td>
</tr>

<tr>
<th colspan="9" align="left">ART AND DESIGN</th>
</tr>
<tr>
<td colspan="2">Applying Techniques</td>
<td align="center" valign="middle">
<%if(enyr.getAta().equals("E"))
	{
	%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtata" id="txtata" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="N" />

	<%
	}
else if(enyr.getAta().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtata" id="txtata" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="N" />

<%
	}
else if(enyr.getAta().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtata" id="txtata" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="N" />
<%
	}
else if(enyr.getAta().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtata" id="txtata" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtata" id="txtata" value="N" checked="checked"/>
<%} %>
</td>

<td align="center" valign="middle">
<%if(enyr.getAte()==1)
	{
	%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtate" id="txtate" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="4" />
	<%
	}
else if(enyr.getAte()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtate" id="txtate" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="4" />
<%
	}
else if(enyr.getAte()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtate" id="txtate" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="4" />
<%
	}
else if(enyr.getAte()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtate" id="txtate" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtate" id="txtate" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txtatn" cols="60" rows="5"  id="txtatn" ><%=enyr.getAtn()%></textarea></td>
</tr>
<tr>
<td colspan="2">Creativity</td>
<td align="center" valign="middle">
<%if(enyr.getCa().equals("E"))
	{
	%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtca" id="txtca" value="E" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="N" />

	<%
	}
else if(enyr.getCa().equals("M"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtca" id="txtca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="M" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="N" />
<%
	}
else if(enyr.getCa().equals("S"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtca" id="txtca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="S" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="N" />
<%
	}
else if(enyr.getCa().equals("N"))
{
%>
E &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;N<br />
<input type="radio" name="txtca" id="txtca" value="E" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="M" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="S" />
&nbsp;&nbsp;<input type="radio" name="txtca" id="txtca" value="N" checked="checked"/>
<%} %>
</td>

<td align="center" valign="middle">
<%if(enyr.getCe()==1)
	{
	%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtce" id="txtce" value="1" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="4" />
	<%
	}
else if(enyr.getCe()==2)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtce" id="txtce" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="2" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="4" />
<%
	}
else if(enyr.getCe()==3)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtce" id="txtce" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="3" checked="checked"/>
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="4" />
<%
	}
else if(enyr.getCe()==4)
{
%>
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<br>
<input type="radio" name="txtce" id="txtce" value="1" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="2" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="3" />
&nbsp;&nbsp;<input type="radio" name="txtce" id="txtce" value="4" checked="checked"/>
<%} %>

</td>
<td colspan="4" align="center"><textarea name="txtcn" cols="60" rows="5"  id="txtcn" ><%=enyr.getCn()%></textarea></td>
</tr>



<tr>
<th colspan="9" align="left"> CLASS TEACHER GENERAL COMMENTS</th>
</tr>


<tr>
<td colspan="9" align="center"><textarea name="txtgc" cols="60" rows="7"  id="txtgc" ><%=enyr.getCtgc()%></textarea></td>
</tr>

<tr>
<th colspan="9" align="left">SUGGESTED TARGETS FOR THE FORTHCOMING YEAR</th>
</tr>


<tr>
<td colspan="9" align="center"><textarea name="txtst" cols="60" rows="7"  id="txtst" ><%=enyr.getStfcy()%></textarea></td>
</tr>

<tr>
<td colspan="9" align="center"><input type="button" value="Save" onclick="javascript:updateendofschool(document.getElementById('txtsid').value,this.form,document.getElementById('txtlrn').value,document.getElementById('txtlwn').value,document.getElementById('txtlsln').value,document.getElementById('txtuaamn').value,document.getElementById('txtnaan').value,document.getElementById('txtssmn').value,document.getElementById('txtdhn').value,document.getElementById('txtisn').value,document.getElementById('txtkacn').value,document.getElementById('txtrsn').value,document.getElementById('txthkacn').value,document.getElementById('txtatn').value,document.getElementById('txtcn').value,document.getElementById('txtgc').value,document.getElementById('txtst').value,display)"/></td>
</tr>
</table>

<%} }%>
