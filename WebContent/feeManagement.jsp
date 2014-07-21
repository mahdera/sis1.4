<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs --> 
	
			<h3 class="tit">Fee Management Fields Tab</h3>	
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showFeeEnteranceForm();"><span>Enter Fee</span></a></li>
					<li><a href="#.jsp" onclick="showListOfAttendance();"><span>Show List Of Fee</span></a></li>
					<li><a href="#.jsp" onclick="showListOfAttendanceForEdit();"><span>Show List Of Fee For Edit</span></a></li>
					<!--  <li><a href="#.jsp" onclick="showListOfAttendanceForDelete();"><span>Show List Of Attendance For Delete</span></a></li>-->															
				</ul> 
			</div> <!-- /tabs --> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the fee management fields tab for manipulating Fee.</p>			
			</div>			
			<div id="subTabDetailDiv"></div>
			<div class="fix"></div>
</div>