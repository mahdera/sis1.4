<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%@page import="java.util.*" %>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String date = request.getParameter("date");
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String attendanceSession = request.getParameter("attendanceSession");
	List<Attendance> attendance = AttendanceGrid.getAttendanceByIDS(sectionId, teacherId, date,attendanceSession);
	Iterator<Attendance> att = attendance.iterator();
	//out.print(teacherId+":"+attendanceDate+":"+sectionId);
	//first check if this teacher is teaching this section
	%>
	<form>
	<table id="attendance" width="100%">
		<tr>
			<th>Counter</th>
			<th>First Name</th>
			<th>Middle Name</th>
			<th>Last Name</th>
			<th>Nationlality</th>
			<th>Legal Guardian</th>
			<th>Phone No.</th>
		</tr>
<%
	while (att.hasNext()){
		Attendance a = att.next();
		%>
		<tr width="100">
			<td width="20"><input type="text" id="txtfirstname" value="<%=a.getStudentFirstName() %>" disabled ="disabled"/>
			<input type="hidden" id="hiddenattendance" value="<%=a.getStudentId() %>" disabled ="disabled"/>
			</td>
			<td width="20"><input type="text" id="txtmiddlename" value="<%=a.getStudentMiddleName() %>" disabled ="disabled"/></td>
			<%if(a.getTardi()==1){ %>
				<td width="20"><input type="checkbox" id="checkboxtardi" checked ="checked" disabled ="disabled"/></td>
			<%}else{ %>
			<td width="20"><input type="checkbox" id="checkboxtardi" disabled ="disabled"/></td>
			<%}if(a.getAbsent()==1) {%>
			<td width="20"><input type="checkbox" id="checkboxabsent" checked ="checked" disabled ="disabled"/></td>
			<%} else{%>
			<td width="20"><input type="checkbox" id="checkboxabsent"  disabled ="disabled"/></td>
			<%} %>
		</tr>
		<%
	}
%>
</table>
</form>
	