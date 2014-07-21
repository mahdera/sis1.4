<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.*"%>
<%@page language="java" pageEncoding="utf-8"%>
<%
	//int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	//Date attendanceDate = Date.valueOf(request.getParameter("attendanceDate"));
	//JOptionPane.showMessageDialog(null, request.getParameter("sectionId")+" "+
	//		request.getParameter("level")+" "+request.getParameter("teacherId")+" "+
	//		request.getParameter("attendanceSession")+" "+request.getParameter("treshold"));
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String level = request.getParameter("level");
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String attendanceSession = request
			.getParameter("attendanceSession");
	String dateFrom = request.getParameter("dateFrom");
	String dateTo = request.getParameter("dateTo");
	String type = request.getParameter("types");
	int countLate = 0;
	int countAbsent = 0;
	ArrayList<String> datesLate=new ArrayList<String>();
	ArrayList<String> datesAbsent=new ArrayList<String>();
	int rowc=0;
	List<String> ids=new ArrayList<String>();
	//ArrayList<String> dates=new ArrayList<String>();
	//ArrayList<dates> all_dates=new ArrayList<dates>();
	//System.out.println("this is the type:"+type);
	//JOptionPane.showMessageDialog(null, "   outside condition");
	List<AttendanceNotification> attendance = null;
	attendance = AttendanceNotification.getAttendance(teacherId,
			sectionId, level, attendanceSession, dateFrom, dateTo, type);
	
	for(int i=0;i<attendance.size();i++){
		ids.add(attendance.get(i).getStudId());
		//JOptionPane.showMessageDialog(null, attendance.get(i).getStudId());
	}

	if (!attendance.isEmpty()) {
		Iterator<AttendanceNotification> att = attendance.iterator();
		int counter = 1;
		int id_counter=0;
		//out.print(teacherId+":"+attendanceDate+":"+sectionId);
		//first check if this teacher is teaching this section
%>
<div id="printContactView" style="overflow:auto;">
	<form>
		<table id="attendance" width="100%">
			<tr>
				<th>No.</th>
				<th>First Name</th>
				<th>Middle Name</th>
				<th>Last Name</th>
				<th>Sex</th>
				<th>Nationality</th>
				<th>Guardian</th>
				<th>Phone No.</th>
				<th>ID</th>
				<%if(!type.equalsIgnoreCase("Absent")) {%>
				<th>Late Count</th>
				<th>Late Dates</th>
				<%} 
				if(!type.equalsIgnoreCase("Late")) {
				%>
				<th>Absent Count</th>
				<th>Absent Dates</th>
				<%} %>		
				<th>Reason</th>
				<th>Action</th>
			</tr>
			<%
				while (att.hasNext()) {
						AttendanceNotification a = att.next();
						//Student student = Student.getStudent(a.getStudentId());
						//Applicant applicant = Applicant.getApplicant(student.getApplicantId());
			%>
			<tr width="100" style="background: #fff">
				<td><%=counter%></td>
				<td><%=a.getFirstName()%></td>
				<td><%=a.getMiddleName()%></td>
				<td><%=a.getLastName()%></td>
				<td><%=a.getSex()%></td>
				<td><%=a.getNationality()%></td>
				<td><%=a.getLegalGuardian()%></td>
				<td><%=a.getPhoneNo()%></td>
				<td><%=a.getStudId()%></td>
				<%if(!type.equalsIgnoreCase("Absent")) {%>
				<%countLate=AttendanceNotification.getLateCount(sectionId, level, attendanceSession, dateFrom, dateTo,ids.get(id_counter));%>
				<td><%=countLate%></td>
				<%datesLate=AttendanceNotification.getLateDates(teacherId,sectionId, level, attendanceSession, dateFrom, dateTo,ids.get(id_counter));%>
				<td><%=datesLate%></td>
				<%} 
				if(!type.equalsIgnoreCase("Late")) {
				%>
				<%countAbsent=AttendanceNotification.getAbsentCount(sectionId, level, attendanceSession, dateFrom, dateTo,ids.get(id_counter));%>
				<td><%=countAbsent%></td>
				<%datesAbsent=AttendanceNotification.getAbsentDates(teacherId,sectionId, level, attendanceSession, dateFrom, dateTo,ids.get(id_counter));%>
				<td><%=datesAbsent%></td>
				<%} %>
				<td><font color="green"><i><input type="text" name="txtreason"
					style="height: 50px; width: 100%;" id="txtreason<%=rowc%>" size="10" /></i></font></td>
				<td><button onclick="savenotifaction(document.getElementById('txtreason<%=rowc%>').value,
			    '<%=attendance.get(rowc).getStudId()%>','<%=sectionId%>','<%=attendanceSession%>','<%=type%>','Y');return false;">dealt</button>
				</td>
			</tr>
			<%
				counter++;
				id_counter++;
				rowc++;
					}//end while loop
			%>
		</table>
	</form>

	<%
		} else {
	%>
	<p class="msg info">No student information found under the selected
		section!</p>
	<%
		}
	%>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printContactView')" style="float:right">Print Contact<img src="design/printer.jpeg" border="0" align="absmiddle"/></a>
