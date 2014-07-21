<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.*"%>
<%
	//int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	//Date attendanceDate = Date.valueOf(request.getParameter("attendanceDate"));
	int teacherId = Integer.parseInt(request.getParameter("supervisor"));	
	Date date = Date.valueOf(request.getParameter("date"));	
	String attendanceSession = request.getParameter("session");
	int sectionId = Integer.parseInt(request.getParameter("section"));
	
	boolean taken=AttendanceGrid.isTaken(sectionId, date, teacherId, attendanceSession);
	if(!taken){
	List<Attendance> attendance = AttendanceGrid.getAllStudentsInSection(sectionId, date, teacherId,attendanceSession);
	if (!attendance.isEmpty()) {
		Iterator<Attendance> att = attendance.iterator();
		int counter = 1;
		//out.print(teacherId+":"+attendanceDate+":"+sectionId);
		//first check if this teacher is teaching this section
%>
<form>
	<table id="attendance" width="100%">
		<tr>
			<th>First Name</th>
			<th>Middle Name</th>
			<th>Last Name</th>
			<th>Sex</th>
			<th>Late</th>
			<th>Absent</th>
		</tr>
		<%
			while (att.hasNext()) {
					Attendance a = att.next();
					//Student student = Student.getStudent(a.getStudentId());
					//Applicant applicant = Applicant.getApplicant(student.getApplicantId());
		%>
		<tr width="100" style="background: #fff">
			<td width=""><%=a.getStudentFirstName()%> <input type="hidden"
				id="hiddenattendance<%=counter%>" value="<%=a.getStudentId()%>" />
			</td>
			<td width=""><%=a.getStudentMiddleName()%></td>
			<td><%=a.getStudentLastName()%></td>
			<td><%=a.getStudentSex()%></td>
			<td width=""><input type="checkbox"
				id="checkboxtardi<%=counter%>" />
			</td>
			<td width=""><input type="checkbox"
				id="checkboxabsent<%=counter%>" />
			</td>
		</tr>
		<%
			counter++;
				}//end while loop
		%>
		<tr>
			<td colspan="5" align="center"><input type="button" id="btnsave"
				value="Save"
				onclick="saveAttendance(document.getElementById('slctsupervisor').value,
				document.getElementById('txtdate').value,document.getElementById('slctsection').value,
				document.getElementById('attendance'),'<%=attendanceSession%>');" />&nbsp;&nbsp;<input
				type="reset" id="btnreset" value="reset" onclick="save" />
			</td>
		</tr>
	</table>
</form>
<%
	} else {
%>
<p class="msg info">No student information found under the selectd
	section!</p>
<%
	}
	}else{
%>
<p class="msg info">Attendance has already been taken for this session, please edit for any change.</p>
<%
	}
%>