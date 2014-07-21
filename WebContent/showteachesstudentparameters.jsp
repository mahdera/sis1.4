<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Teacher: <select name="slctteacher" id="slctteacher" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Teacher> tList = Teacher.getAllTeachers();
						Iterator<Teacher> tItr = tList.iterator();
						while(tItr.hasNext()){
							Teacher t = tItr.next();
							%>
							<option value="<%=t.getId()%>"><%=t.getFirstName() %> <%=t.getMiddleName() %> <%=t.getLastName() %></option>
							<%
						}
					%>
				</select>
			</td>	
			<td>Select Subject: 
				<select name="slctsubject" id="slctsubject" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Subject> sList = Subject.getAllSubjects();
						Iterator<Subject> sItr = sList.iterator();
						sList = null;
						while(sItr.hasNext()){
							Subject s = sItr.next();
							%>
							<option value="<%=s.getId() %>"><%=s.getSubjectName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
			<td></td>
		</tr>		
		<tr>
			<td>Academic Year: <select name="slctacademicyear" id="slctacademicyear">
					<option value="" selected="selected">--Select--</option>
					<%
						List<AcademicYear> aList = AcademicYear.getAllAcademicYears();
						Iterator<AcademicYear> aItr = aList.iterator();
						while (aItr.hasNext()) {
							AcademicYear a = aItr.next();
					%>
					<option value="<%=a.getId()%>"><%=a.getAcademicYearName()%></option>
					<%
						}
					%>
			</select>
			</td>
			<td>Select Term: <select name="slctterm" id="slctterm">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Semester> seList = Semester.getAllSemesters();
						Iterator<Semester> seItr = seList.iterator();
						while (seItr.hasNext()) {
							Semester sm = seItr.next();
					%>
					<option value="<%=sm.getId()%>"><%=sm.getSemesterName()%></option>
					<%
						}
					%>
			</select>
			</td>
			
			<td><input type="button" value="Show"
				onclick="showTeachesStudent(
						document.getElementById('slctteacher').value,						
						document.getElementById('slctacademicyear').value,
						document.getElementById('slctterm').value,
						document.getElementById('slctsubject').value)" />
				<input type="reset" value="Clear All" /></td>
		</tr>
	</table>
</form>
<div id="takingDiv"></div>