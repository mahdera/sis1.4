<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%

Account account = (Account) session.getAttribute("account");
Teacher teacher = Teacher.getTeacher(account.getUserId());
List<Level> levelList = null;
Iterator<Level> levelItr = null;
List<Subject> subjectList = null;
Iterator<Subject> subjectItr = null;

if(teacher != null){
	 levelList = TeachesStudent.getLevel(String.valueOf(teacher.getId()));
	 levelItr = levelList.iterator();
	 subjectList = TeachesStudent.getSubject(String.valueOf(teacher.getId()));
	 subjectItr = subjectList.iterator();	
			String functionalityName = "gradeCardsManagement";
			Functionality functionalityO = Functionality
					.getFunctionalityByFunctionalityName(functionalityName);
			Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
			
if (role.isUpdateable()){
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Teacher:
			<select name="slctteacher" id="slctteacher"
				style="width: 100%">
					<option value="" selected="selected">--Select--</option>
				       <option value="<%= teacher.getId() %>"><%=teacher.getFirstName()+" "+teacher.getMiddleName()+" "+teacher.getLastName() %></option>							
			</select>
			</td>
			<td>Select Level:					
				<select name="slctlevel" id="slctlevel"	style="width: 100%" >
					<option value="" selected="selected">--Select--</option>
					<%
						while(levelItr.hasNext()){
							Level level = levelItr.next();
					%>
							 <option value="<%= level.getId() %>"><%=level.getLevelName()%></option>
					<%
						}
					%>				      							
			</select>
			</td>
			<td>Select Subject:
				<select name="slctsubject" id="slctsubject"	style="width: 100%">
					<option value="" selected="selected">--Select--</option>
					<%
						while(subjectItr.hasNext()){
							Subject subject = subjectItr.next();
					%>
							 <option value="<%= subject.getId() %>"><%=subject.getSubjectName() %></option>
					<%
						}
					%>
					
			</select></td>
		</tr>
		<tr>
			<td>Select Academic Year:
				<select name="slctacademicyear" id="slctacademicyear"
				style="width: 100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<AcademicYear> academicYearList = AcademicYear
									.getAllAcademicYears();
							Iterator<AcademicYear> academicYearItr = academicYearList
									.iterator();
							academicYearList = null;
							while (academicYearItr.hasNext()) {
								AcademicYear a = academicYearItr.next();
					%>
					<option value="<%=a.getId()%>"><%=a.getAcademicYearName()%></option>
					<%
						}
					%>
			</select></td>
			<td>Select Term:
				<select name="slctsemester" id="slctsemester"
				style="width: 100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Semester> semesterList = Semester.getAllTerm();
							Iterator<Semester> semesterItr = semesterList.iterator();
							semesterList = null;
							while (semesterItr.hasNext()) {
								Semester s = semesterItr.next();
						      	%>
								<option value="<%=s.getId()%>" title="<%=s.getDescription()%>"><%=s.getSemesterName()%></option>
								<%
						    }
					%>
			</select></td>
			<td colspan="10" align="right"><input type="button" value="Show Grade Grid"
				onclick="showTheGradeCardListForThisParameterForEdit(document.getElementById('slctteacher').value,
					document.getElementById('slctlevel').value,document.getElementById('slctacademicyear').value,
					document.getElementById('slctsemester').value,document.getElementById('slctsubject').value);" />
				<input type="reset" value="Clear All" /></td>
		</tr>
	</table>
</form>
<div id="gradeCardListDiv"></div>
<%
	} else {
%><p class="msg error">You do not have sufficient privileged to
	perform this operation!</p>
<%
	}
 }
%>
