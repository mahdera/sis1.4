<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<% 
int secid=Integer.parseInt(request.getParameter("secid"));
String sid=request.getParameter("sid");
String dob=request.getParameter("dob");
%>

<div id="printReportDiv">
    <center><font size="6"><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
	<center><font size="6"><b>&#4659;&#4757;&#4853;&#4942;&#4653;&#4853; &#4770;&#4757;&#4720;&#4653;&#4755;&#4669;&#4755;&#4621; &#4725;&#4637;&#4613;&#4653;&#4725;&#4708;&#4725;</b></font></center>
	<center><b>Reception Mid-year Report</b></center>
	
	<%
	List<Section1> helloList1 = Section1.getAllSection();
	Iterator<Section1> helloItr1 = helloList1.iterator();
    %>
	
	<%Section1 v = helloItr1.next(); %>
	<center><b>January: <%=
	v.getCurentdate()%></b></center><br />
	
<table width="100%" border="0">
  <tr>
    <td width="11%"><B>Name:</B></td>
    <td width="22%"><b><%
 List<Studentclass> helloListN = Studentclass.getselectedStudentbyclass(sid);
    Iterator<Studentclass> helloItrN = helloListN.iterator();
    while(helloItrN.hasNext()){
    	Studentclass stu = helloItrN.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
		out.println(studentname);
		}
		%></b></td>
		
    <td width="12%"><B>Class:</B></td>
	
    <td width="16%"><B><%
    List<Section1> helloList = Section1.getSection(secid);
	Iterator<Section1> helloItr = helloList.iterator();
	while(helloItr.hasNext()){
		Section1 sec = helloItr.next();
		String secname=sec.getSection_name();
		out.println(secname);
		}
    %></B></td>
	
	
	<td width="13%"><b>Date of Birth:</b></td>
    <td width="26%"><b><%=dob%></b></td>
  </tr>
</table>
<br />
<table width="100%" border="0">
  <tr>
  <%
    List<EarlyYearsEvaluation> helloLista = EarlyYearsEvaluation.getstudentnarration(sid);
	Iterator<EarlyYearsEvaluation> helloItra = helloLista.iterator();
	%>
	
    <td align="justify" style="border:solid 1px;"><p><%while(helloItra.hasNext()){
				EarlyYearsEvaluation g = helloItra.next();
				out.println(g.getNarration());
				}%></p></td>
  </tr>
</table><br />
<table width="100%" border="0">
  <tr>
      <td width="65%"><b>Reception Teacher:</b></td>
	  <td width="35%"><b>Head of Primary:</b></td>
  </tr>
  <tr>
      <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <%
List<Teacherandhade> helloListt = Teacherandhade.getAllTeacher(sid);
Iterator<Teacherandhade> helloItrt = helloListt.iterator();
while(helloItrt.hasNext()){
	Teacherandhade te = helloItrt.next();
	String teacher=te.getFname()+" "+te.getMname();
	out.println(teacher);
	}%></b>
	</td>
	  <td align="center"><b>
	  <%
List<Teacherandhade> helloListh = Teacherandhade.getdepartmenthade(sid);
Iterator<Teacherandhade> helloItrh = helloListh.iterator();
while(helloItrh.hasNext()){
	Teacherandhade head = helloItrh.next();
	String dhade=head.getHead();
	out.println(dhade);
	}
%></b></td>
  </tr>
</table>	
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<div id="printer" align="right"><a href="#.jsp" onclick="printDiv('printReportDiv')" style="color:#0000FF">Click to print <img src="images/printer.jpg" /></a></div>