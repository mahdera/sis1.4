<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String studentId = request.getParameter("studentId");
	List<FeeTransaction> a = FeeTransaction.getAllTransaction(studentId);
	Iterator<FeeTransaction> itr=a.iterator();
%>
<table border="0" width="100%">
	<tr>
		<th>Invoice No</th>
		<th>Date Paid</th>
		<th>Amount Paid</th>
		<th>Receipt No</th>
		<th>Name of Payer</th>
		<th>Prepared By</th>
		<th>Approved By</th>
		<th>Admission Request Date</th>
		<th>More</th>
	</tr>
	<%
		int ctr = 1;
		while(itr.hasNext()){
			FeeTransaction transaction=itr.next();
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
				<td><%=transaction.getInvoiceNo() %></td>
				<td><%=transaction.getPaidDate() %></td>
				<td><%=transaction.getDebit()%></td>
				<td><%=transaction.getReceiptNo()%></td>
				<td><%=transaction.getNameOfPayer() %></td>
				<td><%=transaction.getPaymentType() %></td>
				<td><%=transaction.getPreparedBy() %></td>
				<td><%=transaction.getApprovedBy() %></td>
				<td>
					<a href="#.jsp" onclick="showDetailsOfThisApplicantForEdit('<%=transaction.getStudentId()%>');">Edit Detail</a>
				</td>
			</tr>
			<tr>
				<td colspan="9">
					<%
						String divId = "applicantDetail" + transaction.getStudentId();
					%>
					<div id="<%=divId %>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
	</table>
</body>
</html>