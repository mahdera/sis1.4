<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	/* Account account = (Account) session.getAttribute("account");
	String functionalityName = "academicUnitManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId()); */
	if(true)
	{
	List<AdmissionAgeRule> admissionAgeRuleList = AdmissionAgeRule.getAllAdmissionAgeRules();
	Iterator<AdmissionAgeRule> admissionAgeRuleItr = admissionAgeRuleList.iterator();
	admissionAgeRuleList = null;
	
	out.print("<table width='100%'>");
	out.print("<caption>List of Admission Age Rules</caption>");
	out.print("<th>Ser.No</th>");	
	out.print("<th>Level</th>");	
	out.print("<th>Lower Boundary</th>");
	out.print("<th>Upper Boundary</th>");
	out.print("<th>Edit</th>");
	
	int ctr = 1;
	while(admissionAgeRuleItr.hasNext()){
		AdmissionAgeRule admissionAgeRule = admissionAgeRuleItr.next();
		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");			
			out.print("<td>");
				out.print(Level.getLevel(admissionAgeRule.getLevelId()).getLevelName());
			out.print("</td>");
			out.print("<td>");
				out.print(admissionAgeRule.getLowerBoundary());
			out.print("</td>");
			out.print("<td>");
				out.print(admissionAgeRule.getUpperBoundary());
			out.print("</td>");	
			%>
			<td>
				<a href="#.jsp" onclick="showEditFieldsOfAdmissionRule(<%=admissionAgeRule.getId() %>);">Edit</a>
			</td>
			<%
		out.print("</tr>");
		ctr++;
	}//end while loop
	admissionAgeRuleItr = null;
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="admissionRuleEditDiv"></div>