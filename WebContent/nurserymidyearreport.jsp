<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	int currentYearOnly = 1900 + modificationDate.getYear();
	//now get the month name...
	int currentMonth = (modificationDate.getMonth() + 1);
	String currentMonthName = "";
	if(currentMonth == 1){
		currentMonthName = "January";
	}else if(currentMonth == 2){
		currentMonthName = "February";
	}else if(currentMonth == 3){
		currentMonthName = "March";
	}else if(currentMonth == 4){
		currentMonthName = "April";
	}else if(currentMonth == 5){
		currentMonthName = "May";
	}else if(currentMonth == 6){
		currentMonthName = "June";
	}else if(currentMonth == 7){
		currentMonthName = "July";
	}else if(currentMonth == 8){
		currentMonthName = "August";
	}else if(currentMonth == 9){
		currentMonthName = "September";
	}else if(currentMonth == 10){
		currentMonthName = "October";
	}else if(currentMonth == 11){
		currentMonthName = "November";
	}else if(currentMonth == 12){
		currentMonthName = "December";
	}
%>
<div id="Display" style="width:100%;" >
	<center>
		<table border="0" width="50%">
			<tr>
				<td align="center"><img src="design/teddy_bear_1.png" border="0" width="100%"/></td>
				<td align="center"><img src="design/teddy_bear_2.png" border="0" width="100%"/></td>
				<td align="center"><img src="design/teddy_bear_3.png" border="0" width="100%"/></td>
				<td align="center"><img src="design/teddy_bear_1.png" border="0" width="100%"/></td>
				<td align="center"><img src="design/teddy_bear_2.png" border="0" width="100%"/></td>
				<td align="center"><img src="design/teddy_bear_3.png" border="0" width="100%"/></td>
				<td align="center"><img src="design/teddy_bear_1.png" border="0" width="100%"/></td>
			</tr>
		</table>
	</center>
	<center>
		<img src="design/nursery_header.png" border="0" width="50%"/>
	</center>	
	<center><b>Nursery Mid-Year Report</b></center>
	<%
		List<Section1> nurseryList = Section1.getAllSectionsOfThisLevel("Nursery");
		Iterator<Section1> nurseryItr = nurseryList.iterator();
    %>	
	<center><b><%=currentMonthName %> <%=currentYearOnly%></b></center><br />
	<form name="a">
		<table border="0" width="100%" align="center">
			<tr>
				<th>Class: </th>
				<th>
					<div align="center">
						<select id="txtsection" style="width:100%">
						 <option value="">Select Class</option>
						 <%
									while(nurseryItr.hasNext()){
										Section1 h = nurseryItr.next();
							%>
						 				<option value="<%=h.getId()%>"><%=h.getSection_name()%></option>
						 <%
									}//end while loop
							%>
						 </select>
				 	</div>
				 </th>
				<th>Name: </th>
				<th width="200"><div id="named" align="center"></div></th>
				<th>Date of Birth: </th>
				<th width="200"><div id="dated" align="center"></div></th>
			</tr>		
			<tr>
				<td colspan="6">
					<center>&nbsp;
						<div id="error">
						<%
							if (request.getParameter("error") != null){
								out.print(request.getParameter("error"));
							}
						%>
						</div>
					</center>
				</td>
			</tr>
		</table>
	<div id="textarea"></div>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsection').change(function(){
			var sectionId = $('#txtsection').val();
			if(sectionId != ""){
				$('#named').load("namedisplay.jsp?id="+sectionId);
			}
		});
	});//end document.ready function
</script>
