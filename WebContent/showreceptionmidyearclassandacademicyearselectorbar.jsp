<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
<%
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	int currentYearOnly = 1900 + modificationDate.getYear();
	
	List<Section1> nurseryList = Section1.getAllSectionsOfThisLevel("Reception");
	Iterator<Section1> nurseryItr = nurseryList.iterator();
%>
<form>
	<table border="0" width="100%">
		<tr style="background:#ccc;font-weight:bolder">
			<td width="20%">Select Class/Section:</td>
			<td>
				<select name="slctlclass" id="slctclass" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						while(nurseryItr.hasNext()){
							Section1 section = nurseryItr.next();
							%>
								<option value="<%=section.getId() %>"><%=section.getSection_name() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
			<td width="20%">Select Academic Year:</td>
			<td>
				<select name="slctacademicyear" id="slctacademicyear" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						int stopYear = currentYearOnly - 5;
						for(int i=currentYearOnly;i>=stopYear;i--){
							%>
								<option value="<%=i%>"><%=i %></option>
							<%
						}//end for loop
					%>
				</select>
			</td>
			<td align="right">
				<input type="button" value="Show Report" id="btnshowreportreception"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="receptionReportDisplayDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnshowreportreception').click(function(){
			var sectionId = $('#slctclass').val();
			var academicYear = $('#slctacademicyear').val();
			if(sectionId != "" && academicYear != ""){
				$('#receptionReportDisplayDiv').load("showlistofreceptionmidyearevaluationforthissectionandacademicyear.jsp?sectionId="+
						sectionId+"&academicYear="+academicYear);
			}
		});
	});//end document.ready function
</script>