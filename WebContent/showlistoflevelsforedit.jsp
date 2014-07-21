<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	/* Account account = (Account) session.getAttribute("account");
	String functionalityName = "academicUnitManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId()); */
	if(true)
	{
	List<Level> levelList = Level.getAllLevels();
	Iterator<Level> levelItr = levelList.iterator();
	levelList = null;
	
	out.print("<table width='100%'>");
	out.print("<caption>List of Levels</caption>");
	out.print("<th>Ser.No</th>");	
	out.print("<th>Level Name</th>");	
	out.print("<th>Category</th>");
	out.print("<th>Edit</th>");
		
	int ctr = 1;
	while(levelItr.hasNext()){
		Level l = levelItr.next();
		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");			
			out.print("<td>");
				out.print(l.getLevelName());
			out.print("</td>");
			out.print("<td>");
				out.print(Category.getCategory(l.getCategoryId()).getCategoryName());
			out.print("</td>");	
			%>
			<td>
				<a href="#.jsp" onclick="showEditFieldsOfLevel(<%=l.getId() %>);">Edit</a>
			</td>
			<%
		out.print("</tr>");
		ctr++;
	}//end while loop
	levelItr = null;
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="levelEditDiv"></div>