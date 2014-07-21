<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String supervisorIdSection;
	List<Supervisors> supervisorList = Supervisors.getAllSupervisor();	
	Iterator<Supervisors> supervisorItr;
	String supervisorType = null;
	
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "notificationManagement";
	Functionality functionalityO = Functionality
			.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	
	if (role.isUpdateable() && role.isDeletable()){
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
				<td>From Date:</td>
			<td>
				<input type="text" name="txtdateFrom" id="txtdateFrom" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateFrom');" />
			</td>
			<td>Present :</td>
			<td><select name="slcttype" id="slcttype"
				style="width: 100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Both">Both</option>
					<option value="Late">Late</option>
					<option value="Absent">Absent</option>
			</select>
			</td>
			<td>Select Session:</td>
			<td><select name="slctsession" id="slctsession"
				style="width: 100%">
					<option value="" selected="selected">--Select--</option>
					<option value="Both">Both</option>
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
			</td>
				<td>To Date:</td>
			<td>
				<input type="text" name="txtdateTo" id="txtdateTo" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateTo');" />
			</td>
			<td>Select Section</td>
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
			<td colspan="8" align="right"><input type="button" value="List"
				onclick="showListOfStudentsForNotificationEdit(document.getElementById('slctsection').value,
					document.getElementById('slctlevel').value,
					document.getElementById('slctsupervisor').value,
					document.getElementById('slctsession').value,
					document.getElementById('txtdateFrom').value,
					document.getElementById('txtdateTo').value,
					document.getElementById('slcttype').value);" />
				<input type="reset" value="Clear All" />
			</td>
		</tr>
	</table>
</form>
<div id="notifShowDiv"></div>
<%
				}else{
					%>
					<p class="msg error">You do not have sufficient privileged to
			perform this operation!</p>
					<%
				}
		%>