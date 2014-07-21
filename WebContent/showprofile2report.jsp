<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
String sid=request.getParameter("sid");
int secid=Integer.parseInt(request.getParameter("secid"));
String dob=request.getParameter("dob");
%>

<%
	List<Receptionendyearassment> helloLista = Receptionendyearassment.selectall(sid);
	Iterator<Receptionendyearassment> helloItra = helloLista.iterator();
	
	while(helloItra.hasNext()){
		Receptionendyearassment rec = helloItra.next();
		%>
<div id="printReportDiv">
<center><font size="5"><b>EYFS Profile 2-Reception End of Year Assessment</b></font></center><br />
<table width="100%" border="0">
  <tr>
    <td width="21%" align="center"><B>Child's Name</B></td>
    <td width="37%"><%
 List<Studentclass> helloListN = Studentclass.getselectedStudentbyclass(sid);
    Iterator<Studentclass> helloItrN = helloListN.iterator();
    while(helloItrN.hasNext()){
    	Studentclass stu = helloItrN.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
		out.println(studentname);
		}
		%>
	  </td>
	<td width="13%" align="left"><b>DOB</b></td>
	
	<td width="29%"><%=dob%></td>
  </tr>
  <tr>
    <td align="center"><b>Teacher</b></td>
    <td>
	<%
List<Teacherandhade> helloListt = Teacherandhade.getAllTeacher(sid);
Iterator<Teacherandhade> helloItrt = helloListt.iterator();
while(helloItrt.hasNext()){
	Teacherandhade te = helloItrt.next();
	String teacher=te.getFname()+" "+te.getMname();
	out.println(teacher);
	}%>
	</td>
	
	<td align="left"><b>Academic Year</b></td>
    <td>
	<%
	List<Acadamicyear> acy=Acadamicyear.accay();
	Iterator<Acadamicyear> acyItr = acy.iterator();
			while(acyItr.hasNext()){
				Acadamicyear ay = acyItr.next();
				int ayid=ay.getId();
				List<Acadamicyear> acya=Acadamicyear.getaccay(ayid);
				Iterator<Acadamicyear> acyItra = acya.iterator();
				while(acyItra.hasNext()){
					Acadamicyear ay2 = acyItra.next();
				
	%><%out.print(ay2.getAcademic_year_name()); } }%>	
	</td>
  </tr>
</table><br />
<table border="1" width="100%">
<tr>
    <th colspan="2">Area of Learning </th>
	<th width="211">Aspect </th>
	<th width="74">Emerging</th>
	<th width="109">Expected</th>
	<th width="77">Exceeding</th>
 </tr>
  <tr>
    <td width="235" rowspan="3"><b>Communication and language </b></td>
	<td width="113"><b>ELG 01</b></td>
    <td valign="top">Listening and attention </td>
	<%if(rec.getElg01() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%} if(rec.getElg01() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td width="77">&nbsp;</td>
	<%} if(rec.getElg01() == 3){%>
	<td width="77" align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td width="19">&nbsp;</td>
	<%}%>
  </tr>
   <tr>
    <td><b>ELG 02</b></td>
    <td valign="top">Underestanding</td>
	<%if(rec.getElg02() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg02() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg02() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
   </tr>
   
   <tr>
    <td><b>ELG 03</b></td>
    <td height="34" valign="top">Spaking </td>
		<%if(rec.getElg03() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg03() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg03() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
  </tr>
  
  
  <tr>
    <td  rowspan="2"><b>Physical Development</b> </td>
	<td><b>ELG 04</b></td>
    <td valign="top">Moving and handling </td>
	
		<%if(rec.getElg04() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg04() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg04() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
    
  </tr>
   <tr>
    <td><b>ELG 05</b></td>
    <td valign="top">Health and self-care</td>
	<%if(rec.getElg05() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg05() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg05() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>  
  </tr>
<tr>
    <td  rowspan="3"><b>Personal,Social and Emotional Development</b> </td>
	<td><b>ELG 06</b></td>
	<td valign="top">Self-confidence and self-awareness </td>
	<%if(rec.getElg06() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg06() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg06() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
  </tr>
   <tr>
   <td><B>ELG 07</B></td>
       <td valign="top">Managing feelings and behaviour </td>
     <%if(rec.getElg07() == 1){
	%>

	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg07() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg07() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
  </tr>
   <tr>
   <td><B>ELG 08</B></td>
   <td valign="top">Making relationships </td>
   <%if(rec.getElg08() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg08() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg08() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
   </tr>
  
  
  
  <tr>
    <td  rowspan="2"><b>Literacy </b></td>
	<td><B>ELG 09</B></td>
    <td valign="top">Reading </td>
	<%if(rec.getElg09() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg09() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg09() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
  </tr>
   <tr>
   <td><B>ELG 10</B></td>
    <td valign="top">Writing</td>
	<%if(rec.getElg10() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg10() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg10() == 3){%>
	<td align="center" ><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
</tr>
  
  
  <tr>
    <td rowspan="2"><b>Mathematics</b> </td>
	 <td><B>ELG 11</B></td>
    <td valign="top">Numbers</td>
	<%if(rec.getElg11() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg11() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg11() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
</tr>
   <tr>
    <td><B>ELG 12</B></td>
    <td valign="top">Shapes,space and measures </td>
	<%if(rec.getElg12() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg12() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg12() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>    
  </tr>
  
  
  
  <tr>
    <td  rowspan="3" ><b>Underestanding the world</b> </td>
	 <td><B>ELG 13</B></td>
    <td valign="top">People and communities </td>
	<%if(rec.getElg13() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg13() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg13() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
  </tr>
   <tr>
    <td><B>ELG 14</B></td>
    <td valign="top">The world </td>
	<%if(rec.getElg14() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg14() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg14() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
    
  </tr>
   <tr>
    <td><B>ELG 15</B></td>
    <td valign="top">Technology</td>
	<%if(rec.getElg15() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg15() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg15() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
    
  </tr>
 
  
  
  
   <tr>
    <td rowspan="2"><b>Expressive arts and design </b></td>
	 <td><B>ELG 16</B></td>
    <td valign="top">Exploring and using media and materials </td>
	<%if(rec.getElg16() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg16() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg16() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>
   
  </tr>
   <tr>
    <td><B>ELG 17</B></td>
    <td valign="top">Being imaginative </td>
	<%if(rec.getElg17() == 1){
	%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}if(rec.getElg17() == 2){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<% }if(rec.getElg17() == 3){%>
	<td align="center"><img src="images/ico-done.gif"></td>
	<%} else{%>
	<td>&nbsp;</td>
	<%}%>   
  </tr>   
</table>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<%
	}
%>
<div id="printer" align="right"><a href="#.jsp" onclick="printDiv('printReportDiv')" style="color:#0000FF">Click to print <img src="images/printer.jpg" /></a></div>
