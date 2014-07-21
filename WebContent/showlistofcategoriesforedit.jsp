<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	/* Account account = (Account) session.getAttribute("account");
	String functionalityName = "academicUnitManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId()); */
	if(true)
	{
	List<Category> categoryList = Category.getAllCategories();
	Iterator<Category> categoryItr = categoryList.iterator();
	categoryList = null;
	
	out.print("<table width='100%'>");
	//out.print("<caption>List of Categories</caption>");
	out.print("<th>Ser.No</th>");	
	out.print("<th>Category Name</th>");	
	out.print("<th>Primary Secondary</th>");
	out.print("<th>Edit</th>");
		
	int ctr = 1;
	while(categoryItr.hasNext()){
		Category c = categoryItr.next();
		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");			
			out.print("<td>");
				out.print(c.getCategoryName());
			out.print("</td>");
			out.print("<td>");
				out.print(PrimarySecondary.getPrimarySecondary(c.getPrimarySecondaryId()).getPrimarySecondaryName());
			out.print("</td>");	
			%>
			<td>
				<a href="#.jsp" onclick="showEditFieldsOfCategory(<%=c.getId()%>);">Edit</a>
			</td>
			<%
		out.print("</tr>");
		ctr++;
	}//end while loop
	categoryItr = null;
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="categoryEditDiv"></div>