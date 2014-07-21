<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>



<% 
int secid=Integer.parseInt(request.getParameter("secid"));
String sid=request.getParameter("sid");
String dob=request.getParameter("dob");
%>

<%

	List<EarlyYearsEvaluation> helloList2 = EarlyYearsEvaluation.receptionendofyearassessment(sid);
	Iterator<EarlyYearsEvaluation> helloItr2 = helloList2.iterator();
	while(helloItr2.hasNext()){
		EarlyYearsEvaluation end = helloItr2.next();
		
%>
<div id="printReportDiv" style="width:1000px; border:none;" align="center">
	<font size="5"><center><b>EYFS Profile 1- Reception End of Year Assessment</b></center></font><br /><br />
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
<table border="1" width="100%" align="center">
<tr>
<th colspan="3" valign="top">Characteristics of effective learning</th>
<th width="68%" colspan="3" valign="top">How (<%
 List<Studentclass> helloListNn = Studentclass.getselectedStudentbyclass(sid);
    Iterator<Studentclass> helloItrNn = helloListNn.iterator();
    while(helloItrNn.hasNext()){
    	Studentclass stu = helloItrNn.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
		out.println(studentname);
		}
		%>) learns</th>
</tr>
<tr>
<td colspan="3" valign="top"><B>By Playing and exploring :</B><br />
<ul>
<li>finding out and exploring</li>
<li>using what they know in their play</li>
<li>being willing to have a go</li>
</ul>
</td>
<td colspan="3" valign="top" align="justify"><%=end.getBpex()%></td>

</tr>


<tr>
<td colspan="3" valign="top"><b>Through active learning : </b><br />
<ul>
<li>being involved and concentrating</li>
<li>keeping on trying</li>
<li>enjoying achieving what they set out to do</li>
</ul>
</td>
<td colspan="3" valign="top" align="justify"><%=end.getTal()%></td>
</tr>


<tr>
<td colspan="3" valign="top"><B>By creating and thinking critically : </B><br />
<ul>
<li>having their own ideas</li>
<li>using what they already know to learn new things</li>
<li>choosing wayss to do thing and finding new ways</li>
</ul>
</td>
<td colspan="3" valign="top" align="justify"><%=end.getBctc() %></td>

</tr>
</table>

<%}%>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<div id="printer" align="right"><a href="#.jsp" onclick="printDiv('printReportDiv')" style="color:#0000FF">Click to print <img src="images/printer.jpg" /></a></div>