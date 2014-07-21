<%@ page import="com.signetitsolutions.sis.server.classes.*"%>
<%@ page import="java.util.*" %>
<%
	String studentId = request.getParameter("studentId");
	Applicant applicant = Applicant.getApplicant(studentId);
	ParentInformation mparentInfo = ReportAnalyzer.getParent(studentId, "mother");
	ParentInformation fparentInfo = ReportAnalyzer.getParent(studentId, "father");
%>
<br><br>
<div id ="printReportDiv" width="100%">
<div style="background:#eeeeee" align="center">Student Contact Report</div>
<table border="1" width="100%">
	<tr >
		<td style="background:#eeeeee">Student First Name</td><td><%=applicant.getFirstName() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Student Middle Name</td><td><%=applicant.getMiddleName() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Student Last Name</td><td><%=applicant.getLastName() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Father First Name</td><td><%=fparentInfo.getFirstName() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Father Last Name</td><td><%=fparentInfo.getLastName() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Father Office Telephone</td><td><%=fparentInfo.getOfficeTelephone() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Father Mobile Telephone</td><td><%=fparentInfo.getMobileTelephone() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Father Email</td><td><%=fparentInfo.geteMail() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Father Home Telephone</td><td><%=fparentInfo.getHomeTelephone() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Mother First Name</td><td><%=mparentInfo.getFirstName() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Mother Last Name</td><td><%=fparentInfo.getLastName() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Mother Office Telephone</td><td><%=mparentInfo.getOfficeTelephone() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Mother Mobile Telephone</td><td><%=mparentInfo.getMobileTelephone() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Mother Email</td><td><%=mparentInfo.geteMail() %></td>
	</tr>
	<tr>
		<td style="background:#eeeeee">Mother Home Telephone</td><td><%=mparentInfo.getHomeTelephone() %></td>
	</tr>
</table>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a>
 