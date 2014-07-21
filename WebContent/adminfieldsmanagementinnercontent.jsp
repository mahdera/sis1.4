<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs --> 
			<%
				Account account = (Account) session.getAttribute("account");
				String functionalityName = "adminFieldsManagement";
				Functionality functionalityO = Functionality
						.getFunctionalityByFunctionalityName(functionalityName);
				Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
				
				if (role.isWritable() && role.isUpdateable() && role.isReadable() && role.isDeletable()){
			%>
			<h3 class="tit">Administrator Fields Tab</h3>
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showAdmissionAgeRuleInnerMenu();"><span>Admission Age Rule</span></a></li>
					<li><a href="#.jsp" onclick="showCategoryInnerMenu();"><span>Category</span></a></li>
					<li><a href="#.jsp" onclick="showEvaluationCriteriaInnerMenu();"><span>Evaluation Criteria</span></a></li>
					<li><a href="#.jsp" onclick="showLevelInnerMenu();"><span>Level</span></a></li>
					<li><a href="#.jsp" onclick="showPrimarySecondaryInnerMenu();"><span>Primary Secondary</span></a></li>
					<li><a href="#.jsp" onclick="showSectionInnerMenu();"><span>Section</span></a></li>
					<li><a href="#.jsp" onclick="showSubjectInnerMenu();"><span>Subject</span></a></li>
					<li><a href="#.jsp" onclick="showTeachesStudentInnerMenu();"><span>Teaching Sets</span></a></li>
					<li><a href="#.jsp" onclick="showTeacherInnerMenu();"><span>Teacher</span></a></li>
					<!--<li><a href="#.jsp" onclick="showTeachesInnerMenu();"><span>Teaches</span></a></li> -->
					<li><a href="#.jsp" onclick="showSupervisorsInnerMenu();"><span>Supervises</span></a></li>					
					<li><a href="#.jsp" onclick="showUserInnerMenu();"><span>User</span></a></li>
					<li><a href="#.jsp" onclick="showFeeLookup();"><span>Fee Lookup</span></a></li>
					
				</ul> 
			</div> <!-- /tabs --> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the administrator fields tab for manipulating fields</p>			
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
