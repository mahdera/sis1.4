<div class="padding box">

	<!-- Logo (Max. width = 200px) -->
	<p id="logo">
		<a href="#"><img src="design/SISLogo.jpg" alt="Our logo" style="width:100%"/>
		</a>
	</p>
	
	<!-- Create a new project 
	<p id="btn-create" class="box">
		<a href="#.jsp">		
			<span>Create a new project</span>
		</a>		
	</p>-->

	<p class="box">
		<form name="frmlogin" method="post" action="validateuser.jsp" onsubmit="return isLoginFormBlank();">
		<fieldset style="border-line:1 px solid #eeeeee">
					<legend>Login Box</legend>
					<table border="1" width="80%">
							<tr>
								<td colspan="2">
									<div id="loginErrorDiv" align="center">
										<%
											if (request.getParameter("msg") != null) {
												out.print(request.getParameter("msg"));
											}
										%>
									</div></td>
							</tr>
							<tr>
								<td style="width: 70px;">Username:</td>
								<td><input type="text" size="15" name="txtusername"
									id="txtusername" class="input-text" />
								</td>
							</tr>
							<tr>
								<td>Password:</td>
								<td><input type="password" size="15" name="txtpassword"
									id="txtpassword" class="input-text" />
								</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="1" align="center"><input type="submit"
									value="Login"/>									
									<input type="reset"  value="Clear" /></td>
							</tr>
						</table>
						</fieldset>					
					</form>
	</p>
	

</div>
<!-- /padding -->
