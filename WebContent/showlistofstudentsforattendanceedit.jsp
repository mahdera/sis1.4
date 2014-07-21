<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%@page import="java.util.*" %>
<%
	//int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	//Date attendanceDate = Date.valueOf(request.getParameter("attendanceDate"));
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String date = request.getParameter("date");
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String attendanceSession = request.getParameter("attendanceSession");
	List<Attendance> attendance = AttendanceGrid.getAttendanceByIDSForAttendance(sectionId, teacherId, date,attendanceSession);
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
	while (att.hasNext()){
		Attendance a = att.next();
		%>
		<tr width="100">
			<td width=""><%=a.getStudentFirstName() %>"
			<input type="hidden" id="hiddenattendance<%=counter%>" value="<%=a.getStudentId() %>" disabled ="disabled"/>
			</td>
			<td width=""><%=a.getStudentMiddleName()%></td>
			<td><%=a.getStudentLastName()%></td>
			<td><%=a.getStudentSex()%></td>
			<%if (a.getTardi()==0) {%>
			<td width="20"><input type="checkbox" id="checkboxtardi<%=counter%>"/></td>
			<%}else{ %>
			<td width="20"><input type="checkbox" checked="checked" id="checkboxtardi<%=counter%>"/></td>
			<%} if(a.getAbsent()==0){%>
			<td width="20"><input type="checkbox" id="checkboxabsent<%=counter%>"/></td>
			<%}else{ %>
			<td width="20"><input type="checkbox" checked="checked" id="checkboxabsent<%=counter%>"/></td>
			<%} %>
		</tr>		
		<%
		counter++;
	}

%>
<tr>
	<td colspan="4" align="center"><input type="button" id="btnupdate" value="Update" onclick="updateAttendance(document.getElementById('slctteacher').value,
				document.getElementById('txtdate').value,document.getElementById('slctsection').value,
				document.getElementById('attendance'),'<%=attendanceSession%>')"/>&nbsp;&nbsp;<input type="reset" id="btnreset" value="reset" onclick="save"/></td>
</tr>
</table>
</form>
	