<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<div style="background:lightyellow">
<form>
	<table border="0" width="100%">
		<tr>
			<td align="right">Select Level:</td>
			<td>
				<select name="slctlevel" id="slctlevel" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Level> levelList = Level.getAllLevels();
						Iterator<Level> levelItr = levelList.iterator();
						levelList = null;
						while(levelItr.hasNext()){
							Level level = levelItr.next();
							%>
							<option value="<%=level.getId() %>"><%=level.getLevelName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Lower Boundary:</td>
			<td><input type="text" name="txtlowerboundary" id="txtlowerboundary"/></td>
		</tr>
		<tr>
			<td align="right">Upper Boundary:</td>
			<td><input type="text" name="txtupperboundary" id="txtupperboundary"/></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Save" onclick="saveAdmissionAgeRule(document.getElementById('slctlevel').value,
						document.getElementById('txtlowerboundary').value,document.getElementById('txtupperboundary').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
</div>