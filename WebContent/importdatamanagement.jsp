<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs --> 
			<%
				Account account = (Account) session.getAttribute("account");
				String functionalityName = "importDataManagement";
				Functionality functionalityO = Functionality
						.getFunctionalityByFunctionalityName(functionalityName);
				Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
			if(role != null){
				if (role.isReadable() && role.isUpdateable()){
			%>			
			<div id="subTabDetailDiv">
				<table border="0" width="100%">
					<tr>
						<td>Select what to import:</td>
						<td>
							<select name="slctimport" id="slctimport" style="width:100%" onchange="showImportDataFormFor(this.value);">
								<option value="" selected="selected">--Select--</option>
								<option value="listOfApplicants">List of Applicants</option>
							</select>
						</td>
					</tr>
				</table>
				<div id="importDataDiv"></div>
			</div>
			<div class="fix"></div>
			<%
				}else{
					%>
					<p class="msg error">You do not have sufficient privileged to
			perform this operation!</p>
					<%
				}
			}else{
				%>
				<p class="msg error">This account does not have a valid role created for this functionality!</p>
				<%
			}
		%> 
</div>
