<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
		Account account = (Account) session.getAttribute("account");
		String functionalityName = "admissionProcessManagement";
		Functionality functionalityO = Functionality
				.getFunctionalityByFunctionalityName(functionalityName);
		Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
		String stat=request.getParameter("status");
		if (role.isReadable()){
		//now get all applicants from database with status = Admission Request....
		int level=Integer.parseInt(request.getParameter("level"));
		//JOptionPane.showMessageDialog(null, level);
		List<Applicant> applicantList = Applicant.getAllApplicantsWithStatuslevel(stat,level);
		//	JOptionPane.showMessageDialog(null, applicantList.size());
		Iterator<Applicant> applicantItr = applicantList.iterator();
		applicantList = null;	
%>
<%@include file="waitinginlevel.jsp" %>
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
				<td><%=applicant.getDateOfBirth1() %> </td>
				<td>
					<a href="#.jsp" onclick="showDetailsOfThisApplicant('<%=applicant.getId()%>');">View Detail</a> |
					<a href="#.jsp" onclick="hideDetailsOfThisApplicant('<%=applicant.getId()%>');">Hide Detail</a>
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
<%
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation! </p>");
	}
%>