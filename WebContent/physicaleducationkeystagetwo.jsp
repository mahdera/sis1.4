<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%
	List<Section1> keyStageOneSectionList = Section1.getAllSectionsOfThisLevel("Year 3 (Yr3)", "Year 4 (Yr4)", "Year 5 (Yr5)", "Year 6 (Yr6)");
	Iterator<Section1> keyStageOneSectionItr = keyStageOneSectionList.iterator();
		
	List<Teacherandhade> teacherHeadList = Teacherandhade.getAllTeachernameandid();
	Iterator<Teacherandhade> teacherHeadItr = teacherHeadList.iterator();
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<div id="Display" style="width:100%; border:dotted 1px;" >
<center><font size="5" ><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
<center><b>PRIMARY SCHOOL SUMMARY RECORD FOR YEARS 3 - 6</b></center>
<%
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	int currentYearOnly = 1900 + modificationDate.getYear();
	String currentYearStrMinusOne = String.valueOf(currentYearOnly - 1);
	String formattedAcademicYear = currentYearStrMinusOne+"/"+currentYearOnly;
%>
<center style="font-size:13pt"><strong>For the school year <%=formattedAcademicYear %></strong></center>
<table width="100%" border="0" style="border: 1px solid #eee">
	<tr>
		<td colspan="8" align="center" style="border:none"><B>KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS</B></td>
	</tr>
	<tr>
		<td colspan="4" align="center"><B>ACHIEVEMENT</B></td>
		<td colspan="4" align="center"><B>EFFORT</B></td>
	</tr>
	<tr>
		<td width="4%" style="border: 1px solid #ccc"><strong>E</strong></td>
		<td width="16%" style="border: 1px solid #ccc"><strong>E</strong>xceeding Expectations</td>
		<td width="2%" style="border: 1px solid #ccc"><strong>S</strong></td>
		<td width="23%" style="border: 1px solid #ccc">Achieving <strong>S</strong>ome Expectations</td>
		<td width="4%" style="border: 1px solid #ccc">1</td>
		<td width="16%" style="border: 1px solid #ccc">Excellent</td>
		<td width="2%" style="border: 1px solid #ccc">3</td>
		<td width="23%" style="border: 1px solid #ccc">Satisfactory</td>		
	</tr>
	<tr>
		<td width="4%" style="border: 1px solid #ccc"><strong>M</strong></td>
		<td width="16%" style="border: 1px solid #ccc"><strong>M</strong>eeting Expectations</td>
		<td width="2%" style="border: 1px solid #ccc"><strong>N</strong></td>
		<td width="23%" style="border: 1px solid #ccc"><strong>N</strong>ot Yet Achieving Expectations</td>
		<td width="4%" style="border: 1px solid #ccc">2</td>
		<td width="16%" style="border: 1px solid #ccc">Good</td>
		<td width="2%" style="border: 1px solid #ccc">4</td>
		<td width="23%" style="border: 1px solid #ccc">Unsatisfactory</td>		
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
				while(keyStageOneSectionItr.hasNext()){
					Section1 h = keyStageOneSectionItr.next();
				 %>
				 	<option value="<%=h.getId()%>"><%=h.getSection_name()%></option>
				 <%
					}//end while loop
				 %>
	 </select>
 </div>
 </th>
 <th width="137">Student Name: </th>
<th width="193" align="center"><div id="named" align="center"></div></th>
<th width="140">Teachers Name : </th>
<th width="200" align="center">
<select id="txtteacher" onChange="this.value" style="width:100%">
<option value="">Select Teacher</option>
 			<%
			while(teacherHeadItr.hasNext()){
				Teacherandhade teach = teacherHeadItr.next();
				String fname=teach.getFname();
				String lname=teach.getLname();
				String mname=teach.getMname();
				String fullname=fname+" "+lname;
 			%>
 				<option value="<%=teach.getId() %>"> <%=fullname%></option>
 			<%
			}//end while loop
			%>
 </select>
 </th>
</tr>
<tr>
	<td colspan="7"><center>&nbsp;<div id="error"></div></center></td>
</tr>
</table>
<div id="textdesp"></div>
</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsection').change(function(){
			var id = $('#txtsection').val();
			if(id != ""){
				$('#named').load("nameforphysicaleducationkeystagetwo.jsp?id="+id);
			}
		});
	});//end document.ready function
</script>