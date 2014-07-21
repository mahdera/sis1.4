<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<% 
	int categoryId = Integer.parseInt(request.getParameter("categoryId"));
	Category category = Category.getCategory(categoryId);
%>

<form>
	<table border="0" width="100%">
		<tr>
			<td align="right">Category Name:</td>
			<td><input type="text" name="txtcategoryname" id="txtcategoryname" value="<%=category.getCategoryName()%>" size="50%"/></td>
		</tr>
		<tr>
			<td align="right">Primary/Secondary:</td>
			<td>
				<input type="text" name="txtprimarysecondary" id="txtprimarysecondary" value="<%=PrimarySecondary.getPrimarySecondary(category.getPrimarySecondaryId()).getPrimarySecondaryName()%>"/>
				<td><input type="hidden" name="hiddenprimarysecondary" id="hiddenprimarysecondary" value="<%=category.getPrimarySecondaryId()%>"/></td>
			</td>
			<td>
				<select name="slctprimarysecondary" id="slctprimarysecondary" style="width:100%" onchange="changePrimarySecondaryForThisPrimarySecondary(this.value)">
					<option value="" selected="selected">--Select--</option>
					<%
						List<PrimarySecondary> pList = PrimarySecondary.getAllPrimarySecondaries();
						Iterator<PrimarySecondary> pItr = pList.iterator();
						pList = null;
						while(pItr.hasNext()){
							PrimarySecondary p = pItr.next();
							%>
							<option value="<%=p.getId() %>"><%=p.getPrimarySecondaryName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" value="update" onclick="updateCategory(<%= category.getId()%>,document.getElementById('txtcategoryname').value,document.getElementById('hiddenprimarysecondary').value);">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="undo"></td>
			
		</tr>
	</table>
</form>