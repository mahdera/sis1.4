<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	//List<Teacher> teacherList = Teacher.getAllTeachers();
	//List<Level> levelList = Level.getAllLevels();
	
	String supervisorIdSection;
	List<Supervisors> supervisorList = Supervisors.getAllSupervisor();	
	Iterator<Supervisors> supervisorItr;
	Account account = (Account) session.getAttribute("account");
	String supervisorType = null;
%>
<form>
	<table border="0" width="100%" style="background:#eee">
		<tr>
			<td>Select User:<br/>
				<select name="slctsupervisor" id="slctsupervisor" style="width:100%" onchange="showAllTeachesLevelFrom(this.value);">
					<option value="">--Select--</option>
					<%
						 supervisorItr = supervisorList.iterator();
						while(supervisorItr.hasNext()){							
							Supervisors supervisor = supervisorItr.next();							
							if(String.valueOf(account.getUserId()).equalsIgnoreCase(supervisor.getSupervisorId().toString())){
								supervisorType = supervisor.getType();
								%>
								<option value="<%=supervisor.getSupervisorId() %>"><%=supervisor.getSupervisorName() %></option>
								<%
							}
						}//end while loop
					%>					
				</select>
			</td>
			<td>
				Select Level From:<br/>								
				<div id="levelFromDiv"></div>
			</td>
			<td>
				Select Level To:<br/>
				<div id="levelToDiv"></div>
			</td>
	 </tr>
	 <tr>
			<td>
				Select Attendance Session:<br/>
				<select name="slctattendancesession" id="slctattendancesession" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="both">Both</option>
					<option value="Morning">Morning</option>
					<option value="Afternoon">Afternoon</option>
				</select>
			</td>		
			<td>
				Start Date:<br/>
				<input type="text" name="txtstartdate" id="txtstartdate"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtstartdate');" />
			</td>
			<td colspan="1">
				End Date:<br/>
				<input type="text" name="txtenddate" id="txtenddate"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtenddate');" />
			</td>
			<td>
				<br/>				
				<input type="button" value="Show Report" onclick="showAttendanceReportUsingTheseParametersForDirector(
						document.getElementById('slctsupervisor').value,
						document.getElementById('slctlevelfrom').value,
						document.getElementById('slctlevelto').value,
						document.getElementById('slctattendancesession').value,
						document.getElementById('txtstartdate').value,
						document.getElementById('txtenddate').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
<br/><br/>
<div id="attendanceReportDivForDirector"></div>