<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%

int secid=Integer.parseInt(request.getParameter("secid"));
String sid=request.getParameter("sid");
String dob=request.getParameter("dob");

List<Acadamicyear> acy=Acadamicyear.accay();
Iterator<Acadamicyear> acyItr = acy.iterator();

%>

<div id="printReportDiv" style="width:100%;">
<center><font size="5"><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
<center><b>PRIMARY SCHOOL SUMMARY RECORD FOR YEARS 1 TO 6</b></center>
<center><b>For the end of the school year : <%
			while(acyItr.hasNext()){
				Acadamicyear ay = acyItr.next();
				int ayid=ay.getId();
				List<Acadamicyear> acya=Acadamicyear.getaccay(ayid);
				Iterator<Acadamicyear> acyItra = acya.iterator();
				while(acyItra.hasNext()){
					Acadamicyear ay2 = acyItra.next();
				
	%><%out.print(ay2.getAcademic_year_name()); } }%></b></center><br />
	
<table border="0" width="100%" align="center">
<tr>
<%
 List<Studentclass> helloLista = Studentclass.getselectedStudentbyclass(sid);
    Iterator<Studentclass> helloItra = helloLista.iterator();
    while(helloItra.hasNext()){
    	Studentclass stu = helloItra.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
%>
<td width="12%"><b>Pupil's Name:</b></td>
<td width="24%"><%=studentname%></td>
<%} %>
<td width="10%"><B>D.O.B:</B></td>
<td width="21%"><B><%=dob%></B></td>

<td width="8%"><B>Class:</B></td>
<%
List<Section1> helloList = Section1.getSection(secid);
	Iterator<Section1> helloItr = helloList.iterator();
	while(helloItr.hasNext()){
		Section1 sec = helloItr.next();
		String secname=sec.getSection_name();
%>
<td width="25%"><B><%=secname%></B></td>
<%} %>
</tr>
</table>
<br />
<table border="1" width="100%" align="center">
<tr>
<td colspan="8" align="center"><b>Key to Grades:</b> according to year group standards</td>
</tr>
<tr>
<td colspan="4" align="center"><b>ACHIEVEMENT</b></td>
<td colspan="4" align="center"><b>EFFORT</b></td>
</tr>
<tr>
<td width="3%"><b>E</b></td>
<td width="28%">Exceeding Expectations</td>
<td width="3%"><b>S</b></td>
<td width="24%">Achieving Some Expectations</td>
<td width="5%"><b>1</b></td>
<td width="19%">Excellent</td>
<td width="3%"><b>3</b></td>
<td width="15%">Satisfactory</td>
</tr>
<tr>
<td><b>M</b></td>
<td>Meeting Expectations</td>
<td><b>N</b></td>
<td>Not yet Achieving Expectations</td>
<td><b>2</b></td>
<td>Good</td>
<td><b>4</b></td>
<td>Unsatisfactory</td>
</tr>
</table>
<br />


<form name="a">
<%
List<Endofyear> helloListend = Endofyear.getKeysatgeoneend(sid);
Iterator<Endofyear> helloItrend = helloListend.iterator();
while(helloItrend.hasNext()){
	Endofyear enyr = helloItrend.next();

%>
<table border="1" width="100%" align="center">
<tr>
<td align="center" colspan="2"><b>CURRICULUM AREA</b></td>
<td align="center"><b>ACHIEVEMENT</b></td>
<td align="center"><b>EFFORT</b></td>
<td colspan="4" align="center"><b>CLASS TEACHER COMMENTS</b></td>
</tr>
<tr>
<th colspan="9" align="left">LITERACY</th>
</tr>
<tr>
<td colspan="2" align="center"><B>Reading</B></td>
<td width="119" align="center" valign="middle"><%=enyr.getLra()%></td>
<td width="94" align="center" valign="middle"><%=enyr.getLre()%></td>
<td width="548" colspan="4" ><%=enyr.getLrn()%></td>
</tr>

<tr>
<td colspan="2" align="center"><B>Writing</B> </td>
<td align="center" valign="middle"><%=enyr.getLwa()%></td>
<td align="center" valign="middle"><%=enyr.getLwe()%></td>
<td colspan="4" ><%=enyr.getLwn()%></td>
</tr>

<tr>
<td colspan="2" align="center"><B>Speaking and<br /> Listening</B></td>
<td align="center" valign="middle"><%=enyr.getLsa()%></td>
<td align="center" valign="middle"><%=enyr.getLse()%></td>
<td colspan="4" ><%=enyr.getLsn()%></td>
</tr>



<tr>
<th colspan="9" align="left">NUMERACY</th>
</tr>
<tr>
<td colspan="2" align="center"><B>Using and Applying Maths</B></td>
<td align="center" valign="middle"><%=enyr.getNua()%></td>
<td align="center" valign="middle"><%=enyr.getNue()%></td>
<td colspan="4" ><%=enyr.getNun()%></td>
</tr>

<tr>
<td colspan="2" align="center"><B>Number and Algebra</B></td>
<td align="center" valign="middle"><%=enyr.getNna()%></td>
<td align="center" valign="middle"><%=enyr.getNne()%></td>
<td colspan="4"><%=enyr.getNnn()%></td>
</tr>

<tr>
<td colspan="2" align="center"><B>Shape,Space and Measures</B></td>
<td align="center" valign="middle"><%=enyr.getSsma()%></td>
<td align="center" valign="middle"><%=enyr.getSsme()%></td>
<td colspan="4" ><%=enyr.getSsmn()%></td>
</tr>
<tr>
<td colspan="2" align="center"><B>Data Handling</B></td>
<td align="center" valign="middle"><%=enyr.getDha()%></td>
<td align="center" valign="middle"><%=enyr.getDhe()%></td>
<td colspan="4"><%=enyr.getDhn()%></td>
</tr>


<tr>
<th colspan="9" align="left">SCIENCE</th>
</tr>
<tr>
<td colspan="2" align="center"><B>Investigation Skills</B></td>
<td align="center" valign="middle"><%=enyr.getIsa()%></td>
<td align="center" valign="middle"><%=enyr.getIse()%></td>
<td colspan="4"><%=enyr.getIsn()%></td>
</tr>
<tr>
<td colspan="2" align="center"><B>Knowledge and Content</B></td>
<td align="center" valign="middle"><%=enyr.getSkca()%></td>
<td align="center" valign="middle"><%=enyr.getSkce()%></td>
<td colspan="4"><%=enyr.getSkcn()%></td>
</tr>

<tr>
<th colspan="9" align="left">Humanities</th>
</tr>
<tr>
<td colspan="2" align="center"><B>Research Skills</B></td>
<td align="center" valign="middle"><%=enyr.getRsa()%></td>
<td align="center" valign="middle"><%=enyr.getRse()%></td>
<td colspan="4" ><%=enyr.getRsn()%></td>
</tr>
<tr>
<td colspan="2" align="center"><B>Knowledge and Content</B></td>
<td align="center" valign="middle"><%=enyr.getKca()%></td>

<td align="center" valign="middle"><%=enyr.getKce()%></td>
<td colspan="4" ><%=enyr.getKcn()%></td>
</tr>

<tr>
<th colspan="9" align="left">ART AND DESIGN</th>
</tr>
<tr>
<td colspan="2" align="center"><B>Applying Techniques</B></td>
<td align="center" valign="middle"><%=enyr.getAta()%></td>
<td align="center" valign="middle"><%=enyr.getAte()%></td>
<td colspan="4" ><%=enyr.getAtn()%></td>
</tr>
<tr>
<td colspan="2" align="center"><B>Creativity</B></td>
<td align="center" valign="middle"><%=enyr.getCa()%></td>
<td align="center" valign="middle"><%=enyr.getCe()%></td>
<td colspan="4" ><%=enyr.getCn() %></td>
</tr>



<tr>
<th colspan="9" align="left"> CLASS TEACHER GENERAL COMMENTS</th>
</tr>


<tr>
<td colspan="9" align="justify"><%=enyr.getCtgc()%></td>
</tr>

<tr>
<th colspan="9" align="left">SUGGESTED TARGETS FOR THE FORTHCOMING YEAR</th>
</tr>

<tr>
<td colspan="9" align="justify"><%=enyr.getStfcy()%></td>
</tr>

</table>
</form>
<%} %>

<%
	List<Specialityclas> helloListict = Specialityclas.ictselect(sid);
	Iterator<Specialityclas> helloItrict = helloListict.iterator();
	while(helloItrict.hasNext()){
		Specialityclas ict = helloItrict.next();
%>



<table border="1" width="100%" align="center">
<tr>
<th width="257" align="left">CURRICULUM AREA</th>
<th width="119">ACHIEVEMENT</th>
<th width="97">EFFORT</th>
<th>SPECIALIST TEACHERS' COMMENTS</th>
</tr>
<tr>
<th colspan="3" align="left">INFORMATION AND COMMUNICATION TECHNOLOGY(ICT) </th>
<th align="right">Teacher:&nbsp;<%=ict.getTfullname()%>

</tr>

<tr>
<td colspan="1" align="center"><B>Learning and  <br />Application of skills</B></td>
<td align="center" valign="middle"><%=ict.getLasa()%></td>
<td align="center" valign="middle"><%=ict.getLase()%></td>
<td align="justify"><%=ict.getLasn()%></td>
</tr>

<tr>
<td colspan="1" align="center"><B>Evaluation Skills</B></td>
<td align="center" valign="middle"><%=ict.getEsa()%></td>
<td align="center" valign="middle"><%=ict.getEse()%></td>
<td align="justify"><%=ict.getEsn()%></td>
</tr>
<tr>
<%} %>
<%
List<Specialityclas> helloListmusic = Specialityclas.musicselect(sid);
	Iterator<Specialityclas> helloItrmusic = helloListmusic.iterator();
	while(helloItrmusic.hasNext()){

		Specialityclas music = helloItrmusic.next();	
		%>

<th colspan="3" align="left">MUSIC</th>
<th align="right">Teacher:&nbsp;<%=music.getTfullname()%></th>
</tr>

<tr>
<td colspan="1" align="center"><B>PERFORMING</B></td>
<td align="center" valign="middle"><%=music.getMpera()%></td>
<td align="center" valign="middle"><%=music.getMpere()%></td>
<td align="justify" colspan="2"><%=music.getMpern() %></td>
</tr>


<tr>
<td colspan="1" align="center"><B>CREATIVE AND<br /> LISTENING SKILLS</B></td>
<td align="center" valign="middle"><%=music.getMclsa()%></td>

<td align="center" valign="middle"><%=music.getMclse()%></td>
<td align="justify" colspan="2"><%=music.getMclsn()%></td>
</tr>
<%}%>
<%
	List<Specialityclas> helloListpe = Specialityclas.peselect(sid);
	Iterator<Specialityclas> helloItrpe = helloListpe.iterator();
	while(helloItrpe.hasNext()){
		Specialityclas pe = helloItrpe.next();
%>

<tr>
<th colspan="3" align="left">PHYSICAL EDUCATION(P.E) </th>
<th align="right">Teacher:&nbsp;<%=pe.getTfullname() %></th>
</tr>

<tr>
<td align="center"><B>PERSONAL ORGANISATION </B></td>
<td align="center" valign="middle"><%=pe.getPoa()%></td>
<td align="center" valign="middle"><%=pe.getPoe()%></td>
<td width="547" colspan="4" align="justify"><%=pe.getPon()%></td>
</tr>
<tr>

<td align="center"><B>INDIVIDUAL SKILL </B> </td>
<td align="center" valign="middle"><%=pe.getIsa()%></td>
<td align="center" valign="middle"><%=pe.getIse()%></td>
<td align="justify"><%=pe.getIsn() %></td>
</tr>

<tr>
<td align="center"><B>TEAM WORK</B></td>

<td align="center" valign="middle"><%=pe.getTwa()%></td>
<td align="center" valign="middle"><%=pe.getTwe()%></td>
<td align="justify"><%=pe.getTwn() %></td>
</tr>

<%} %>


<% 
	List<Specialityclas> helloListamharic = Specialityclas.amharicselect(sid);
	Iterator<Specialityclas> helloItramharic = helloListamharic.iterator();
	while(helloItramharic.hasNext()){
		Specialityclas am = helloItramharic.next();
%>




<tr>
<th colspan="3" align="left">AMHARIC</th>
<th align="right">Teacher:&nbsp;<%=am.getTfullname()%></th>
</tr>

<tr>
<td align="center"><B>SPEAKING AND <br />LISTENING<B></td>
<td align="center" valign="middle"><%=am.getSla()%></td>
<td align="center" valign="middle"><%=am.getSle()%></td>
<td colspan="4" align="justify"><%=am.getSln() %></td>
</tr>

<tr>
<td align="center"><B>READING</B> </td>
<td align="center" valign="middle"><%=am.getRa()%></td>
<td align="center" valign="middle"><%=am.getRe()%></td>
<td colspan="4" align="justify"><%=am.getRn() %></td>
</tr>

<tr>
<td align="center"><B>WRITING</B> </td>
<td align="center" valign="middle"><%=am.getWa()%></td>
<td align="center" valign="middle"><%=am.getWe()%></td>
<td colspan="4" align="justify"><%=am.getWn() %></td>
</tr>
<%}%>

<%
List<Specialityclas> helloListfrench = Specialityclas.frenchselect(sid);
	Iterator<Specialityclas> helloItrfrench = helloListfrench.iterator();
	while(helloItrfrench.hasNext()){
		Specialityclas fr = helloItrfrench.next();
%>


<tr>
<th colspan="3" align="left">FRENCH</th>
<th align="right">Teacher:&nbsp;<%=fr.getTfullname()%></th>
</tr>

<tr>
<td align="center"><B>SPEAKING AND<BR /> LISTENING</B></td>
<td align="center" valign="middle"><%=fr.getSla()%></td>
<td align="center" valign="middle"><%=fr.getSle()%></td>
<td colspan="4" align="justify"><%=fr.getSln() %></td>
</tr>

<tr>
<td align="center"><B>READING</B> </td>
<td align="center" valign="middle"><%=fr.getRa()%></td>
<td align="center" valign="middle"><%=fr.getRe()%></td>
<td colspan="4" align="justify"><%=fr.getRn() %></td>
</tr>

<tr>
<td align="center"><B>WRITING</B> </td>
<td align="center" valign="middle"><%=fr.getWa()%></td>
<td align="center" valign="middle"><%=fr.getWe()%></td>
<td colspan="4" align="justify"><%=fr.getWn() %></td>
</tr>
<%}%>

<tr>
<td colspan=3><b>KeyStage One Teacher:</b></td>
<td colspan=3 align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Head of Primary:</b></td>
</tr>

<tr>
<%
List<Teacherandhade> helloListt = Teacherandhade.getAllTeacher(sid);
Iterator<Teacherandhade> helloItrt = helloListt.iterator();
while(helloItrt.hasNext()){
	Teacherandhade te = helloItrt.next();
	String teacher=te.getFname()+" "+te.getMname();
%>
<td colspan=3 align="center"><div align="center"><b><%=teacher%></b></div></td>
<%
}
List<Teacherandhade> helloListh = Teacherandhade.getdepartmenthade(sid);
Iterator<Teacherandhade> helloItrh = helloListh.iterator();
while(helloItrh.hasNext()){
	Teacherandhade head = helloItrh.next();
	String dhade=head.getHead();
%>
<td colspan=3 align="right"><div align="right"><b><%=dhade%></b></div></td>
<% } %>
</tr>


</table>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<div id="printer" align="right"><a href="#.jsp" onclick="printDiv('printReportDiv')" style="color:#0000FF">Click to print <img src="images/printer.jpg" /></a></div>


