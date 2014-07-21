<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Teacher:</td>
			<td>
				<select name="slctteacher" id="slctteacher" style="width:50%">
					<option value="">--Select--</option>
					<%
						List<Teacher> tList = Teacher.getAllTeachers();
						Iterator<Teacher> tItr = tList.iterator();
						while(tItr.hasNext()){
							Teacher t = tItr.next();
							%>
							<option value="<%=t.getId() %>"><%=t.getFirstName() %> <%=t.getMiddleName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Term:</td>
			<td>
				<select name="slctterm" id="slctterm" style="width:50%">
					<option value="">--Select--</option>
					<%
						List<Semester> sList = Semester.getAllSemesters();
						Iterator<Semester> sItr = sList.iterator();
						while(sItr.hasNext()){
							Semester se = sItr.next();
							%>
							<option value="<%=se.getId() %>"><%=se.getSemesterName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Academic Year:</td>
			<td>
				<select name="slctacademicyear" id="slctacademicyear" style="width:50%">
					<option value="">--Select--</option>
					<%
						List<AcademicYear> aList = AcademicYear.getAllAcademicYears();
						Iterator<AcademicYear> aItr = aList.iterator();
						while(aItr.hasNext()){
							AcademicYear a = aItr.next();
							%>
							<option value="<%=a.getId() %>"><%=a.getAcademicYearName() %></option>
							<%
						}
					%>
				</select>
			</td>			
		</tr>
		<tr>
			<td></td>
			<td>				
				<input type="button" value="Show" onclick="showTeachesInfoForTeacherInTermAndAcademicYearForDelete(
						document.getElementById('slctteacher').value,document.getElementById('slctterm').value,
						document.getElementById('slctacademicyear').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
<div id="teachesListDiv"></div>