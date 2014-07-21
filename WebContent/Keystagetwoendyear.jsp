<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
	List<Section1> keyStageTwoSectionList = Section1.getAllSectionsOfThisLevel("Year 3 (Yr3)", "Year 4 (Yr4)");
	Iterator<Section1> keyStageTwoSectionItr = keyStageTwoSectionList.iterator();
	
	List<Acadamicyear> acy=Acadamicyear.accay();
	Iterator<Acadamicyear> acyItr = acy.iterator();
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
<th width="194" align="center"><div align="center"> 
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
 <th width="129">Name: </th>
<th width="260" align="center"><div id="named" align="center"></div></th>
<th width="55">D.O.B: </th>
<th width="221" align="center"><div id="dated" align="center"></div></th>
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
				$('#named').load("namedisplayforkst2.jsp?id="+id);
			}
		});
	});//end document.ready function
</script>
</html>