<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	int level = Integer.parseInt(request.getParameter("levelId"));
	//List<StudentLevel> studentLevelList = StudentLevel.getAllStudentInThisLevel(level);
	//Iterator<StudentLevel> studentLevelItr = studentLevelList.iterator();
	//studentLevelList = null;
	List<Applicant> a=StudentLevel.getLevelStuds(level);
	Iterator<Applicant> itr=a.iterator();
%>
<table border="0" id="studentProgressTable" class="display" cellspacing="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Sex</th>
		<th>Student Type</th>
		<th>Nationality</th>
		<th>Promotion</th>
	</tr>
	<%
		int ctr = 1;
		//while(studentLevelItr.hasNext()){
			while(itr.hasNext()){
			Applicant applicant=itr.next();
			//StudentLevel stLevel = studentLevelItr.next();
			//JOptionPane.showMessageDialog(null, );
			//Student st = Student.getStudent(stLevel.getStudentId());
			//Applicant applicant = Applicant.getApplicant(st.getApplicantId());
			//Applicant applicant = Applicant.getApplicant(stLevel.getStudentId());
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
				<td><%=applicant.getType() %></td>
				<td><%=applicant.getNationality() %></td>
				<td>
					<a href="#.jsp" onclick="showChangeLevelFormForThisStudent('<%=applicant.getId() %>');">Change Level</a>
				</td>
			</tr>
			<tr>
				<td colspan="10">
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