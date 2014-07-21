<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	String status=request.getParameter("status");
	//JOptionPane.showMessageDialog(null, status);
	List<Level> levelList = Level.getAllLevels();
	Iterator<Level> levelItr = levelList.iterator();
	//sectionList = null;
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
			var status = "<%=status %>";
			var level = $('#slctlevel').val();
			if(status != "" && level != ""){
				$('#tabDetailDiv').load("showlistofwaiting.jsp?status=" + status+"&level="+level);
			}
		});
	});//end document.ready function
</script>