<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
    int secid=Integer.parseInt(request.getParameter("secid"));
    String sid=request.getParameter("sid");
    int age=Integer.parseInt(request.getParameter("age"));
	List<Keystagetwo> helloLista = Keystagetwo.getKeysatgetwo(sid);
	Iterator<Keystagetwo> helloItra = helloLista.iterator();
	while(helloItra.hasNext()){
		Keystagetwo kst = helloItra.next();
%>
<div id="printReportDiv">
<center><font size="5"><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
<center><b>Mid Year Primary School Report</b></center><br /><br />
<table border="0" width="100%" align="center">
<tr>
<td width="143"><B>Name :</B></td>
<%
 List<Studentclass> helloListN = Studentclass.getselectedStudentbyclass(sid);
    Iterator<Studentclass> helloItrN = helloListN.iterator();
    while(helloItrN.hasNext()){
    	Studentclass stu = helloItrN.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
%>

<td width="220"><B><%=studentname%></B></td>
<%} %>
<td width="91"><B>Age :</B></td>
<td width="223"><B><%=age%></B></td>
<td width="116"><B>Class :</B></td>
<%
List<Section1> helloList = Section1.getSection(secid);
	Iterator<Section1> helloItr = helloList.iterator();
	while(helloItr.hasNext()){
		Section1 sec = helloItr.next();
		String secname=sec.getSection_name();
%>
<td width="229"><B><%=secname%></B></td>
<%} %>
</tr>
</table>    	
<br/>
<table border="1" width="100%" align="center">

<tr>
<th colspan="2">CURRICULUM AREA </th>
<th width="119">ACHIEVEMENT</th>
<th width="116">EFFORT</th>
<th width="614" colspan="3">TEACHER COMMENT </th>
</tr>

<tr>
<td colspan="2"><B>LITERACY</B></td>
<td align="center" valign="middle"><%=kst.getLa()%></td>
<td align="center" valign="middle"><%=kst.getLe()%></td>
<td colspan="4" align="justify"><%=kst.getLn()%></td>
</tr>





<tr>
<td colspan="2"><B>NUMERACY</B></td>
<td align="center" valign="middle"><%=kst.getNuma()%></td>
<td align="center" valign="middle"><%=kst.getNume()%></td>
<td colspan="4" align="justify"><%=kst.getNumn() %></td>
</tr>
<tr>
<td colspan="2"><B>INTERNATIONAL <br />PRIMARY <br /> CURRICULUM</B></td>
<td align="center" valign="middle"><%=kst.getIpca()%></td>
<td align="center" valign="middle"><%=kst.getIpce()%></td>
<td colspan="4" align="justify"><%=kst.getIpcn()%></td>
</tr>

<tr>
<td colspan="2"><B>SCIENCE </B></td>
<td align="center" valign="middle"><%=kst.getSca()%></td>
<td align="center" valign="middle"><%=kst.getSce()%></td>
<td colspan="4" align="justify"><%=kst.getScn() %></td>
</tr>

<tr>
<th colspan="7" align="left"> CLASS TEACHER GENERAL COMMENTS</th>
</tr>

<tr>
<td colspan="7" align="justify"><%=kst.getGc()%></td>
</tr>

</table>

<%
}
%>
<table width="100%" border="1">
<tr>
<td colspan="8" align="center" style="border:none"><B>KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS</B></td>
</tr>
<tr>
<td colspan="4" align="center"><B>ACHIEVEMENT</B></td>
<td colspan="4" align="center"><B>EFFORT</B></td>
</tr>
<tr>
<td width="4%"><B>E</B></td>
<td width="16%"><B>Exceeding Expectations</B></td>
<td width="2%"><B>S</B></td>
<td width="23%"><B>Achieving Some Expectations</B></td>
<td width="4%"><B>1</B></td>
<td width="12%"><B>Excellent</B></td>
<td width="4%"><B>3</B></td>
<td width="35%"><B>Satisfactory</B></td>
</tr>
<tr>
<td width="4%"><B>M</B></td>
<td width="16%"><B>Meeting Expectations</B></td>
<td width="2%"><B>N</B></td>
<td width="23%"><B>Not Yet Achieving Expectations</B></td>
<td><B>2</B></td>
<td><B>Good</B></td>
<td><B>4</B></td>
<td><B>Unsatisfactory</B></td>
</tr>
<tr>
<td colspan="8"><p>your child attends Amharic class;a report is attached.....Yes/No<br />your child attends Extended Studies;a report is attached.....Yes/No<Br /><Br />Your child also takes <B>ICT, Music, Dance</B> and <B>P.E.</B> All students in year 3-6 also take <B> French.</B> the specialist teachers responsible for these subjects will complete reports at the end of the academic year.</p>
</td>
</tr>
</table>
<Br />
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