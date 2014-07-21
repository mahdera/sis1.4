<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Type:</td>
			<td>
				<select name="slcttype" id="slcttype" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<option value="head">Head</option>
					<option value="coordinator">Coordinator</option>
					<option value="teacher">Teacher</option>
					<option value="secretary">Secretary</option>					
				</select>
			</td>
		</tr>
		<tr>
			<td>Select User:</td>
			<td>
				<select name="slctuser" id="slctuser" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<User> tList = User.getAllUsers();
						Iterator<User> tItr = tList.iterator();
						while(tItr.hasNext()){
							User t = tItr.next();
							%>
							<option value="<%=t.getId()%>"><%=t.getFirstName() %> <%=t.getMiddleName() %> <%=t.getLastName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>		
	
		<tr>	
			<td>Select Section:</td>
			<td>
				<select name="slctsection" id="slctsection" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Section> sectionList = Section.getAllSections();
						Iterator<Section> sectionItr = sectionList.iterator();
						sectionList = null;
						while(sectionItr.hasNext()){
							Section sec = sectionItr.next();
							%>
							<option value="<%=sec.getId() %>"><%=sec.getSectionName()%></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>Level From:</td>
			<td>
				<select name="slctlevelfrom" id="slctlevelfrom" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%						
						List<Level> lList = Level.getAllLevels();
						Iterator<Level> lItr = lList.iterator();
						while(lItr.hasNext()){
							Level l = lItr.next();
							%>
							<option value="<%=l.getId()%>"><%=l.getLevelName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Level To:</td>
			<td>
				<select name="slctlevelto" id="slctlevelto" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<%						
						//List<Level> lListTo = Level.getAllLevels();
						 lItr = lList.iterator();
						while(lItr.hasNext()){
							Level l = lItr.next();
							%>
							<option value="<%=l.getId()%>"><%=l.getLevelName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>Select Status:</td>
			<td>
				<select name="slctstatus" id="slctstatus" style="width:50%">
					<option value="" selected="selected">--Select--</option>
					<option value="new" >New</option>
					<option value="active">Active</option>
					<option value="notactive">Not Active</option>					
				</select>
			</td>
		</tr>
		<tr>
			<td>Select Date:</td>
			<td>
				<input type="text" name="txtdate" id="txtdate" size="8"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdate');" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Save" onclick="saveSupervisors(document.getElementById('slcttype').value,
						document.getElementById('slctuser').value,document.getElementById('slctsection').value,
						document.getElementById('slctlevelfrom').value,document.getElementById('slctlevelto').value,
						document.getElementById('slctstatus').value,document.getElementById('txtdate').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>