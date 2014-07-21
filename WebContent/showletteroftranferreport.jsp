<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	
%>
<table border="1" width="100%">
	<tr style="background:#eeeeee">
		<td>
			Teacher:
		</td>
		<td>
			<select name="slctteacher" id="slctteacher" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<Teacher> teacherList = Teacher.getAllTeachers();
					Iterator<Teacher> teacherItr = teacherList.iterator();
					while(teacherItr.hasNext()){
						Teacher t = teacherItr.next();
						String fullName = t.getFirstName()+" "+t.getMiddleName()+" "+t.getLastName();
						%>
						<option value="<%=t.getId() %>"><%=fullName %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
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
			<input type="button" value="Show" onclick="showClassStudentSummaryReportNow(document.getElementById('slctteacher').value,
					document.getElementById('slctsection').value);"/>
		</td>
	</tr>
</table>
<div id="displayReportContentDiv"></div>