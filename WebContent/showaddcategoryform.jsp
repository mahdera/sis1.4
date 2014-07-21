<%@page import="java.util.*" %>
<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div style="background:lightyellow">
<form>
	<table border="0" width="100%">
		<tr>
			<td align="right">Category Name:</td>
			<td><input type="text" name="txtcategoryname" id="txtcategoryname"/></td>
		</tr>
		<tr>
			<td align="right">Select Primary/Secondary:</td>
			<td>
				<select name="slctprimarysecondary" id="slctprimarysecondary" style="width:100%">
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
			<td></td>
			<td>
				<input type="button" value="Save" onclick="saveCategoryForm(document.getElementById('txtcategoryname').value,
						document.getElementById('slctprimarysecondary').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
</div>