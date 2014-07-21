<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Teacher:</td>
			<td>
				<select name="slctteacher" id="slctteacher" style="width:50%">
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
		</tr>
		<tr>
			<td>Select Subject:</td>
			<td>
				<select name="slctsubject" id="slctsubject" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Subject> sList = Subject.getAllSubjects();
						Iterator<Subject> sItr = sList.iterator();
						while(sItr.hasNext()){
							Subject s = sItr.next();
							%>
							<option value="<%=s.getId()%>"><%=s.getSubjectName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Section:</td>
			<td>
				<select name="slctsection" id="slctsection" style="width:50%" multiple="multiple">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Section> sectionList = Section.getAllSections();
						Iterator<Section> sectionItr = sectionList.iterator();
						while(sectionItr.hasNext()){
							Section s = sectionItr.next();
							%>
							<option value="<%=s.getId()%>"><%=s.getSectionName()%></option>
							<%							
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Select Term:</td>
			<td>
				<select name="slctterm" id="slctterm" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Semester> seList = Semester.getAllSemesters();
						Iterator<Semester> seItr = seList.iterator();
						while(seItr.hasNext()){
							Semester sm = seItr.next();
							%>
							<option value="<%=sm.getId()%>"><%=sm.getSemesterName() %></option>
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
					<option value="" selected="selected">--Select--</option>
					<%
						List<AcademicYear> aList = AcademicYear.getAllAcademicYears();
						Iterator<AcademicYear> aItr = aList.iterator();
						while(aItr.hasNext()){
							AcademicYear a = aItr.next();
							%>
							<option value="<%=a.getId()%>"><%=a.getAcademicYearName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Save" onclick="saveTeaches(document.getElementById('slctteacher').value,
						document.getElementById('slctsubject').value,document.getElementById('slctsection').value,
						document.getElementById('slctterm').value,document.getElementById('slctacademicyear').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>