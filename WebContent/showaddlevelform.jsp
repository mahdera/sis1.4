<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<div style="background:lightyellow">
<form>
	<table border="1" width="100%">
		<tr>
			<td align="right">Level Name:</td>
			<td><input type="text" name="txtlevelname" id="txtlevelname"/></td>
		</tr>
		<tr>
			<td align="right">Select Category:</td>
			<td>
				<select name="slctcategory" id="slctcategory" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Category> categoryList = Category.getAllCategories();
						Iterator<Category> categoryItr = categoryList.iterator();
						categoryList = null;
						while(categoryItr.hasNext()){
							Category c = categoryItr.next();
							%>
							<option value="<%=c.getId() %>"><%=c.getCategoryName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Save" onclick="saveLevel(document.getElementById('txtlevelname').value,
						document.getElementById('slctcategory').value)"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
</div>