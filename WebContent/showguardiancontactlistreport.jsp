<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="1" width="100%">
	<tr style="background:#eeeeee">
		<td>
			Section:
		</td>
		<td>
			<select name="slctsection" id="slctsection" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<Section> sectionList = Section.getAllSections();
					Iterator<Section> sectionItr = sectionList.iterator();
					while(sectionItr.hasNext()){
						Section s = sectionItr.next();						
						%>
						<option value="<%=s.getId() %>"><%=s.getSectionName() %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
		<td>
			<input type="button" value="Show" onclick="showListOfStudentsInThisSectionForReport(document.getElementById('slctsection').value);"/>
		</td>
	</tr>
</table>
<div id="displayReportContentDivContact"></div>