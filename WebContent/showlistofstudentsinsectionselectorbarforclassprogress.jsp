<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	List<Section> sectionList = Section.getAllSections();
	Iterator<Section> sectionItr = sectionList.iterator();
	sectionList = null;
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Level:</td>
			<td width="50%">
				<select name="slctlevel" id="slctlevel" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Level> allLevelList = Level.getAllLevels();
						if(!allLevelList.isEmpty()){
							Iterator<Level> allLevelItr = allLevelList.iterator();
							while(allLevelItr.hasNext()){
								Level level = allLevelItr.next();
								%>
								<option value="<%=level.getId() %>"><%=level.getLevelName() %></option>
								<%
							}//end while loop
						}
					%>
				</select>
			</td>			
			<td>
				<input type="button" value="Show" onclick="showListOfStudentsFromThisLevelForMaintainingClassProgressInformation(document.getElementById('slctlevel').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="studentListClassProgressDiv"></div>