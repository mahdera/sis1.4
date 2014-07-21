<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "attendanceManagement";
	Functionality functionalityO = Functionality
						.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
				
  if (role.isReadable() && role.isUpdateable()){
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Secretary:</td>
			<td>
				<select name="slctteacher" id="slctteacher" style="width:80%" onchange="showAllTeachesLevel(this.value);">
					<option value="">--Select--</option>
					<%					
					List<Supervisors> supervisorList = Supervisors.getAllSupervisor();					
					Iterator<Supervisors> supervisorItr = supervisorList.iterator();
						while(supervisorItr.hasNext()){	
							Supervisors supervisor = supervisorItr.next();							
							if(String.valueOf(account.getUserId()).equalsIgnoreCase(supervisor.getSupervisorId().toString())){
								if(supervisor.getType().equalsIgnoreCase("secretary")||supervisor.getType().equalsIgnoreCase("head") ||supervisor.getType().equalsIgnoreCase("coordinator")){
									%>
									<option value="<%=supervisor.getSupervisorId() %>"><%=supervisor.getSupervisorName() %></option>
									<%
								}
							}
						}//end while loop
					%>		
				</select>
			</td>
			<td>Select Date:</td>
			<td>
				<input type="text" name="txtdate" id="txtdate" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdate');" />
			</td>
			<td>Attendance Session:</td>
			<td>
				<select name="slctsession" id="slctsession" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Morning">Morning</option>
					<option value="Afternoon">Afternoon</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Select Level:</td>
			<td>					
				<div id="levelDiv"></div>
			</td>
			<td>Select Section:</td>
			<td>
				<div id="sectionDiv"></div>
			</td>
			<td colspan="8" align="right">
					<input type="button" value="Show Attendance Grid" onclick="showListOfStudentsForAttendanceEdit(document.getElementById('slctsection').value,
						document.getElementById('slctteacher').value,document.getElementById('txtdate').value,document.getElementById('slctsession').value);"/>
					<input type="reset" value="Clear All"/>
			</td>
			
		</tr>
	</table>
</form>
<div id="attendanceEditDiv"></div>
<%
	}else{
		%><p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%> 