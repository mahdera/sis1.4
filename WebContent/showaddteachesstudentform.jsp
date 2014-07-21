<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
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
			<td>Select Subject: <select name="slctsubject" id="slctsubject">
					<option value="" selected="selected">--Select--</option>
			<%	
				List<Subject> subjectList = Subject.getAllSubjects();
				Iterator<Subject> subjectItr = subjectList.iterator();
					
				while (subjectItr.hasNext()) {
					Subject subject = subjectItr.next();
			%>		
				<option value="<%=subject.getId()%>"><%=subject.getSubjectName()%></option>
			<%				
				}//end while loop
			%>	
			</td>
		</tr>	
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
			<td>Level: <select name="slctlevel" id="slctlevel">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Level> lList = Level.getAllLevels();
						Iterator<Level> lItr = lList.iterator();
						while (lItr.hasNext()) {
							Level l = lItr.next();
					%>
					<option value="<%=l.getId()%>"><%=l.getLevelName()%></option>
					<%
						}
					%>
			</select>
			</td>					
			<td>
				<input type="button" value="Show Student & Subject Grid" onclick="showlistofstudentssubjectsforteaches(document.getElementById('slctlevel').value,document.getElementById('slctsubject').value)"/>
				<input type="reset" value="Clear All" />
			</td>
		</tr>		
	</table>	
</form>
<div id="takenSubjectDiv" style="overflow-x:auto;"></div>