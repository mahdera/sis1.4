<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Date" %>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int sectionIdFrom = Integer.parseInt(request.getParameter("sectionIdFrom"));
	int sectionIdTo = Integer.parseInt(request.getParameter("sectionIdTo"));
	String attendanceSession = request.getParameter("attendanceSession");
	String attendanceType = request.getParameter("attendanceType");
	String startDate = request.getParameter("startDate");
	String endDate = request.getParameter("endDate");
	
	List<AttendanceGrid> attendanceGridList = AttendanceGrid.getAllAttendanceGridsWithTheFollowingDateRangeForCoordinators(startDate, endDate,                   
			attendanceSession,attendanceType,sectionIdFrom,sectionIdTo);
	if(!attendanceGridList.isEmpty()){
		%>
		<div id="printAttendanceReportDiv" width="100%">
		<table border="0" width="100%">
			<tr style="background:#ccc;font-weight:bolder;font-size:12pt">
				<td colspan="7" align="center">
				    Attendance Summary Report for Level From:<%=Level.getLevel(sectionIdFrom).getLevelName() %>   To: <%=Level.getLevel(sectionIdTo).getLevelName() %>
					Attendance Session: <%=attendanceSession %> Attendance Type: <%=attendanceType %> During <%=startDate %> & <%=endDate %>
				</td>
			</tr>
			<tr style="background:#eee;font-weight:bolder;font-size:12pt">
				<td>Ser.No</td>
				<td>Full Name</td>
				<td>Sex</td>
				<td>Birth date</td>
				<td>Section</td>
				<td>No of Days Late</td>
				<td>No of Days Absent</td>
				<td>Total</td>
				<td>Taken By</td>
				<td>View Detail</td>
			</tr>
			<%
				Iterator<AttendanceGrid> attendanceGridItr = attendanceGridList.iterator();
				int ctr=1;
				while(attendanceGridItr.hasNext()){
					AttendanceGrid attendanceGrid = attendanceGridItr.next();
					Student student = Student.getStudent(attendanceGrid.getStudentId());
					Applicant applicant = Applicant.getApplicant(student.getApplicantId());
					String fullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
					String sectionName = attendanceGrid.getSectionName();
					int numberOfDaysLate = AttendanceGrid.getTotalNumberOfDaysThisStudentWasLate(student.getId(),startDate, endDate);
					int numberOfDaysAbsent = AttendanceGrid.getTotalNumberOfDaysThisStudentWasAbsent(student.getId(),startDate, endDate);
					int totalNumberOfDaysLateAndAbsent = numberOfDaysLate + numberOfDaysAbsent;
					String takenBy = Teacher.getTeacherName(attendanceGrid.getTeacherId());
					%>
					<tr>
						<td><%=ctr%></td>
						<td><%=fullName %></td>
						<td><%=applicant.getSex() %></td>
						<td><%=applicant.getDateOfBirth1() %></td>
						<td><%=sectionName %></td>
						<td><%=numberOfDaysLate %></td>
						<td><%=numberOfDaysAbsent %></td>						
						<td><%=totalNumberOfDaysLateAndAbsent %></td>
						<td><%=takenBy %></td>
						<td>
							<a href="#.jsp" onclick="showAllAttendanceGridsOfThisStudentDuringThisPeriod('<%=student.getId() %>',
							'<%=startDate %>','<%=endDate %>');">View Details</a> |
							 <a href="#.jsp" onclick="hideAttendanceGridsOfThisStudent('<%=student.getId() %>');">Hide Detail</a>
						</td>
					</tr>
					<tr>
						<td colspan="7">
							<%
								String divId = "attendanceDiv"+student.getId();
							%>
							<div id="<%=divId%>"></div>
						</td>
					</tr>
					<%
					ctr++;
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