<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%@page import="java.util.*" %>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String date = request.getParameter("date");
	String attendanceSession = request.getParameter("attendanceSession");
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	
	List<Attendance> attendance = AttendanceGrid.getAttendanceByIDSForAttendance(sectionId, teacherId, date,attendanceSession);
	Iterator<Attendance> att = attendance.iterator();
	//JOptionPane.showMessageDialog(null, "inside view");
	//out.print(teacherId+":"+attendanceDate+":"+sectionId);
	//first check if this teacher is teaching this section
	%>
<div id="printAttendanceView" width="100%">

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
			<td width=""><%=a.getStudentFirstName() %>
			<input type="hidden" id="hiddenattendance" value="<%=a.getStudentId() %>" disabled ="disabled"/>
			</td>
			<td width=""><%=a.getStudentMiddleName()%></td>
			<td><%=a.getStudentLastName()%></td>
			<td><%=a.getStudentSex()%></td>		
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

</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printAttendanceView')" style="float:right">Print Attendance <img src="design/printer.jpeg" border="0" align="absmiddle"/></a>