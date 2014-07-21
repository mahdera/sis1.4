<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs --> 
			<%
				Account account = (Account) session.getAttribute("account");
				String functionalityName = "gradeCardsManagement";
				Functionality functionalityO = Functionality
						.getFunctionalityByFunctionalityName(functionalityName);
				Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
				
				if (role.isWritable() && role.isReadable() && role.isUpdateable() && role.isDeletable()){
			%>
			<h3 class="tit">Grade Card Management Fields Tab</h3> 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showAddGradeCardForm();"><span>Enter Grade Card</span></a></li>
					<li><a href="#.jsp" onclick="showListOfGradeCards();"><span>Show List Of Grade Cards</span></a></li>
					<li><a href="#.jsp" onclick="showListOfGradeCardsForEdit();"><span>Show List Of Grade Cards For Edit</span></a></li>
					<li><a href="#.jsp" onclick="showListOfGradeCardsForDelete();"><span>Show List Of Grade Cards For Delete</span></a></li>															
				</ul> 
			</div> <!-- /tabs --> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the grade management request fields tab for manipulating grades</p>			
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
