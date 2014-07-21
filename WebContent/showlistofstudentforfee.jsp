<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.*"%>
<%
	//int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	//Date attendanceDate = Date.valueOf(request.getParameter("attendanceDate"));
	int counter=0;
	int levelId = Integer.parseInt(request.getParameter("levelId"));		
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String attendanceSession = request.getParameter("accademicYear");
	if(1==1){
		List<Fee> feeList=Fee.getAllstudents(levelId,sectionId);
		Iterator<Fee> feeItr = feeList.iterator();
	if(1==1){
%>
<form>
	<table id="fee" width="100%">
		<tr>
			<th>First Name</th>
			<th>Middle Name</th>
			<th>Last Name</th>
			<th>Debit</th>
			<th>Credit</th>
			<th>penality</th>
			<th>Capital levy</th>
			<th>Status</th>
		</tr>
		<%
			while (feeItr.hasNext()) {
					Fee fe= feeItr.next();
					//Student student = Student.getStudent(a.getStudentId());
					//Applicant applicant = Applicant.getApplicant(student.getApplicantId());
		%>
		<tr width="100" style="background: #fff">
			<td width=""><%=fe.getFirstName()%> <input type="hidden" id="hiddenfee<%=counter%>" value="<%=fe.getStuedentId()%>" />
			</td>
			<td width=""><%=fe.getMiddleName()%></td>
			<td width=""><%=fe.getLastName()%></td>
			<td width="">
			</td>
			<td width="">
			</td>
			<td width="">
			</td>
			<td width="">
			</td>
			<td width="20"><a href="#.jsp" onclick="showDetailofThisStudentforFee('<%=fe.getStudentId()%>');">Detail</a>
			</td>
		</tr>
		<%
			counter++;
				}//end while loop
		%>
		
	</table>
</form>
<%
	} else {
%>
<p class="msg info">No student information found under the selectd
	section!</p>
<%
	}
	}else{
%>
<p class="msg info">Attendance has already been taken for this session, please edit for any change.</p>
<%
	}
%>