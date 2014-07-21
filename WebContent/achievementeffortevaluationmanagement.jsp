<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs --> 
			<%
				Account account = (Account) session.getAttribute("account");
				String functionalityName = "achievementEffortEvaluationManagement";
				Functionality functionalityO = Functionality
						.getFunctionalityByFunctionalityName(functionalityName);
				Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
				
				if (role.isReadable() && role.isUpdateable() && role.isWritable()){
			%>
			<h3 class="tit">Achievement, Effort Evaluation Fields Tab</h3> 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showAddAchievementEffortEvaluationForm();"><span>Add Evaluation</span></a></li>
					<li><a href="#.jsp" onclick="showListOfAchievementEffortEvaluations();"><span>Show List Of Evaluations</span></a></li>
					<li><a href="#.jsp" onclick="showListOfAchievementEffortEvaluationsForEdit();"><span>Edit Evaluations</span></a></li>
					<!-- <li><a href="#.jsp" onclick="showListOfAchievementEffortEvaluationsForDelete();"><span>Delete Evaluations</span></a></li> -->															
				</ul> 
			</div> <!-- /tabs --> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the achievement effort management request fields tab for manipulating values</p>			
			</div>			
			<div id="subTabDetailDiv"></div>
			<div class="fix"></div>
			<%
				}else{
					%>
					<p class="msg error">You do not have sufficient privileged to
			perform this operation!</p>
					<%
				}
		%> 
</div>

