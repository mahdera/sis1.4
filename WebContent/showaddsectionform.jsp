<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	//Account account = (Account) session.getAttribute("account");
	//String functionalityName = "manageAdminFields";
	//Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	//Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(true){
%>
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
			<td align="right">Section Name:</td>
			<td><input type="text" name="txtsectionname" id="txtsectionname"/></td>
		</tr>
		<tr>
			<td align="right">Class Size:</td>
			<td><input type="text" name="txtclasssize" id="txtclasssize"/></td>
		</tr>		
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" 
				onclick="saveSection(document.getElementById('slctlevel').value,
						document.getElementById('txtsectionname').value,
						document.getElementById('txtclasssize').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="admissionTypeErrorDiv"></div>
			</td>
		</tr>
	</table>
</form>
</div>
<%
	}
	else{	
%>
	<p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%>