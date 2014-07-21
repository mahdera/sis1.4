<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs --> 
			<%
				Account account = (Account) session.getAttribute("account");
				String functionalityName = "admissionProcessManagement";
				Functionality functionalityO = Functionality
						.getFunctionalityByFunctionalityName(functionalityName);
				Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
				
				if (role.isDeletable() && role.isUpdateable() && role.isReadable()){
			%>
			<h3 class="tit">Admisson Process Fields Tab</h3>
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" id="showListOfApplicationRequestsForAdmissionLink"><span>Application Requests</span></a></li>
					<li><a href="#.jsp" id="showlistofwaitinginthislevelWaitingLink"><span>Waiting List</span></a></li>
					<li><a href="#.jsp" id="showListOfStudentsInSectionSelectorBarLink"><span>List Students</span></a></li>		
					<li><a href="#.jsp" id="showListOfStudentsInSectionSelectorBarForEditLink"><span>Edit Students</span></a></li>	
					<li><a href="#.jsp" id="showListOfStudentsInSectionSelectorBarForDeleteLink"><span>Delete Students</span></a></li>
					<li><a href="#.jsp" id="showListOfStudentsInSectionSelectorBarForClassProgressLink"><span>Class Progress</span></a></li>
					<li><a href="#.jsp" id="showArchiveManagementSelectorBarLink"><span style="color:red;font-weight:bolder">Archive</span></a></li>							
				</ul> 
			</div> <!-- /tabs --> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the application request fields tab for manipulating application requests</p>			
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
<script type="text/javascript">
	$(document).ready(function(){
		$('#showListOfApplicationRequestsForAdmissionLink').click(function(){			
			$('#tabDetailDiv').load('showlistofapplicationrequestsforadmission.jsp');			
		});
		
		$('#showlistofwaitinginthislevelWaitingLink').click(function(){
			$('#tabDetailDiv').load('waitinginlevel.jsp?status=Waiting');
		});
		
		$('#showListOfStudentsInSectionSelectorBarLink').click(function(){
			$('#tabDetailDiv').load('showlistofstudentsinsectionselectorbar.jsp');
		});
		
		$('#showListOfStudentsInSectionSelectorBarForEditLink').click(function(){
			$('#tabDetailDiv').load('showlistofstudentsinsectionselectorbarforedit.jsp');
		});
		
		$('#showListOfStudentsInSectionSelectorBarForDeleteLink').click(function(){
			$('#tabDetailDiv').load('showlistofstudentsinsectionselectorbarfordelete.jsp');
		});
		
		$('#showListOfStudentsInSectionSelectorBarForClassProgressLink').click(function(){
			$('#tabDetailDiv').load('showlistofstudentsinlevelselectorbar.jsp');
		});
		
		$('#showArchiveManagementSelectorBarLink').click(function(){			
			$('#tabDetailDiv').load('showarchivemanagementinnermenubar.jsp');
		});
	});//end document.ready function
</script>