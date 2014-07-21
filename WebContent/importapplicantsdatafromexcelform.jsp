<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<form style="background:#eee" enctype="multipart/form-data" action="importapplicantdatanow.jsp" method="post">
	<table border="0" width="100%">
		<tr>
			<td>Select Level:</td>
			<td>
				<select name="slctlevel" id="slctlevel" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Level> levelList = Level.getAllLevels();
						Iterator<Level> levelItr = levelList.iterator();
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
			<td>Applicant Type:</td>
			<td>
				<select name="slctapplicanttype" id="slctapplicanttype" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<option value="local">Local</option>
					<option value="international">International</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Locate Excel File:</td>
			<td>
				<input type="file" name="fleexcelfile" id="fleexcelfile"/>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="submit" value="Import Data"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>