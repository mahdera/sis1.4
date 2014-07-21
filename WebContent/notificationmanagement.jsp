<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs -->
			
			<h3 class="tit">Notification Tab</h3> 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showListOfNotifications();"><span>Attendance Notifications</span></a></li>
					<li><a href="#.jsp" onclick="showListOfNotificationsEdit();"><span>Edit Attendance Notifications</span></a></li>
					<li><a href="#.jsp" onclick="contactSubMenu();"><span>Contact Information</span></a></li>
				</ul> 
			</div> <!-- /tabs --> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the notification tabs for viewing and manipulating notices</p>			
			</div>			
			<div id="subTabDetailDiv"></div>
			<div class="fix"></div>
			
</div>
