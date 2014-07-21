<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	List<StudentLevel> studentLevelList = StudentLevel.getAllStudentLevelsInThisSection(sectionId);
	Iterator<StudentLevel> studentLevelItr = studentLevelList.iterator();
	studentLevelList = null;
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Sex</th>
		<th>Student Type</th>
		<th>Nationality</th>
		<th>Admission Request Date</th>
		<th>Delete</th>
	</tr>
	<%
		int ctr = 1;
		while(studentLevelItr.hasNext()){
			StudentLevel stLevel = studentLevelItr.next();
			Student st = Student.getStudent(stLevel.getStudentId());
			//JOptionPane.showMessageDialog(null, st.getApplicantId()+" , "+stLevel.getStudentId());
			Applicant applicant = Applicant.getApplicant(st.getApplicantId());
			if(ctr % 2 == 0){
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
				<td><%=applicant.getFirstName() %></td>
				<td><%=applicant.getMiddleName() %></td>
				<td><%=applicant.getLastName() %></td>
				<td><%=applicant.getSex() %></td>
				<td><%=applicant.getApplicantType() %></td>
				<td><%=applicant.getNationality() %></td>
				<td><%=applicant.getDateAdmissionRequested() %></td>
				<td>
					<a href="#.jsp" onclick="deleteThisAdmissionProcess('<%=applicant.getId()%>','<%=sectionId%>');">Delete</a>
				</td>
			</tr>
			<tr>
				<td colspan="9">
					<%
						String divId = "applicantDetail" + applicant.getId();
					%>
					<div id="<%=divId %>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
