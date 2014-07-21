<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	//String status = request.getParameter("status");
	//out.print(status);
	//now get all applicants from database with status = Admission Request....
	List<Applicant> applicantList = Applicant.getAllApplicantsWithStatus("Admission Request");
	Iterator<Applicant> applicantItr = applicantList.iterator();
	applicantList = null;
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Passport Number</th>
		<th>Date of Birth</th>
		<th>More</th>
	</tr>
	<%
		int ctr=1;
		while(applicantItr.hasNext()){
			Applicant applicant = applicantItr.next();
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
				<td><%=applicant.getPassportNumber() %></td>
				<td><%=applicant.getDateOfBirth() %></td>
				<td>
					<a href="#.jsp" onclick="showDetailsOfThisApplicantForPrinting('<%=applicant.getId()%>');">View Detail</a> | 
					<a href="#.jsp" onclick="hideDetailsOfThisApplicantForPrinting('<%=applicant.getId()%>');">Hide Detail</a>
				</td>
			</tr>
			<tr>
				<%
					String divId = "applicantDetail" + applicant.getId();
				%>
				<td colspan="7">
					<div id="<%=divId %>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>