<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%@page import="java.util.*" %>
<%
	String studentId = request.getParameter("studentId");
	String startDate = request.getParameter("startDate");
	String endDate = request.getParameter("endDate");
	
	//now get the attendance grid for this student with the given date range
	List<AttendanceGrid> attendanceGridList = AttendanceGrid.getAllAttendanceGridsForThisStudentDuringThisPeriod(studentId,startDate,endDate);
	if(!attendanceGridList.isEmpty()){
		Iterator<AttendanceGrid> attendanceGridItr = attendanceGridList.iterator();
		%>
		<table border="0" width="100%">
			<tr style="background:#eee;font-weight:bolder;font-size:12pt">
				<td>Ser.No</td>				
				<td>Late</td>
				<td>Absent</td>
				<td>Session</td>
				<td>Date Attendance Taken</td>	
				<td>Reason Forwarded</td>				
			</tr>
			<%
				int c=1;
				while(attendanceGridItr.hasNext()){
					AttendanceGrid attendanceGrid = attendanceGridItr.next();
					%>
					<tr>
						<td><%=c++ %></td>
						<td>
							<%
								// a little reminder, tardi and absent are supposed to be booleans
								if(attendanceGrid.isTardi()==1)
									out.print("X");
								else
									out.print("---");
							%>							
						</td>
						<td>
							<%
								if(attendanceGrid.isAbsent()==1)
									out.print("X");
								else
									out.print("---");
							%>
						</td>
						<td><%=attendanceGrid.getAttendanceSession() %></td>
						<td><%=attendanceGrid.getDateTaken() %></td>
						<td><% if(attendanceGrid.getReason()!=null){ %>
							<%=attendanceGrid.getReason() %>
							<%} %>
						</td>
					</tr>
					<%
				}//end while loop
			%>
			<tr>
				<td colspan="5">
					N.B. Dates registered as late or absent are marked with symbol "X".
				</td>
			</tr>
		</table>
		<%
	}else{
		%>
		<p class="msg info">No information available!</p>
		<%
	}
%>