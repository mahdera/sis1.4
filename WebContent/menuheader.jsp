<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<!-- Menu --> 
	<div id="menu" class="box"> 
		<%
			List<Functionality> functionalityList = Functionality.getAllFunctionalities();
			Iterator<Functionality> functionalityItr = functionalityList.iterator();
			/*Account acct = (Account)session.getAttribute("account"); */			
		%> 
		<ul class="box"> 
			<%
			while(functionalityItr.hasNext()){
				Functionality functionality = functionalityItr.next();
				//if(functionality.getFunctionalityName().equals("userManagement") && 
						//acct.getMemberType().equals("Administrator")){
			%>
				<%-- <li><strong><a href="#" title="<%=functionality.getDescription()%>" onclick="performThisFunction('<%=functionality.getFunctionalityName() %>')"><span><%=functionality.getMenuName()%></span></a></strong></li> --%>
			<%
				//}
				//if(!functionality.getFunctionalityName().equals("userManagement")){
					//System.out.println(functionality.getFunctionalityName());
					if(!functionality.getMenuName().equalsIgnoreCase("")){
					%>
						<li><strong><a href="#" title="<%=functionality.getDescription()%>" onclick="performThisFunction('<%=functionality.getFunctionalityName()%>')"><span><%=functionality.getMenuName()%></span></a></strong></li>
					<%
					}
				//}
			}//end while loop
			%>			
		</ul> 
 
	</div> <!-- /header --> 
<script type="text/javascript">
function performThisFunction(menuName) {	
	if (menuName == "adminFieldsManagement") {
		$('#content').load('adminfieldsmanagementinnercontent.jsp');		
	} else if (menuName == "studentEvaluationManagement") {
		$('#content').load('studentevaluationinnercontent.jsp');		
	} else if (menuName == "accountManagement") {
		$('#content').load('accountmanagement.jsp');		
	} else if (menuName == "userManagement") {
		$('#content').load('usermanagement.jsp');		
	} else if (menuName == "roleManagement") {
		$('#content').load('rolemanagement.jsp');		
	} else if (menuName == "reportManagement") {
		$('#content').load('reportmanagement.jsp');		
	} else if (menuName == "applicationRequestManagement") {
		$('#content').load('applicationrequestmanagement.jsp');		
	} else if (menuName == "admissionProcessManagement") {
		$('#content').load('admissionprocessmanagement.jsp');		
	} else if (menuName == "gradeCardsManagement") {
		$('#content').load('gradecardsmanagement.jsp');		
	} else if (menuName == "achievementEffortEvaluationManagement") {
		$('#content').load('achievementeffortevaluationmanagement.jsp');		
	} else if (menuName == "attendanceManagement") {
		$('#content').load('attendancemanagement.jsp');		
	} else if (menuName == "notificationManagement" || menuName == "contactInfoManagement") {
		$('#content').load('notificationmanagement.jsp');		
	} else if (menuName == "importDataManagement") {
		$('#content').load('importdatamanagement.jsp');		
	} else if (menuName == "changePass"){
		$('#content').load('change.jsp');		
	}else if (menuName == "feeManagement") {
		$('#content').load('feeManagement.jsp');		
	} 
}
</script>