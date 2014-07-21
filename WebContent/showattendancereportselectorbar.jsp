<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Level> levelList = Level.getAllLevels();	String supervisorIdSection;
	List<Supervisors> supervisorList = Supervisors.getAllSupervisor();	
	Iterator<Supervisors> supervisorItr;
	Account account = (Account) session.getAttribute("account");
	String supervisorType = null;
%>
<form>
	<table border="0" width="100%" style="background:#eee">
		<tr>
			<td>Select User:<br/>
				<select name="slctsupervisor" id="slctsupervisor" style="width:100%" onchange="showAllTeachesLevel(this.value);" >
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
				<div id="levelDiv"></div>
			</td>
			<td>
				Select Section:<br/>						
			<%
			if(supervisorType != null){
			if(supervisorType.equalsIgnoreCase("teacher")){ %>
			<select name="slctsection" id="slctsection" style="width: 60%">
					<option value="" selected="selected">--Select--</option>
				<%
				if (!supervisorList.isEmpty()) {
					 supervisorItr = supervisorList.iterator();
					while (supervisorItr.hasNext()) {
						Supervisors supervisor = supervisorItr.next();
						if(supervisor.getType().equalsIgnoreCase("teacher") && String.valueOf(account.getUserId()).equalsIgnoreCase(supervisor.getSupervisorId().toString())){
								%><option value="<%=supervisor.getSectionId()%>"><%=supervisor.getSectionName()%></option><%
						}
					}
				}
				%>
			</select>
			<% }else{
				%><div id="sectionDiv"></div><%
			   }
			}
			%>
			</td>
			<td>
				Select Attendance Session:<br/>
				<select name="slctattendancesession" id="slctattendancesession" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="both">Both</option>
					<option value="Morning">Morning</option>
					<option value="Afternoon">Afternoon</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				Select Attendance Type:<br/>
				<select name="slctattendancetype" id="slctattendancetype" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="both">Both</option>
					<option value="Late">Late</option>
					<option value="Absent">Absent</option>
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
				<%if(supervisorType != null){
				if(supervisorType.equalsIgnoreCase("teacher")){ %>
				<input type="button" value="Show Report" onclick="showAttendanceReportUsingTheseParameters(
						document.getElementById('slctsupervisor').value,
						'0',
						document.getElementById('slctsection').value,
						document.getElementById('slctattendancesession').value,
						document.getElementById('slctattendancetype').value,
						document.getElementById('txtstartdate').value,
						document.getElementById('txtenddate').value);"/>
				<%
				}else{
				%>
				<input type="button" value="Show Report" onclick="showAttendanceReportUsingTheseParameters(
						document.getElementById('slctsupervisor').value,
						document.getElementById('slctlevel').value,
						document.getElementById('slctsection').value,
						document.getElementById('slctattendancesession').value,
						document.getElementById('slctattendancetype').value,
						document.getElementById('txtstartdate').value,
						document.getElementById('txtenddate').value);"/>
				<%
				}
				}
				%>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
<br/><br/>
<div id="attendanceReportDiv"></div>