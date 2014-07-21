<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	String supervisorIdSection;
	List<Supervisors> supervisorList = Supervisors.getAllSupervisor();	
	Iterator<Supervisors> supervisorItr;
	Account account = (Account) session.getAttribute("account");
	String supervisorType = null;
	////
				String functionalityName = "attendanceManagement";
				Functionality functionalityO = Functionality
						.getFunctionalityByFunctionalityName(functionalityName);
				Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
				
	if (role.isReadable() && role.isWritable()){
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Supervisor:</td>
			<td>
				<select name="slctsupervisor" id="slctsupervisor" style="width:100%" onchange="showAllTeachesLevel(this.value);">
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
			<td>Select Date:</td>
			<td>
				<input type="text" name="txtdate" id="txtdate" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdate');" />
			</td>
			<td>Select Session:</td>
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
			<td colspan="4">
			<% if(supervisorType!=null && supervisorType.equalsIgnoreCase("teacher")){ %>
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
			%>
			</td>			
		</tr>
		<tr>
			<td colspan="6" align="right">
				<input type="button" value="Show Attendance Grid" onclick="showListOfStudentsForAttendance(document.getElementById('slctsupervisor').value,document.getElementById('txtdate').value,document.getElementById('slctsession').value,
						document.getElementById('slctsection').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
<div id="attendanceDiv"></div>
<%
	}else{
		%><p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%> 