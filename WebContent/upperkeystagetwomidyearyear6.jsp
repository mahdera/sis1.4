<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%
	List<Section1> keyStageTwoSectionList = Section1.getAllSectionsOfThisLevel("Year 6 (Yr6)");
	Iterator<Section1> keyStageTwoSectionItr = keyStageTwoSectionList.iterator();
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
<center style="font-size:15pt"><b>PRIMARY SCHOOL MID YEAR REPORT for YEAR 6</b></center>
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
	<td colspan="8" align="center" style="border:none">
		<B>KEY TO GRADES: ACCORDING TO YEAR GROUP STANDARDS</B>
	</td>
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


<form name="a">	
<table border="1" width="100%">
<tr>

<th height="45" colspan="2">Class: </th>
<th width="205" align="center"><div align="center"> 
<select id="txtsection" style="width:100%">
 <option value="">Select Class</option>
 <%
			while(keyStageTwoSectionItr.hasNext()){
				Section1 h = keyStageTwoSectionItr.next();
	%>
 <option value="<%=h.getId()%>"><%=h.getSection_name()%></option>
 <%
			}//end while loop
	%>
 </select></div>
 </th>
 <th width="190">Name: </th>
<th width="209" align="center"><div id="namedisp" align="center"></div></th >
<th width="60">AGE: </th>
<th width="168" align="center"><div id="age" align="center"></div></th>
</tr>

<tr>
<td colspan="7"><center>&nbsp;<div id="error"></div></center></td>
</tr>
</table>
<div id="textdesp"></div>
</form>
</div>
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsection').change(function(){
			var id = $('#txtsection').val();
			if(id != ""){
				$('#namedisp').load("namedisplayforukstyear6midyear.jsp?id="+id);
			}
		});
	});//end document.ready function
</script>
</html>