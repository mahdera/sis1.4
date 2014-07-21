<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	
	//now get all students of this teacher in this section
	List<Applicant> applicantList = ReportAnalyzer.getClassStudentSummary(teacherId, sectionId);
	Iterator<Applicant> applicantItr = applicantList.iterator();
	%>
<div id="printReportDiv" width="100%">
	<table border="0" width="100%">
	<tr>
		<td>Ser.No</td>
		<td>Full Name</td>
		<td>Sex</td>
		<td>Nationality</td>
		<td>Date of Birth</td>
		<td>Status</td>
		<td>Remark</td>
	</tr>
	<%
	int ctr=1;
	while(applicantItr.hasNext()){
		Applicant a = applicantItr.next();
		String fullName = a.getFirstName()+" "+a.getMiddleName()+" "+a.getLastName();
		%>
		<tr>
			<td><%=ctr %></td>
			<td><%=fullName %></td>
			<td><%=a.getSex() %></td>
			<td><%=a.getNationality() %></td>
			<td><%=a.getDateOfBirth() %></td>
			<td></td>
			<td></td>
		</tr>
		<%
	}//end while loop
%>
</table>
<br/><br/>

</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a> 
