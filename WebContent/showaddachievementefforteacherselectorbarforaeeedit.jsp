<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Teacher:</td>
			<td>
				<select name="slctteacher" id="slctteacher" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Teacher> teacherList = Teacher.getAllTeachers();
						Iterator<Teacher> teacherItr = teacherList.iterator();
						while(teacherItr.hasNext()){
							Teacher t = teacherItr.next();
							%>
							<option value="<%=t.getId() %>"><%=t.getFirstName() %> <%=t.getMiddleName() %></option>
							<%
						}
					%>
				</select>
			</td>
			<td>Select Academic Year:</td>
			<td>
				<select name="slctacademicyear" id="slctacademicyear" style="width:100%">
					<option value="" selected="selected">--Select--</option>
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
			<td>Select Term:</td>
			<td>
				<select name="slctterm" id="slctterm" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Semester> sList = Semester.getAllSemesters();
						Iterator<Semester> sItr = sList.iterator();
						while(sItr.hasNext()){
							Semester s = sItr.next();
							%>
							<option value="<%=s.getId() %>"><%=s.getSemesterName() %></option>
							<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="button" value="Show Levels" onclick="showListOfLevelsManagedByThisTeacherInThisAcademicYearAndTermForAEEEdit(
						document.getElementById('slctteacher').value,document.getElementById('slctacademicyear').value,
						document.getElementById('slctterm').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
<div id="levelListDivEdit"></div>