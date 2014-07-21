<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<%
	List<Section1> keyStageOneSectionList = Section1.getAllSectionsOfThisLevel("Year 1 (Yr1)","Year 2 (Yr2)");
	Iterator<Section1> keyStageOneSectionItr = keyStageOneSectionList.iterator();
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
<center><font size="5"><b>SANDFORD INTERNATIONAL SCHOOL</b></font></center>
<center style="font-size:15pt"><b>PRIMARY SCHOOL MID YEAR REPORT for YEAR 1-2</b></center>
<%
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	int currentYearOnly = 1900 + modificationDate.getYear();
	String currentYearStrMinusOne = String.valueOf(currentYearOnly - 1);
	String formattedAcademicYear = currentYearStrMinusOne+"/"+currentYearOnly;
%>
<center style="font-size:13pt"><strong>For the mid of the school year <%=formattedAcademicYear %></strong></center>
<table width="100%" border="1">
<tr>
<td colspan="8" align="center" style="border:none"><B>KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS</B></td>
</tr>
<tr style="background:#eee">	
	<td colspan="8" style="font-size:13pt" align="center"><B>EFFORT</B></td>
</tr>
<tr>	
	<td colspan="8">
		<table border="0" width="100%">
			<tr>
				<td><strong>1</strong></td>
				<td>Excellent</td>
				<td><strong>3</strong></td>
				<td>Satisfactory</td>
			</tr>
			<tr>
				<td><strong>2</strong></td>
				<td>Good</td>
				<td><strong>4</strong></td>
				<td>Unsatisfactory</td>
			</tr>
		</table>
	</td>
</tr>
</table>
<br>

<form name="a">
	
	
<table border="1" width="100%">
<tr style="background:#ccc">
	<th width="156" height="45" colspan="2">Class: </th>
	<th width="172" align="center"><div align="center"> <select id="txtsection" style="width:100%">
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
	 <th width="59">Name: </th>
	<th width="200" align="center"><div id="named" align="center"></div></th>
	<th width="173">D.O.B: </th>
	<th width="200" align="center"><div id="age" align="center"></div></th>
</tr>

<tr>
<td colspan="7"><center>&nbsp;<div id="error"></div></center></td>
</tr>
</table>
<div id="narrationd"></div>
</form>
</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){		
		$('#txtsection').change(function(){
			var id = $('#txtsection').val();			
			if(id != ""){
				$('#named').load("namediplayforkso.jsp?id="+id);
			}
		});	
	});//end document.ready function
</script>
</html>