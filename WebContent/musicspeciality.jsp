<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
	List<Section1> helloList = Section1.getAllSection();
	Iterator<Section1> helloItr = helloList.iterator();
		
	List<Teacherandhade> helloListt = Teacherandhade.getAllTeachernameandid();
	Iterator<Teacherandhade> helloItrt = helloListt.iterator();
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/Ajax.js"></script>
</head>
<body>

<div id="Display" style="width:100%; border:dotted 1px;" >
<center><font size="5"><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
<center><b>PRIMARY SCHOOL SUMMARY RECORD FOR YEARS 1 to 6</b></center>
<center><b>For the end of the school year : 2011/2012</b></center><br />
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

</table>
<br />

<form name="a">	
<table border="1" width="100%">
<tr>

<th height="45" colspan="2">Class: </th>
<th width="172" align="center"><div align="center"> 
<select id="txtsection" style="width:100%">
 <option value="">Select Class</option>
 <%
			while(helloItr.hasNext()){
				Section1 h = helloItr.next();
 %>
 <option value="<%=h.getId()%>"><%=h.getSection_name()%></option>
 <%
	}
 %>
 </select></div>
 </th>
 <th width="137">Student Name: </th>
<th width="193" align="center"><div id="named" align="center"></div></th>
<th width="140">Teachers Name : </th>
<th width="200" align="center">
<select id="txtteacher" onChange="this.value" style="width:100%">
<option value="">Select Teacher</option>
 <%
			while(helloItrt.hasNext()){
				Teacherandhade teach = helloItrt.next();
				String fname=teach.getFname();
				String lname=teach.getLname();
				String mname=teach.getMname();
				String fullname=fname+" "+lname;
	%>
	
 <option value="<%=fullname%>"> <%=fullname%></option>
    <%
			}
	%>
 </select></th>
</tr>
<tr>
<td colspan="7"><center>&nbsp;<div id="error"></div></center></td>
</tr>
</table>
<div id="textdespmusic"></div>
</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsection').change(function(){
			var id = $('#txtsection').val();
			if(id != ""){
				$('#named').load("nameformusic.jsp?id="+id);
			}
		});
	});//end document.ready function
</script>
