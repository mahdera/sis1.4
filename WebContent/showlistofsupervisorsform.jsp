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
	</tr>
	<%
		int ctr=1;
		Supervisors supervisor2=null;
		while(supervisorItr.hasNext()){
			 supervisor2 = supervisorItr.next();
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
				<td><%=supervisor2.getId() %></td>
				<td><%=supervisor2.getSupervisorName() %></td>
				<td><%=supervisor2.getType() %></td>				
				<td><%=supervisor2.getSectionName()%></td>
				<td><%=supervisor2.getLevelfromName() %></td>
				<td><%=supervisor2.getLeveltoName() %></td>
				<td><%=supervisor2.getStatus() %></td>
				<td><%=supervisor2.getDate() %></td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<div id="supervisorsDiv"></div>