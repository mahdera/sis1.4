<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	/* Account account = (Account) session.getAttribute("account");
	String functionalityName = "academicUnitManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId()); */
	if(true)
	{
	List<PrimarySecondary> primarySecondaryList = PrimarySecondary.getAllPrimarySecondaries();
	Iterator<PrimarySecondary> pItr = primarySecondaryList.iterator();
	primarySecondaryList = null;
	
	out.print("<table width='100%'>");
	out.print("<caption>List of Primary Secondary Levels</caption>");
	out.print("<th>Ser.No</th>");	
	out.print("<th>Primary Secondary Name</th>");	
	out.print("<th>Delete</th>");	
		
	int ctr = 1;
	while(pItr.hasNext()){
		PrimarySecondary p = pItr.next();
		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");			
			out.print("<td>");
				out.print(p.getPrimarySecondaryName());
			out.print("</td>");	
			%>
			<td><a><a href="#.jsp" onclick="deleteThisPrimarySecondary(<%=p.getId()%>);">Delete</a></a></td>
			<%
		out.print("</tr>");
		ctr++;
	}//end while loop
	pItr = null;
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="primarySeconadryEditDiv"></div>