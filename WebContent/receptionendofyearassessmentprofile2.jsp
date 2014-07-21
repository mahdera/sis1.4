<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<Br />
<div id="printReportDiv" style="border:none;" align="center">

<center><font size="5"><b>Reception End of Year Assessment<br />Class Summary<br />Prime Areas</b></font></center><br /><br />
<table width="100%" border="1">
  <tr>
    <td rowspan="2" valign="middle"><B>No</B></td>
    <td rowspan="2" align="center" valign="middle"><B>Child Name</B></td>
    <td colspan="3" align="center"><b>Communication</b></td>
    <td colspan="2" align="center"><b>Physical Development</b></td>
    <td colspan="3" align="center"><B>Personal,Social and Emotional Development</B></td>   
  </tr>
  <tr>
    <td align="center"><b>Listining and <br />
    Attention</b></td>
    <td align="center"><b>Understanding</b></td>
    <td align="center"><b>Speaking</b></td>
    <td align="center"><b>Moving and <br />
    Handling</b></td>
    <td align="center"><b>Health and <br />
    Self-Care</b></td>
    <td align="center"> <B>Self-Confidence and <br />
    Self Awareness</B></td>
    <td align="center"><B>Managing Feeling <br />
    and Behaviour</B></td>
    <td align="center"><B>Making <br />
    Relationships</B></td>   
  </tr>
  
  <%
  List<Receptionendyearassment> helloLista = Receptionendyearassment.selectalld();
	Iterator<Receptionendyearassment> helloItra = helloLista.iterator();
	int ctr=0;
	while(helloItra.hasNext()){
		Receptionendyearassment rec = helloItra.next();
		ctr+=1;
		%>
		<tr>
	<td ><%=ctr %></td>
	<td  ><%List<Studentclass> helloListN = Studentclass.getselectedStudentbyclass(rec.getSid());
    Iterator<Studentclass> helloItrN = helloListN.iterator();
    while(helloItrN.hasNext()){
    	Studentclass stu = helloItrN.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
		out.println(studentname);}%></td>
    <td ><%=rec.getElg01() %></td>
    <td><%=rec.getElg02() %></td>
    <td><%=rec.getElg03() %></td>
    <td><%=rec.getElg04() %></td>
    <td><%=rec.getElg05() %></td>
    <td><%=rec.getElg06() %></td>
    <td><%=rec.getElg07() %></td>
    <td><%=rec.getElg08() %></td>   
  </tr>
  <% } %>
</table>

<font size="5"></font><center><font size="5"><b>Reception End of Year Assessment<br />Class Summary<br />
      Specific Areas</b></font>
</center><br /><br />
<table width="100%" border="1">
  <tr>
    <td rowspan="2" align="center" valign="middle"><B>No</B></td>
    <td rowspan="2" align="center" ><B>Child Name</B></td>
    <td colspan="2" align="center"><b>Literacy</b></td>
    <td colspan="2" align="center"><b>Mathematics</b></td>
    <td colspan="3" align="center"><B>Understanding the World </B></td>   
	<td colspan="2" align="center"><B>Expressive Arts and Design </B></td>   
  </tr>
  <tr>
    <td align="center"><b>Reading</b></td>
    <td align="center"><b>Writing</b></td>
    <td align="center"><b>Numbers</b></td>
    <td align="center"><b>Shapes,Space and<br /> Measures </b></td>
    <td align="center"><b>People and <br />Communities</b></td>
    <td align="center"><B>The World </B></td>
    <td align="center"><B>Technology</B></td>
    <td align="center"><B>Exploring and Using <br /> Media and Materials</B></td> 
	<td align="center"><B>Being <br /> Imaginative</B></td>   
  </tr>
  
  <%
  List<Receptionendyearassment> helloListk = Receptionendyearassment.selectalld();
	Iterator<Receptionendyearassment> helloItrk = helloListk.iterator();
	int ctr2=0;
	while(helloItrk.hasNext()){
		Receptionendyearassment rec = helloItrk.next();
		ctr2+=1;
		%>
		<tr>
	<td ><%=ctr2 %></td>
	<td  ><%List<Studentclass> helloListN = Studentclass.getselectedStudentbyclass(rec.getSid());
    Iterator<Studentclass> helloItrN = helloListN.iterator();
    while(helloItrN.hasNext()){
    	Studentclass stu = helloItrN.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
		out.println(studentname);}%></td>
    <td ><%=rec.getElg09() %></td>
    <td><%=rec.getElg10() %></td>
    <td><%=rec.getElg11() %></td>
    <td><%=rec.getElg12() %></td>
    <td><%=rec.getElg13() %></td>
    <td><%=rec.getElg14() %></td>
    <td><%=rec.getElg15() %></td>
    <td><%=rec.getElg16() %></td>
	<td><%=rec.getElg17() %></td>   
  </tr>
  <% } %>
</table>


</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<div id="printer" align="right"><a href="#.jsp" onclick="printDiv('printReportDiv')" style="color:#0000FF">Click to print <img src="images/printer.jpg" /></a></div>
</body>
</html>