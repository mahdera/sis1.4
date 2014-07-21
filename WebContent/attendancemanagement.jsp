<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div>	
	<!-- Tabs --> 
	
			<h3 class="tit">Attendance Management Fields Tab</h3>	
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showAddAttendanceForm();"><span>Enter Attendance</span></a></li>
					<li><a href="#.jsp" onclick="showListOfAttendance();"><span>Show List Of Attendance</span></a></li>
					<li><a href="#.jsp" onclick="showListOfAttendanceForEdit();"><span>Show List Of Attendance For Edit</span></a></li>
					<!--  <li><a href="#.jsp" onclick="showListOfAttendanceForDelete();"><span>Show List Of Attendance For Delete</span></a></li>-->															
				</ul> 
			</div> <!-- /tabs --> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the attendance management fields tab for manipulating attendance</p>			
			</div>			
			<div id="subTabDetailDiv"></div>
			<div class="fix"></div>
</div>