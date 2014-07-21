<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	Level level = Level.getLevel(levelId);
%>
<form>
	<table border="1" width="100%">
		<tr>
			<td align="right">Level Name:</td>
			<td><input type="text" name="txtlevelname" id="txtlevelname" value="<%= level.getLevelName()%>"/></td>
		</tr>
		<tr>
			<td align="right">Select Category:</td>
			<td> 
				<input type="text" name="txtcategory" id="txtcategory" value="<%=Category.getCategory(level.getCategoryId()).getCategoryName()%>"/>
				<input type="hidden" name="hiddencategory" id="hiddencategory" value="<%=level.getCategoryId()%>"/>
			</td>
			<td>
				<select name="slctcategory" id="slctcategory" style="width:100%" onchange="changeCategoryForThisLevel(this.value)">
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
				<input type="button" value="update" onclick="updateLevel(<%= level.getId()%>,document.getElementById('txtlevelname').value,
						document.getElementById('hiddencategory').value)"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
</div>