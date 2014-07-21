<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Section1> helloList = Section1.getAllSection();
	Iterator<Section1> helloItr = helloList.iterator();
	
	
	
	String sid=request.getParameter("sid");
	int secid=Integer.parseInt(request.getParameter("secid"));
	String dob=request.getParameter("dob");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<div id="printReportDiv">
<table width="100%" border="0">

  <tr>
    <td height="880" colspan="2" valign="top">
	<table width="107%" border="0">
  <tr>
    <td height="640" colspan="2" valign="top"><font size="6">
      <center>
        <p>&nbsp;</p>
        <p><b>SANDFORD INTERNATIONAL SCHOOL</b><b>&#4659;&#4757;&#4853;&#4942;&#4653;&#4853; &#4770;&#4757;&#4720;&#4653;&#4755;&#4669;&#4755;&#4621; &#4725;&#4637;&#4613;&#4653;&#4725;&#4708;&#4725;</b></p>
      </center></font><font size="6">&nbsp;</font>
<center>
	  <p><img src="images/SISLogo.jpg" /></p>
	  <p>&nbsp;</p>
	</center>
	<font size="6"><center><b>Early Years End of year Report</b></center>
	<center><b><%
	List<Acadamicyear> acy=Acadamicyear.accay();
	Iterator<Acadamicyear> acyItr = acy.iterator();
			while(acyItr.hasNext()){
				Acadamicyear ay = acyItr.next();
				int ayid=ay.getId();
				List<Acadamicyear> acya=Acadamicyear.getaccay(ayid);
				Iterator<Acadamicyear> acyItra = acya.iterator();
				while(acyItra.hasNext()){
					Acadamicyear ay2 = acyItra.next();
				
	%><%out.print(ay2.getAcademic_year_name()); } }%> Academic year</b></center></font></td>   
	<td width="49%" rowspan="4">IMAGE</td> 
  </tr>  
  <tr>
    
    <td width="19%" height="37" align="right"><b>Name:</b></td>
    <td width="32%">
	<%
 List<Studentclass> helloListN = Studentclass.getselectedStudentbyclass(sid);
    Iterator<Studentclass> helloItrN = helloListN.iterator();
    while(helloItrN.hasNext()){
    	Studentclass stu = helloItrN.next();
		String studentname=stu.getSFname()+" "+stu.getSMname();
		out.println(studentname);
    }
%>	</td>
  </tr>
  <tr>
   
    <td height="35" align="right"><b>DOB:</b></td>
    <td><%=dob%></td>
  </tr>
  <tr>
    
    <td height="39" align="right"><b>Class:</b></td>
    <td>
	<%
List<Section1> helloLists = Section1.getSection(secid);
	Iterator<Section1> helloItrs = helloLists.iterator();
	while(helloItrs.hasNext()){
		Section1 sec = helloItrs.next();
		String secname=sec.getSection_name();
		out.println(secname);
	}
%>
	</td>
  </tr>
</table>
	</td>   
  </tr>
  
  
  <%
	List<EarlyYearsEvaluation> helloLista = EarlyYearsEvaluation.earlyyearendofyearreport(sid);
	Iterator<EarlyYearsEvaluation> helloItra = helloLista.iterator();
	while(helloItra.hasNext()){
		EarlyYearsEvaluation end = helloItra.next();
%> 
  
  
  
  <tr>
    <td width="51%" height="329" valign="top">
	<br/>
	<table width="100%" border="1">
  <tr>
    <th width="384" align="center">Personal Social and Emotional Development </th>
  </tr>
  <tr>
    <td height="230" align="justify" valign="top"><%=end.getPsed()%></td>
  </tr>
</table>
<br/>
</td>

<td width="49%"><br/>Image<br/></td>

  </tr>  
  
  <tr>
    <td height="455" valign="top">
	<br/>
	<table width="100%" border="1">
  <tr valign="top">
    <th width="384" align="center">Communication and Language</th>
  </tr>
  <tr>
    <td height="230" align="justify" valign="top"><br/><%=end.getCl()%><br/></td>
  </tr>
</table>
<br /><br/><br/>
	</td>
    <td valign="top">
	<br/>
	<table width="100%" border="1">
  <tr>
    <th width="384" align="center">Physical Development</th>
  </tr>
  <tr>
    <td height="230" align="justify" valign="top"><br/><%=end.getCl()%><br/></td>
  </tr>
</table>
<br /><br/><br/>
	</td>
  </tr>
  
  
  
  <tr>
  <br />
    <td>Image</td>
    <td>
	<br/>
	<table width="100%" border="1">
      <tr>
       <th width="384" align="center">Literacy</th>
     </tr>
     <tr>
       <td height="230" align="justify" valign="top"><%=end.getLit()%></td>
     </tr>
    </table>
	</td>
  </tr>
  <tr>
    <td height="461" valign="top">
	<br/>
	<table width="100%" border="1">
  <tr>
    <th width="384" align="center">Mathematics</th>
  </tr>
  <tr>
    <td height="230" align="justify" valign="top"><%=end.getMath()%></td>
  </tr>
</table>
	</td>
    <td valign="top">
	<br/>
	 <table width="100%" border="1">
       <tr>
   		 <th width="384" align="center">Understanding the World</th>
  	  </tr>
      <tr>
        <td height="230" align="justify" valign="top"><%=end.getUw()%></td>
      </tr>
	</table>
	</td>
  </tr>
  <tr>
    <td height="337" valign="top">
	<br/>
	     <table width="100%" border="1">
               <tr>
                 <th width="384" align="center">Expressive Arts and Design</th>
               </tr>
              <tr>
               <td height="230" align="justify" valign="top"><%=end.getEad()%></td>
             </tr>
         </table>
	</td>
    <td valign="top">Image</td>
  </tr>
  <tr>
    <td valign="top">
	<br/>
	<table width="100%" border="0">
  <tr>
    <td width="20%"><B>Date:</B></td>	
    <td width="80%">
	<%
	List<Section1> helloList1 = Section1.getAllSection();
	Iterator<Section1> helloItr1 = helloList1.iterator();
	Section1 v = helloItr1.next();
	out.println(v.getCurentdate());
	%>	</td>
	
  </tr>
  <tr>
    <td><B>Class Teacher:</B></td>
    <td>
	<%
List<Teacherandhade> helloListt = Teacherandhade.getAllTeacher(sid);
Iterator<Teacherandhade> helloItrt = helloListt.iterator();
while(helloItrt.hasNext()){
	Teacherandhade te = helloItrt.next();
	String teacher=te.getFname()+" "+te.getMname();
	out.println(teacher);
	}
%>
	</td>
  </tr>
  <tr>
    <td><B>Head Teacher:</B></td>
    <td>
	<%
List<Teacherandhade> helloListh = Teacherandhade.getdepartmenthade(sid);
Iterator<Teacherandhade> helloItrh = helloListh.iterator();
while(helloItrh.hasNext()){
	Teacherandhade head = helloItrh.next();
	String dhade=head.getHead();
	out.println(dhade);
	}
%>
	</td>
  </tr>
</table>
	</td>
    <td valign="top">
	<br/>
	<table width="100%" border="1">
  <tr>
    <th width="384" align="center">General Comment</th>
  </tr>
  <tr>
    <td height="230" align="justify" valign="top"><%=end.getGc() %></td>
  </tr>
</table>

	</td>
  </tr>
</table>
<% } %>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<div id="printer" align="right"><a href="#.jsp" onclick="printDiv('printReportDiv')" style="color:#0000FF">Click to print <img src="images/printer.jpg" /></a></div>
</body>
</html>
