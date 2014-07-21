<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>	
    <%
    int secid=Integer.parseInt(request.getParameter("secid"));
    String sid=request.getParameter("sid");
    int age=Integer.parseInt(request.getParameter("age"));
    	List<Keysatgeone> helloLista = Keysatgeone.getKeysatgeone(sid);
    	Iterator<Keysatgeone> helloItra = helloLista.iterator();
    	while(helloItra.hasNext())
		 {
			Keysatgeone ksod = helloItra.next();
   %>
   <div id="printReportDiv">
   <center><font size="5"><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
<center><b>Key Stage One Mid Year Primary School Report</b></center><br /><br />

<table border="0" width="100%" align="center">
<tr>
<td width="134"><B>Name :</B></td>
<%
 List<Studentclass> helloListN = Studentclass.getselectedStudentbyclass(sid);
    Iterator<Studentclass> helloItrN = helloListN.iterator();
    while(helloItrN.hasNext()){
    	Studentclass stu = helloItrN.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
%>

<td width="212"><B><%=studentname%></B></td>
<%} %>
<td width="122"><B>Age :</B></td>
<td width="179"><B><%=age%></B></td>
<td width="144"><B>Class :</B></td>
<%
List<Section1> helloList = Section1.getSection(secid);
	Iterator<Section1> helloItr = helloList.iterator();
	while(helloItr.hasNext()){
		Section1 sec = helloItr.next();
		String secname=sec.getSection_name();
%>
<td width="233"><B><%=secname%></B></td>
<%} %>
</tr>
</table>    	
<br/>
<table border="1" width="100%" align="center">
<tr>
<th colspan="2">CURRICULUM AREA </th>
<th width="12%">EFFORT</th>
<th width="64%" colspan="4">TEACHER COMMENT </th>
</tr>
<tr>
<td colspan="2"><B>LITERACY <br /> Reading </B></td>
<td align="center" valign="middle"><%=ksod.getLre()%></td>
<td colspan="4" align="justify"><%=ksod.getLrn()%></td>
</tr>

<tr>
<td colspan="2"><B>LITERACY <br /> Writing </B></td>
<td align="center" valign="middle"><%=ksod.getLwe()%></td>
<td colspan="4" align="justify"><%=ksod.getLwn() %></td>
</tr>



<tr>
<td colspan="2"><B>LITERACY <br /> SPEAKING AND LISTENING </B></td>
<td align="center" valign="middle"><%=ksod.getLse()%></td>
<td colspan="4" align="justify"><%=ksod.getLsn()%></td>
</tr>



<tr>
<td colspan="2"><B>NUMERACY</B></td>
<td align="center" valign="middle"><%=ksod.getNume()%></td>
<td colspan="4" align="justify"><%=ksod.getNumn() %></td>
</tr>


<tr>
<td width="2%" rowspan="3"><B>I<br>
  P<br>C</B></td>
<td width="22%"><B>SCIENCE</B></td>
<td align="center" valign="middle"><%=ksod.getSce()%></td>
<td colspan="4" align="justify"><%=ksod.getScn() %></td>
</tr>


<tr>
<td><B>HUMANITIES</B></td>
<td align="center" valign="middle"><%=ksod.getHume()%></td>
<td colspan="4" align="justify"><%=ksod.getHumn() %></td>
</tr>
    	
    	
 <tr>
<td><B>ART AND <br/>DESIGN</B></td>
<td align="center" valign="middle"><%=ksod.getAade()%></td>
<td colspan="4" align="justify"><%=ksod.getAadn() %></td>
</tr>

<tr style="border:none">
<th colspan="7" align="center"> CLASS TEACHER GENERAL COMMENTS</th>
</tr>


<tr>
<td colspan="7" align="justify"><%=ksod.getTgc() %></td>
</tr>


</table>

 <%			
	}
%>

<table width="100%" border="1">
<tr>
<td colspan="4" align="center" style="border:none"><B>KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS</B></td>
</tr>
<tr>
<td colspan="4" align="center"><B>EFFORT</B></td>
</tr>
<tr>
<td><B>1</B></td>
<td><B>Excellent</B></td>
<td><B>3</B></td>
<td><B>Satisfactory</B></td>
</tr>

<tr>
<td><B>2</B></td>
<td><B>Good</B></td>
<td><B>4</B></td>
<td><B>Unsatisfactory</B></td>
</tr>
<tr>
<td colspan="4"><p>your child attends Amharic class;a report is attached.....Yes/No<br />Your child also takes <B>ICT, Music, Dance</B> and <B>P.E.</B> All students in year 3-6 also take <B> French.</B> the specialist teachers responsible for these subjects will complete reports at the end of the academic year.</p>
</td>
</tr>
</table>

<table width="100%" border="0">
<tr>
<td width="12%"><b>Class Teacher: </b></td>
<%
List<Teacherandhade> helloListt = Teacherandhade.getAllTeacher(sid);
Iterator<Teacherandhade> helloItrt = helloListt.iterator();
while(helloItrt.hasNext()){
	Teacherandhade te = helloItrt.next();
	String teacher=te.getFname()+" "+te.getMname();
%>
<td width="20%"><b><%=teacher%></b></td>
<%
}
	List<Section1> helloList1 = Section1.getAllSection();
	Iterator<Section1> helloItr1 = helloList1.iterator();
%>

<td width="9%"><b>Date :</b></td>
<%Section1 v = helloItr1.next(); %>
<td width="22%"><b>January: <%=	v.getCurentdate()%></b></td>
<%
List<Teacherandhade> helloListh = Teacherandhade.getdepartmenthade(sid);
Iterator<Teacherandhade> helloItrh = helloListh.iterator();
while(helloItrh.hasNext()){
	Teacherandhade head = helloItrh.next();
	String dhade=head.getHead();
%>
<td width="14%"><b>Head of Primary:</b></td>
<td width="23%"><b><%=dhade%></b></td>
<%}%>
</tr>
</table>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<div id="printer" align="right"><a href="#.jsp" onclick="printDiv('printReportDiv')" style="color:#0000FF">Click to print <img src="images/printer.jpg" /></a></div>
