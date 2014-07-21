<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	/* Account account = (Account) session.getAttribute("account");
	String functionalityName = "academicUnitManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId()); */
	if(true)
	{
	List<Section> sectionList = Section.getAllSections();
	Iterator<Section> sectionItr = sectionList.iterator();
	sectionList = null;
	
	out.print("<table width='100%'>");
	out.print("<caption>List of Sections</caption>");
	out.print("<th>Ser.No</th>");	
	out.print("<th>Level</th>");	
	out.print("<th>Section Name</th>");
	out.print("<th>Class Size</th>");
	out.print("<th>Edit</th>");
		
	int ctr = 1;
	while(sectionItr.hasNext()){
		Section s = sectionItr.next();
		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");			
			out.print("<td>");
				out.print(Level.getLevel(s.getLevelId()).getLevelName());
			out.print("</td>");
			out.print("<td>");
				out.print(s.getSectionName());
			out.print("</td>");				
			out.print("<td>");
				out.print(s.getClassSize());
			out.print("</td>");
			%>
			<td>
				<a href="#.jsp" onclick="showEditFieldsOfSection(<%=s.getId()%>);">Edit</a>
			</td>
			<%
		out.print("</tr>");
		ctr++;
	}//end while loop
	sectionItr = null;
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="sectionEditDiv"></div>