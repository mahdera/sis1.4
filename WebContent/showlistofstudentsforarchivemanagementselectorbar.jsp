<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	List<Level> levelList = Level.getAllLevels();
	Iterator<Level> levelItr = levelList.iterator();
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Level:</td>
			<td>
				<select name="slctlevel" id="slctlevel" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						while(levelItr.hasNext()){
							Level lvl = levelItr.next();
							%>
							<option value="<%=lvl.getId() %>"><%=lvl.getLevelName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
			<td>
				<input type="button" value="Show" id="btnshownow"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="studentListDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnshownow').click(function(){
			var levelId = $('#slctlevel').val();		
			if(levelId != ""){
				$('#studentListDiv').load('showlistofstudentsfromthislevelforarchivemanagement.jsp?levelId='+levelId);
			}
		});
	});//end document.ready function
</script>