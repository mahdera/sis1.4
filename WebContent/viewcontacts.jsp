<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
    List<Section> sectionList = Section.getAllSections();
	Iterator<Section> sectionItr = sectionList.iterator();
	sectionList = null;
	
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "contactInfoManagement";
	Functionality functionalityO = Functionality
			.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	
	if (role.isReadable()){
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Section:</td>
			<td>
				<select name="slctsection" id="slctsection" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						while(sectionItr.hasNext()){
							Section sec = sectionItr.next();
							%>
							<option value="<%=sec.getId() %>"><%=sec.getSectionName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
			<td>
				<input type="button" value="Show" onclick="showListOfStudentsFromThisSectionContacts(document.getElementById('slctsection').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="studentListDiv" style="overflow-x:auto;"></div> 
<%
				}else{
					%>
					<p class="msg error">You do not have sufficient privileged to
			perform this operation!</p>
					<%
				}
		%>