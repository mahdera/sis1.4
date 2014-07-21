<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Supervisors> supervisorList = Supervisors.getAllSupervisorForSupervisor();
	Iterator<Supervisors> supervisorItr = supervisorList.iterator();	
%>
<table border="0" width="100%">
	<tr>
		<th>Supervisor Id</th>
		<th>Supervisor Name</th>
		<th>Type of Supervision</th>		
		<th>Section</th>
		<th>Level From </th>
		<th>Level To</th>
		<th>Status</th>
		<th>Date</th>		
		<th>Delete</th>
	</tr>
	<%
		int ctr=1;
		Supervisors supervisor=null;
		while(supervisorItr.hasNext()){
			 supervisor = supervisorItr.next();
			if(ctr%2==0){
			%>
			<tr class="bg">
			<%
			}else{
			%>
			<tr>
			<%
			}
			%>
				<td><%=supervisor.getId() %></td>
				<td><%=supervisor.getSupervisorName() %></td>
				<td><%=supervisor.getType() %></td>				
				<td><%=supervisor.getSectionName()%></td>
				<td><%=supervisor.getLevelfromName() %></td>
				<td><%=supervisor.getLeveltoName() %></td>
				<td><%=supervisor.getStatus() %></td>
				<td><%=supervisor.getDate() %></td>
				<td><a href="#.jsp" onclick="deleteThisSupervisor(<%=supervisor.getId()%>);">Delete</a></td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<div id="supervisorsDeleteDiv"></div>