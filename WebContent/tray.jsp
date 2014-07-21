<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div id="tray" class="box">
	<p class="f-left box">
		<!-- Switcher -->
		<span class="f-left" id="switcher"> <a href="#" rel="1col"
			class="styleswitch ico-col1" title="Display one column"><img
				src="design/switcher-1col.gif" alt="1 Column" />
		</a> <a href="#" rel="2col" class="styleswitch ico-col2"
			title="Display two columns"><img src="design/switcher-2col.gif"
				alt="2 Columns" />
		</a> </span> Application: <strong>sis1.4</strong>

	</p>

	<p class="f-right">
		<%			
			Account at = (Account)session.getAttribute("account");
			User userObject = null;
			if(at != null){
			 	userObject = User.getUser(at.getUserId());
			}else{
				 response.sendRedirect("index.jsp");
			}
		%>
		User: <strong><a href="#"><%=(userObject != null ? userObject.getUserType() : "")%>: <%=(userObject != null ? userObject.getFirstName()+" "+userObject.getLastName() : "") %></a>
		</strong>
		|<b><a href="#" onClick="performThisFunction('changePass');">Change Password</a></b>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
		<a href="logout.jsp" id="logout">Log out</a>
		</strong>				
	</p>

</div>
<!--  /tray -->