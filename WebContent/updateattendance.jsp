<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String date = request.getParameter("date");
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	int counter = Integer.parseInt(request.getParameter("attCounter"));
	String sessions = request.getParameter("attendanceSession");
	//JOptionPane.showMessageDialog(null, teacherId+","+date+","+sectionId+","+sessions);
	//AttendanceGrid att = new AttendanceGrid();
		boolean duplicate=false;
	for(int i=1;i<=counter;i++){
		int tardi = Integer.parseInt(request.getParameter("checkboxtardi"+i));
		int absent = Integer.parseInt(request.getParameter("checkboxabsent"+i));
		if(tardi==1 && absent==1){
			duplicate=true;
		}		
	}

	if(!duplicate){
	for(int i=1;i<=counter;i++){
		String studId = String.valueOf(request.getParameter("hiddenattendance"+i));
		int tardi = Integer.parseInt(request.getParameter("checkboxtardi"+i));
		int absent = Integer.parseInt(request.getParameter("checkboxabsent"+i));
		AttendanceGrid.updateAttendanceGrid(teacherId, date, sessions, studId, sectionId, tardi, absent);	
	}
%>
	<p class="msg done">Attendance Updated successfully!</p>
<%} else{%>
	<p class="msg info">A student can not be absent and late at the same time, make sure you don't have both selected before updating.</p>
<% }%>