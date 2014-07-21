<script type="text/javascript" src="js/rptvalidation.js">
	
</script>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
	String sid = request.getParameter("id");
	List<Receptionendyearassment> helloList = Receptionendyearassment
			.selectall(sid);
	Iterator<Receptionendyearassment> helloItr = helloList.iterator();
%>

<%
	int ctr = 0;
	while (helloItr.hasNext()) {
		Receptionendyearassment endyear = helloItr.next();
		String a = String.valueOf(endyear.getCurentdate());
		if (a != null) {
			ctr = 1;
		}
	}
%>

<%
if (ctr == 0) {
%>
<table border="1" width="100%">
	<tr>
		<th colspan="3">Area of Learning</th>
		<th width="226">Aspect</th>
		<th width="562" colspan="3">Evaluation</th>
	</tr>
	<tr>
		<td colspan="3" rowspan="3"><b>Communication and language </b>
		</td>
		<td valign="top">Listening and attention</td>
		<td colspan="3" valign="top" align="center">
		<div id="a" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlistening" id="txtlistening" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlistening" id="txtlistening"
			value="2" />&nbsp; &nbsp;<input type="radio" name="txtlistening"
			id="txtlistening" value="3" />&nbsp;
		</div>
		</td>
	</tr>
	<tr>
		<td valign="top">Underestanding</td>
		<td colspan="3" valign="top" align="center">
		<div id="b" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtunderstanding" id="txtlistening"
			value="1" />&nbsp; &nbsp;<input type="radio" name="txtunderstanding"
			id="txtlistening" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtunderstanding" id="txtlistening" value="3" />&nbsp;
			</div>
			</td>
	</tr>

	<tr>
		<td height="34" valign="top">spaking</td>
		<td colspan="3" valign="top" align="center">
		<div id="c" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtspeaking" id="txtspeaking" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtspeaking" id="txtspeaking"
			value="2" />&nbsp; &nbsp;<input type="radio" name="txtspeaking"
			id="txtspeaking" value="3" />&nbsp;
		</div>
		</td>
	</tr>


	<tr>
		<td rowspan="2" colspan="3"><b>Physical Development</b></td>
		<td valign="top">moving and handling</td>

		<td colspan="3" valign="top" align="center">
		<div id="d" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmh" id="txtmh" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmh" id="txtmh" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtmh" id="txtmh" value="3" />&nbsp;
      </div>
		</td>

	</tr>
	<tr>
		<td valign="top">Health and self-care</td>
		<td align="center" valign="top" colspan="3">
		<div id="e" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txthsc" id="txthsc" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txthsc" id="txthsc" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txthsc" id="txthsc" value="3" />&nbsp;
       </div>
		</td>
	</tr>
	<tr>
		<td rowspan="3" colspan="3"><b>Personal,Social and Emotional
				Development</b></td>
		<td valign="top">Self-confidence and self-awareness</td>
		<td align="center" valign="top" colspan="3">
		<div id="f" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpsed" id="txtpsed" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtpsed" id="txtpsed" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtpsed" id="txtpsed" value="3" />&nbsp;
        </div>
		</td>
	</tr>
	<tr>
		<td valign="top">Managing feelings and behaviour</td>
		<td align="center" valign="top" colspan="3">
		<div id="g" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmfb" id="txtmfb" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmfb" id="txtmfb" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtmfb" id="txtmfb" value="3" />&nbsp;
        </div>
		</td>
	</tr>
	<tr>
		<td valign="top">Making relationships</td>
		<td align="center" valign="top" colspan="3">
		<div id="h" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmrs" id="txtmrs" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmrs" id="txtmrs" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtmrs" id="txtmrs" value="3" />&nbsp;
        </div>
		</td>
	</tr>



	<tr>
		<td rowspan="2" colspan="3"><b>Literacy </b>
		</td>
		<td valign="top">Reading</td>
		<td align="center" valign="top" colspan="3">
		<div id="i" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlr" id="txtlr" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlr" id="txtlr" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtlr" id="txtlr" value="3" />&nbsp;
      </div>
		</td>
	</tr>
	<tr>
		<td valign="top">Writing</td>
		<td align="center" valign="top" colspan="3">
		<div id="j" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlw" id="txtlw" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlw" id="txtlw" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtlw" id="txtlw" value="3" />&nbsp;
</div>
		</td>
	</tr>


	<tr>
		<td rowspan="2" colspan="3"><b>Mathematics</b></td>
		<td valign="top">Numbers</td>
		<td align="center" valign="top" colspan="3">
		<div id="k" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtnumb" id="txtnumb" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtnumb" id="txtnumb" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtnumb" id="txtnumb" value="3" />&nbsp;
        </div>
		</td>
	</tr>
	<tr>
		<td valign="top">Shapes,space and measures</td>
		<td align="center" valign="top" colspan="3">
		<div id="l" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtssm" id="txtssm" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtssm" id="txtssm" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtssm" id="txtssm" value="3" />&nbsp;
        </div>
		</td>
	</tr>



	<tr>
		<td rowspan="3" colspan="3"><b>Underestanding the world</b></td>
		<td valign="top">People and communities</td>
		<td align="center" valign="top" colspan="3">
		<div id="m" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpc" id="txtpc" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtpc" id="txtpc" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtpc" id="txtpc" value="3" />&nbsp;
		</div>
		</td>
	</tr>
	<tr>
		<td valign="top">The world</td>
		<td align="center" valign="top" colspan="3">
		<div id="n" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttw" id="txttw" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txttw" id="txttw" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txttw" id="txttw" value="3" />&nbsp;
		</div>
		</td>

	</tr>
	<tr>
		<td valign="top">Technology</td>
		<td align="center" valign="top" colspan="3">
		<div id="o" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttechno" id="txttechno" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txttechno" id="txttechno" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txttechno" id="txttechno" value="3" />&nbsp;
        </div>
		</td>

	</tr>




	<tr>
		<td rowspan="2" colspan="3"><b>Expressive arts and design </b>
		</td>
		<td valign="top">Exploring and using media and materials</td>
		<td align="center" valign="top" colspan="3">
		<div id="p" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txteumm" id="txteumm" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txteumm" id="txteumm" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txteumm" id="txteumm" value="3" />&nbsp;
		</div>
		</td>

	</tr>
	<tr>
		<td valign="top">Being imaginative</td>
		<td align="center" valign="top" colspan="3">
		<div id="q" style="width:200px;">
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtbim" id="txtbim" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtbim" id="txtbim" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtbim" id="txtbim" value="3" />&nbsp;
		</div>
		</td>
	</tr>
	<tr>
		<td colspan="9" align="center"><input type="button" value="Save"
			onClick="javascript:saveprofile(document.getElementById('txtsid').value,this.form)" />
		</td>
	</tr>
</table>

<%
	} else if (ctr == 1) {
		List<Receptionendyearassment> helloLista = Receptionendyearassment
				.selectall(sid);
		Iterator<Receptionendyearassment> helloItra = helloLista
				.iterator();

		while (helloItra.hasNext()) {
			Receptionendyearassment rec = helloItra.next();
%>
<table border="1" width="100%">
	<tr>
		<th colspan="3">Area of Learning</th>
		<th width="226">Aspect</th>
		<th width="562" colspan="3">Evaluation</th>
	</tr>
	<tr>
		<td colspan="3" rowspan="3"><b>Communication and language </b>
		</td>
		<td valign="top">Listening and attention</td>
		<td colspan="3" valign="top" align="center">
			<%
				if (rec.getElg01() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlistening" id="txtlistening" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio"
			name="txtlistening" id="txtlistening" value="2" />&nbsp; &nbsp;<input
			type="radio" name="txtlistening" id="txtlistening" value="3" />&nbsp;<%
 	} else if (rec.getElg01() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlistening" id="txtlistening" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlistening" id="txtlistening"
			value="2" checked="checked" />&nbsp; &nbsp;<input type="radio"
			name="txtlistening" id="txtlistening" value="3" />&nbsp; <%
 	} else if (rec.getElg01() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlistening" id="txtlistening" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlistening" id="txtlistening"
			value="2" />&nbsp; &nbsp;<input type="radio" name="txtlistening"
			id="txtlistening" value="3" checked="checked" />&nbsp; <%
 	} else if (rec.getElg01() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlistening" id="txtlistening" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlistening" id="txtlistening"
			value="2" />&nbsp; &nbsp;<input type="radio" name="txtlistening"
			id="txtlistening" value="3" />&nbsp; <%
 	}
 %>
		</td>
	</tr>
	<tr>
		<td valign="top">Underestanding</td>
		<td colspan="3" valign="top" align="center">
			<%
				if (rec.getElg02() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtunderstanding" id="txtunderstanding"
			value="1" checked="checked" />&nbsp; &nbsp;<input type="radio"
			name="txtunderstanding" id="txtunderstanding" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtunderstanding"
			id="txtunderstanding" value="3" />&nbsp; <%
 	} else if (rec.getElg02() == 2) {
 %>

			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtunderstanding" id="txtunderstanding"
			value="1" />&nbsp; &nbsp;<input type="radio" name="txtunderstanding"
			id="txtunderstanding" value="2" checked="checked" />&nbsp; &nbsp;<input
			type="radio" name="txtunderstanding" id="txtunderstanding" value="3" />&nbsp;

			<%
				} else if (rec.getElg02() == 3) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtunderstanding" id="txtunderstanding"
			value="1" />&nbsp; &nbsp;<input type="radio" name="txtunderstanding"
			id="txtunderstanding" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtunderstanding" id="txtunderstanding" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg02() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtunderstanding" id="txtunderstanding"
			value="1" />&nbsp; &nbsp;<input type="radio" name="txtunderstanding"
			id="txtunderstanding" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtunderstanding" id="txtunderstanding" value="3" />&nbsp; <%
 	}
 %>

		</td>
	</tr>

	<tr>
		<td height="34" valign="top">spaking</td>
		<td colspan="3" valign="top" align="center">
			<%
				if (rec.getElg03() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtspeaking" id="txtspeaking" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio"
			name="txtspeaking" id="txtspeaking" value="2" />&nbsp; &nbsp;<input
			type="radio" name="txtspeaking" id="txtspeaking" value="3" />&nbsp;<%
 	} else if (rec.getElg03() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtspeaking" id="txtspeaking" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtspeaking" id="txtspeaking"
			value="2" checked="checked" />&nbsp; &nbsp;<input type="radio"
			name="txtspeaking" id="txtspeaking" value="3" />&nbsp; <%
 	} else if (rec.getElg03() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtspeaking" id="txtspeaking" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtspeaking" id="txtspeaking"
			value="2" />&nbsp; &nbsp;<input type="radio" name="txtspeaking"
			id="txtspeaking" value="3" checked="checked" />&nbsp; <%
 	} else if (rec.getElg03() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtspeaking" id="txtspeaking" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtspeaking" id="txtspeaking"
			value="2" />&nbsp; &nbsp;<input type="radio" name="txtspeaking"
			id="txtspeaking" value="3" />&nbsp; <%
 	}
 %>
		</td>
	</tr>


	<tr>
		<td rowspan="2" colspan="3"><b>Physical Development</b></td>
		<td valign="top">moving and handling</td>

		<td colspan="3" valign="top" align="center">
			<%
				if (rec.getElg04() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmh" id="txtmh" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtmh"
			id="txtmh" value="2" />&nbsp; &nbsp;<input type="radio" name="txtmh"
			id="txtmh" value="3" />&nbsp;<%
 	} else if (rec.getElg04() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmh" id="txtmh" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmh" id="txtmh" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtmh"
			id="txtmh" value="3" />&nbsp; <%
 	} else if (rec.getElg04() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmh" id="txtmh" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmh" id="txtmh" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtmh" id="txtmh" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg04() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtspeaking" id="txtspeaking" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtspeaking" id="txtspeaking"
			value="2" />&nbsp; &nbsp;<input type="radio" name="txtspeaking"
			id="txtspeaking" value="3" />&nbsp; <%
 	}
 %>
		</td>

	</tr>
	<tr>
		<td valign="top">Health and self-care</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg05() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txthsc" id="txthsc" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txthsc"
			id="txthsc" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txthsc" id="txthsc" value="3" />&nbsp;<%
 	} else if (rec.getElg05() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txthsc" id="txthsc" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txthsc" id="txthsc" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txthsc"
			id="txthsc" value="3" />&nbsp; <%
 	} else if (rec.getElg05() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txthsc" id="txthsc" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txthsc" id="txthsc" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txthsc" id="txthsc" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg05() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txthsc" id="txthsc" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txthsc" id="txthsc" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txthsc" id="txthsc" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>
	<tr>
		<td rowspan="3" colspan="3"><b>Personal,Social and Emotional
				Development</b></td>
		<td valign="top">Self-confidence and self-awareness</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg06() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpsed" id="txtpsed" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtpsed"
			id="txtpsed" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtpsed" id="txtpsed" value="3" />&nbsp;<%
 	} else if (rec.getElg06() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpsed" id="txtpsed" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtpsed" id="txtpsed" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtpsed"
			id="txtpsed" value="3" />&nbsp; <%
 	} else if (rec.getElg06() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpsed" id="txtpsed" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtpsed" id="txtpsed" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtpsed" id="txtpsed" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg06() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpsed" id="txtpsed" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtpsed" id="txtpsed" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtpsed" id="txtpsed" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>
	<tr>
		<td valign="top">Managing feelings and behaviour</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg07() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmfb" id="txtmfb" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtmfb"
			id="txtmfb" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtmfb" id="txtmfb" value="3" />&nbsp;<%
 	} else if (rec.getElg07() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmfb" id="txtmfb" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmfb" id="txtmfb" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtmfb"
			id="txtmfb" value="3" />&nbsp; <%
 	} else if (rec.getElg07() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmfb" id="txtmfb" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmfb" id="txtmfb" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtmfb" id="txtmfb" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg07() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmfb" id="txtmfb" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmfb" id="txtmfb" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtmfb" id="txtmfb" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>
	<tr>
		<td valign="top">Making relationships</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg08() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmrs" id="txtmrs" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtmrs"
			id="txtmrs" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtmrs" id="txtmrs" value="3" />&nbsp;<%
 	} else if (rec.getElg08() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmrs" id="txtmrs" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmrs" id="txtmrs" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtmrs"
			id="txtmrs" value="3" />&nbsp; <%
 	} else if (rec.getElg08() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmrs" id="txtmrs" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmrs" id="txtmrs" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtmrs" id="txtmrs" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg08() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtmrs" id="txtmrs" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtmrs" id="txtmrs" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtmrs" id="txtmrs" value="3"
			checked="checked" />&nbsp; <%
 	}
 %>
		</td>
	</tr>



	<tr>
		<td rowspan="2" colspan="3"><b>Literacy </b>
		</td>
		<td valign="top">Reading</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg09() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlr" id="txtlr" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtlr"
			id="txtlr" value="2" />&nbsp; &nbsp;<input type="radio" name="txtlr"
			id="txtlr" value="3" />&nbsp;<%
 	} else if (rec.getElg09() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlr" id="txtlr" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlr" id="txtlr" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtlr"
			id="txtlr" value="3" />&nbsp; <%
 	} else if (rec.getElg09() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlr" id="txtlr" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlr" id="txtlr" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtlr" id="txtlr" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg09() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlr" id="txtlr" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlr" id="txtlr" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtlr" id="txtlr" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>
	<tr>
		<td valign="top">Writing</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg10() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlw" id="txtlw" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtlw"
			id="txtlw" value="2" />&nbsp; &nbsp;<input type="radio" name="txtlw"
			id="txtlw" value="3" />&nbsp;<%
 	} else if (rec.getElg10() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlw" id="txtlw" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlw" id="txtlw" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtlw"
			id="txtlw" value="3" />&nbsp; <%
 	} else if (rec.getElg10() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlw" id="txtlw" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlw" id="txtlw" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtlw" id="txtlw" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg10() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtlw" id="txtlw" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtlw" id="txtlw" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtlw" id="txtlw" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>


	<tr>
		<td rowspan="2" colspan="3"><b>Mathematics</b></td>
		<td valign="top">Numbers</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg11() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtnumb" id="txtnumb" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtnumb"
			id="txtnumb" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtnumb" id="txtnumb" value="3" />&nbsp;<%
 	} else if (rec.getElg11() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtnumb" id="txtnumb" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtnumb" id="txtnumb" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtnumb"
			id="txtnumb" value="3" />&nbsp; <%
 	} else if (rec.getElg11() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtnumb" id="txtnumb" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtnumb" id="txtnumb" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtnumb" id="txtnumb" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg11() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtnumb" id="txtnumb" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtnumb" id="txtnumb" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtnumb" id="txtnumb" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>
	<tr>
		<td valign="top">Shapes,space and measures</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg12() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtssm" id="txtssm" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtssm"
			id="txtssm" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtssm" id="txtssm" value="3" />&nbsp;<%
 	} else if (rec.getElg12() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtssm" id="txtssm" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtssm" id="txtssm" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtssm"
			id="txtssm" value="3" />&nbsp; <%
 	} else if (rec.getElg12() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtssm" id="txtssm" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtssm" id="txtssm" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtssm" id="txtssm" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg12() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtssm" id="txtssm" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtssm" id="txtssm" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtssm" id="txtssm" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>



	<tr>
		<td rowspan="3" colspan="3"><b>Underestanding the world</b></td>
		<td valign="top">People and communities</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg13() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpc" id="txtpc" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtpc"
			id="txtpc" value="2" />&nbsp; &nbsp;<input type="radio" name="txtpc"
			id="txtpc" value="3" />&nbsp;<%
 	} else if (rec.getElg13() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpc" id="txtpc" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtpc" id="txtpc" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtpc"
			id="txtpc" value="3" />&nbsp; <%
 	} else if (rec.getElg13() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpc" id="txtpc" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtpc" id="txtpc" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtpc" id="txtpc" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg13() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtpc" id="txtpc" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtpc" id="txtpc" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtpc" id="txtpc" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>
	<tr>
		<td valign="top">The world</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg14() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttw" id="txttw" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txttw"
			id="txttw" value="2" />&nbsp; &nbsp;<input type="radio" name="txttw"
			id="txttw" value="3" />&nbsp;<%
 	} else if (rec.getElg14() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttw" id="txttw" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txttw" id="txttw" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txttw"
			id="txttw" value="3" />&nbsp; <%
 	} else if (rec.getElg14() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttw" id="txttw" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txttw" id="txttw" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txttw" id="txttw" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg14() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttw" id="txttw" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txttw" id="txttw" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txttw" id="txttw" value="3" />&nbsp;
			<%
				}
			%>
		</td>

	</tr>
	<tr>
		<td valign="top">Technology</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg15() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttechno" id="txttechno" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txttechno"
			id="txttechno" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txttechno" id="txttechno" value="3" />&nbsp;<%
 	} else if (rec.getElg15() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttechno" id="txttechno" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txttechno" id="txttechno" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txttechno"
			id="txttechno" value="3" />&nbsp; <%
 	} else if (rec.getElg15() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttechno" id="txttechno" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txttechno" id="txttechno" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txttechno" id="txttechno" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg15() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txttechno" id="txttechno" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txttechno" id="txttechno" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txttechno" id="txttechno" value="3" />&nbsp;
			<%
				}
			%>
		</td>

	</tr>




	<tr>
		<td rowspan="2" colspan="3"><b>Expressive arts and design </b>
		</td>
		<td valign="top">Exploring and using media and materials</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg16() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txteumm" id="txteumm" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txteumm"
			id="txteumm" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txteumm" id="txteumm" value="3" />&nbsp;<%
 	} else if (rec.getElg16() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txteumm" id="txteumm" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txteumm" id="txteumm" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txteumm"
			id="txteumm" value="3" />&nbsp; <%
 	} else if (rec.getElg16() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txteumm" id="txteumm" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txteumm" id="txteumm" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txteumm" id="txteumm" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg16() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txteumm" id="txteumm" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txteumm" id="txteumm" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txteumm" id="txteumm" value="3" />&nbsp;
			<%
				}
			%>
		</td>

	</tr>
	<tr>
		<td valign="top">Being imaginative</td>
		<td align="center" valign="top" colspan="3">
			<%
				if (rec.getElg17() == 1) {
			%>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtbim" id="txtbim" value="1"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtbim"
			id="txtbim" value="2" />&nbsp; &nbsp;<input type="radio"
			name="txtbim" id="txtbim" value="3" />&nbsp;<%
 	} else if (rec.getElg17() == 2) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtbim" id="txtbim" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtbim" id="txtbim" value="2"
			checked="checked" />&nbsp; &nbsp;<input type="radio" name="txtbim"
			id="txtbim" value="3" />&nbsp; <%
 	} else if (rec.getElg17() == 3) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtbim" id="txtbim" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtbim" id="txtbim" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtbim" id="txtbim" value="3"
			checked="checked" />&nbsp; <%
 	} else if (rec.getElg17() == 0) {
 %>
			1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3<br>
			<input type="radio" name="txtbim" id="txtbim" value="1" />&nbsp;
			&nbsp;<input type="radio" name="txtbim" id="txtbim" value="2" />&nbsp;
			&nbsp;<input type="radio" name="txtbim" id="txtbim" value="3" />&nbsp;
			<%
				}
			%>
		</td>
	</tr>

	<tr>
		<td colspan="9" align="center"><input type="button"	value="Save" onClick="javascript:updateprofile(document.getElementById('txtsid').value,this.form)" />
		</td>
	</tr>

</table>


<%
	}
	}
%>