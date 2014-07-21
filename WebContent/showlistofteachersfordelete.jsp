<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Teacher> teacherList = Teacher.getAllTeachers();
	Iterator<Teacher> teacherItr = teacherList.iterator();
	teacherList = null;
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Mobile</th>
		<th>Nationality</th>
		<th>Passport Number</th>
		<th>Short Name</th>
		<th>Delete</th>
	</tr>
	<%
		int ctr=1;
		while(teacherItr.hasNext()){
			Teacher teacher = teacherItr.next();
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
				<td><%=ctr %></td>
				<td><%=teacher.getFirstName() %></td>
				<td><%=teacher.getMiddleName() %></td>
				<td><%=teacher.getLastName() %></td>
				<td><%=teacher.getEmail() %></td>
				<td><%=teacher.getMobile() %></td>
				<td><%=teacher.getNationality() %></td>
				<td><%=teacher.getPassportNumber() %></td>
				<td><%=teacher.getShortname() %></td>
				<td><a><a href="#.jsp" onclick="deleteThisTeacher(<%=teacher.getId()%>);">Delete</a></a></td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<div id="teacherEditDiv"></div>