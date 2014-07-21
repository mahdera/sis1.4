<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int sectionIdFrom = Integer.parseInt(request.getParameter("sectionIdFrom"));
	int sectionIdTo = Integer.parseInt(request.getParameter("sectionIdTo"));
	String attendanceSession = request.getParameter("attendanceSession");
	String startDate = request.getParameter("startDate");
	String endDate = request.getParameter("endDate");
	
	List<AttendanceTakesBy> attendanceTakesByList = AttendanceTakesBy.getAttendanceTakesByReport(sectionIdFrom, sectionIdTo);
	if(!attendanceTakesByList.isEmpty()){
		%>
		<div id="printAttendanceReportDiv" width="100%">
		<table border="0" width="100%">
			<tr style="background:#ccc;font-weight:bolder;font-size:12pt">
				<td colspan="7" align="center">
				    Attendance Taken By Report 
					Attendance Session: <%=attendanceSession %>  During <%=startDate %> & <%=endDate %>
				</td>
			</tr>
			<tr style="background:#eee;font-weight:bolder;font-size:12pt">
				<td>Id</td>
				<td>Full Name</td>
				<td>Section</td>
				<td>Taken</td>
				<td>Taken Date</td>
				<td>Session</td>
			</tr>
			<%
				Iterator<AttendanceTakesBy> attendanceTakesByItr = attendanceTakesByList.iterator();			
				while(attendanceTakesByItr.hasNext()){
					AttendanceTakesBy attendanceTakesBy = attendanceTakesByItr.next();
						
					%>
					<tr>
						<td><%=attendanceTakesBy.getId()%></td>						
						<td><%=attendanceTakesBy.getFirst_name()+" "+attendanceTakesBy.getMiddle_name()+" "+attendanceTakesBy.getLast_name() %></td>
						<td><%=attendanceTakesBy.getSection_name() %></td>
					<%
					List<AttendanceTakesBy> attendanceTakesByList2 = AttendanceTakesBy.getAttendanceDateAndSession(attendanceTakesBy.getId(), attendanceTakesBy.getSection_id(), startDate, endDate, attendanceSession);
					Iterator<AttendanceTakesBy> attendanceTakesByItr2 = attendanceTakesByList2.iterator();	
						 if(attendanceTakesByItr2.hasNext()){
						%>	
						<td>Yes</td>
						<td>
							<%
							while(attendanceTakesByItr2.hasNext()){
								AttendanceTakesBy attendanceTakesBy2 = attendanceTakesByItr2.next();
							%>
								
								<%=attendanceTakesBy2.getDate_taken()%><br>
															
							<%
							}
							%>
						</td>
						<td>
							<%
							Iterator<AttendanceTakesBy> attendanceTakesByItr3 = attendanceTakesByList2.iterator();
							while(attendanceTakesByItr3.hasNext()){
								AttendanceTakesBy attendanceTakesBy3 = attendanceTakesByItr3.next();
							%>
								
								<%=attendanceTakesBy3.getAttendance_session()%><br>
													
							<%
							}
							%>
						</td>
							<%
						}else{
						%>
						<td>No</td>		
						<td>Null</td>
						<td>Null</td>								
						<%
							}
						%>
								
					</tr>		
					<%		
				}//end while loop
			%>
		</table>
		</div>
		<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
		<a href="#.jsp" onclick="printDiv('printAttendanceReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a>
	
		<%
	}else{
		%>
		<p class="msg info">No attendance information!</p>
		<%
	}
%>