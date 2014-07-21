<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs --> 
			<%
				Account account = (Account) session.getAttribute("account");
				String functionalityName = "applicationRequestManagement";
				Functionality functionalityO = Functionality
						.getFunctionalityByFunctionalityName(functionalityName);
				Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
				
				if (role.isReadable()){
			%>
			<h3 class="tit">Application Request Fields Tab</h3> 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showlistofapplicantsinthislevel('Admission Request');"><span>Show List of Application Requests</span></a></li>
					<li><a href="#.jsp" onclick="showListOfApplicationRequestsForPrinting();"><span>Print Admission Request</span></a></li>									
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
