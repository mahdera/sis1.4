<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("teacherId"));
	Supervisors supervisor = Supervisors.getSupervisor(levelId);	
	Account account = (Account) session.getAttribute("account");
//if(String.valueOf(account.getUserId()).equalsIgnoreCase(supervisor.getSupervisorId().toString())){
if(supervisor != null){
  if(!supervisor.getType().equalsIgnoreCase("teacher")){
	List<Level> levelList = Level.getAllLevels();
	if (!levelList.isEmpty()) {
		Iterator<Level> levelItr = levelList.iterator();
		%>
		<select name="slctlevel" id="slctlevel" style="width: 100%" onchange="showAllTheSectionsOfThisLevel(this.value);">
			<option value="" selected="selected">--Select--</option>
		<%
			while (levelItr.hasNext()) {
				Level level = levelItr.next();
				if(Integer.parseInt(supervisor.getLevelfromId())<=level.getId() && Integer.parseInt(supervisor.getLeveltoId())>=level.getId()){
					%>
						<option value="<%=level.getId()%>"><%=level.getLevelName()%></option>
					<%
				}
			}//end while loop
		%>
		</select>
		<%
	} else {
	%>
		<p class="msg info">There is/are no levels assigned!</p>
	<%
	}//end of if
  }//end of if
}//end of if
%>
