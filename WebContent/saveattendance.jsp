<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	String date = request.getParameter("date");
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String attendanceSession = request.getParameter("attendanceSession");
	int counter = Integer.parseInt(request.getParameter("attCounter"));
	System.out.print(counter);
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
		AttendanceGrid att = new AttendanceGrid(teacherId,sectionId,date,attendanceSession,studId,tardi,absent);
		att.addAttendanceGrid();
	}
%>
<p class="msg done">Attendance Added successfully!</p>
<%} else{%>
<p class="msg info">A student can not be absent and late at the same time, make sure you don't have both selected before saving.</p>
<% }%>