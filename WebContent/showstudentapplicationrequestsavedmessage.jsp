<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String applicantId = String.valueOf(request.getParameter("applicantId"));
	//JOptionPane.showMessageDialog(null, "@msg with id="+applicantId);
	ApplicationRequestUniqueIdNumbers appIdNum = ApplicationRequestUniqueIdNumbers.getApplicationRequestUniqueIdNumberForThisApplicant(applicantId);
	String generatedId = appIdNum.getGeneratedIdNumber();
	Applicant applicant = Applicant.getApplicant(applicantId);
	String fullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
	//JOptionPane.showMessageDialog(null, "@msg , "+applicantId);
%>
<div id="printReportDiv">
	<table border="0" width="100%">
		<tr>
			<td>
				<p class="msg done"><%=fullName %>, You have successfully saved your application request to our system. Your application request identification number is
				: <strong><%=generatedId %></strong>. Please print and have this number and don't forget to show this whenever asked by the admission officers<br/>
				<br/>
				Thank you!<br/>
				Sandford International School
				</p>
			</td>
		</tr>
	</table>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<table border="0" width="100%">
	<tr>
		<td align="right" colspan="2">
			<a href="#.jsp" onclick="printDiv('printReportDiv')">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a>
		</td>
	</tr>
</table>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="showIncrementalAttachmentForm();">Click here if you have attachment to save now.</a>
		</td>
	</tr>
</table>
<div id="attachmentDiv"></div>