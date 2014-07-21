
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />
<meta name="robots" content="noindex,nofollow" />
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/reset.css" />
<!-- RESET -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/main.css" />
<!-- MAIN STYLE SHEET -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/2col.css" title="2col" />
<!-- DEFAULT: 2 COLUMNS -->
<link rel="alternate stylesheet" media="screen,projection"
	type="text/css" href="css/1col.css" title="1col" />
<!-- ALTERNATE: 1 COLUMN -->
<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]-->
<!-- MSIE6 -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/style.css" />
<!-- GRAPHIC THEME -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="css/mystyle.css" />
<!-- WRITE YOUR CSS CODE HERE -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/switcher.js"></script>
<script type="text/javascript" src="js/toggle.js"></script>
<script type="text/javascript" src="js/ui.core.js"></script>
<script type="text/javascript" src="js/ui.tabs.js"></script>
<script type="text/javascript" language="javascript"
	src="js/ajax_functions.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".tabs > ul").tabs();
	});
</script>
<title>sis1.0 Sandford International School</title>
<link rel="shortcut icon" href="design/dolfin.jpg"/>
</head>

<body>

	<div id="main">

		<!-- Tray -->
		<%@include file="indextray.jsp"%>

		<hr class="noscreen" />

		<%@include file="indexmenuheader.jsp"%>

		<hr class="noscreen" />

		<!-- Columns -->
		<div id="cols" class="box">

			<!-- Aside (Left Column) -->
			<div id="aside" class="box">

				<%@include file="indexleftpaddingbox.jsp"%>




			</div>
			<!-- /aside -->

			<hr class="noscreen" />

			<!-- Content (Right Column) -->
			<div id="content" class="box">
				<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<fieldset>
		<legend>Application Form</legend>
		
		<form>
			<table border="1" width="100%">
				<tr>
					<td colspan="2">
						<strong>
							<p style="text-align:center">
							<font size="4">Sandford International School<br/>
							Application Form</font>
							</p>
						</strong>
					</td>					
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>1. Basic Information</legend>
							<table border="1" width="100%">
								<tr>
									<td width="33%">1.1. Student's First Name:<br/>
										<font color="red">* </font><input type="text" name="txtfirstname" id="txtfirstname"/>
									</td>
									<td width="33%">1.2. Student's Middle Name:<br/>
										<font color="red">* </font><input type="text" name="txtfathername" id="txtfathername"/>
									</td>
									<td width="33%">1.3. Students Last Name:<br/>
										<font color="red">* </font><input type="text" name="txtgrandfathername" id="txtgrandfathername"/>
									</td>
								</tr>
								<tr>
									<td>1.4. Sex:<br/>									
										<font color="red">* </font><select name="slctsex" id="slctsex">
											<option value="" selected="selected">--Select--</option>
											<option value="Female">Female</option>
											<option value="Male">Male</option>
										</select>
									</td>
									<td>1.5. Date of Birth:<br/>
										<font color="red">* </font><input type="text" name="txtdateofbirth" id="txtdateofbirth"/>
										<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofbirth')" />
									</td>
									<td>1.6. Passport Number:<br/>
										<font color="red">* </font><input type="text" name="txtidnumber" id="txtidnumber"/>
									</td>
								</tr>
								<tr>
									<td>1.7. Country of Issue:<br/>
										<input type="text" name="txtpensionnumber" id="txtpensionnumber"/>
									</td>
									<td>1.8. Nationality:<br/>									
										<font color="red">* </font><input type="text" name="txtemployementdate" id="txtemployementdate"/>										
									</td>
									<td>1.9. Religion:<br/>									
									<font color="red">* </font>
										<select>
											<option value="" selected="selected">--Select--</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>1.10. Country of Birth:<br/>
										<font color="red">* </font>
										<input type="text" name="txtnationality" id="txtnationality"/>
									</td>
									<td>1.11. Class into which entry if requested:<br/><font color="red">* </font>									
										<select>
											<option value="" selected="selected">--Select--</option>
										</select>
									</td>
									<td><br/>
										
									</td>
								</tr>																
							</table>
						</fieldset>
					</td>
				</tr>				
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>2. Previous Schools Attended</legend>
							<div align="right">
								<a href="#.jsp" onclick="insertNewGridRow(document.getElementById('educationGrid'));">
									[Add Row]
								</a>
								 | 
								<a href="#.jsp" onclick="removeTableRow(document.getElementById('educationGrid'));">
									[Remove Row]
								</a>
							</div>
							<table border="1" width="100%" id="educationGrid">
								<thead>								
								<tr>								
									<th style="background:#eeeeee;color:black;">Name of School</th>
									<th style="background:#eeeeee;color:black;">Type of School</th>
									<th style="background:#eeeeee;color:black;">Years</th>
									<th style="background:#eeeeee;color:black;">Classes</th>
									<th style="background:#eeeeee;color:black;">Language Used</th>									
								</tr>
								</thead>
								<tbody>
									<tr>								
										<td width="50%">
											<input type="text" name="txtnameofinstitution1" id="txtnameofinstitution1" size="40"/>
										</td>
										<td>
											<input type="text"/>
										</td>	
										<td>
											<input type="text"/>
										</td>
										<td>
											<input type="text"/>
										</td>
										<td>
											<input type="text"/>
										</td>									
									</tr>																
								</tbody>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td>4. Please mark any areas in which your child has difficulties in the past:</td>
					<td>Reading <input type="checkbox"/> Mathematics <input type="checkbox"/>
						Language <input type="checkbox"/> Behavioral <input type="checkbox"/></td>
				</tr>
				<tr>
					<td>5. Please mark any areas in which your child is gifted/talented</td>
					<td>
						Reading <input type="checkbox"/> Mathematics <input type="checkbox"/>
						Language <input type="checkbox"/> Behavioral <input type="checkbox"/>
					</td>
				</tr>
				<tr>
					<td>6. Others (Specify):</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>Give details of any disability, medication which is likely to affect normal school activity:</td>
					<td><textarea cols="90" rows="4"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>7. Father's Information</legend>
							<table border="1" width="100%">
								<tr>
									<td width="33%">7.1. First Name:<br/>
										<font color="red">* </font><input type="text" name="txtfirstname" id="txtfirstname"/>
									</td>
									<td width="33%">7.2. Middle Name:<br/>
										<font color="red">* </font><input type="text" name="txtfathername" id="txtfathername"/>
									</td>
									<td width="33%">7.3. Last Name:<br/>
										<font color="red">* </font><input type="text" name="txtgrandfathername" id="txtgrandfathername"/>
									</td>
								</tr>
								<tr>
									<td>7.4. Passport Number:<br/>
										<font color="red">* </font><input type="text" name="txtidnumber" id="txtidnumber"/>
									</td>
									<td>
										7.5. Country of Issue:<br/>
										<input type="text"/>
									</td>
									<td>7.6. Religion:<br/>									
									<font color="red">* </font>
										<select>
											<option value="" selected="selected">--Select--</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>7.7. Occupation:<br/>
										<input type="text" name="txtpensionnumber" id="txtpensionnumber"/>
									</td>
									<td>7.8. Place of Work:<br/>									
										<font color="red">* </font><input type="text" name="txtemployementdate" id="txtemployementdate"/>										
									</td>
									<td>
										7.9. Name of Org.<br/>
										<input type="text"/>
									</td>
								</tr>
								<tr>
									<td>7.10. Office Tel:<br/>
										<input type="text" name="txtpensionnumber" id="txtpensionnumber"/>
									</td>
									<td>7.11. Fax:<br/>									
										<font color="red">* </font><input type="text" name="txtemployementdate" id="txtemployementdate"/>										
									</td>
									<td>
										7.12. P.O.Box No.<br/>
										<input type="text"/>
									</td>
								</tr>
								<tr>
									<td>7.13. Email:<br/>
										<font color="red">* </font>
										<input type="text" name="txtnationality" id="txtnationality"/>
									</td>
									<td>7.14. Home Tel:<br/><font color="red">* </font>									
										<select>
											<option value="" selected="selected">--Select--</option>
										</select>
									</td>
									<td>7.15. Mobile:<br/>
										<input type="text"/>
									</td>
								</tr>	
								<tr>
									<td>7.16. Home Pobox:<br/>
										<font color="red">* </font>
										<input type="text" name="txtnationality" id="txtnationality"/>
									</td>
									<td></td>
									<td></td>
								</tr>															
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>8. Mother's Information</legend>
							<table border="1" width="100%">
								<tr>
									<td width="33%">8.1. First Name:<br/>
										<font color="red">* </font><input type="text" name="txtfirstname" id="txtfirstname"/>
									</td>
									<td width="33%">8.2. Middle Name:<br/>
										<font color="red">* </font><input type="text" name="txtfathername" id="txtfathername"/>
									</td>
									<td width="33%">8.3. Last Name:<br/>
										<font color="red">* </font><input type="text" name="txtgrandfathername" id="txtgrandfathername"/>
									</td>
								</tr>
								<tr>
									<td>8.4. Passport Number:<br/>
										<font color="red">* </font><input type="text" name="txtidnumber" id="txtidnumber"/>
									</td>
									<td>
										8.5. Country of Issue:<br/>
										<input type="text"/>
									</td>
									<td>8.6. Religion:<br/>									
									<font color="red">* </font>
										<select>
											<option value="" selected="selected">--Select--</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>8.7. Occupation:<br/>
										<input type="text" name="txtpensionnumber" id="txtpensionnumber"/>
									</td>
									<td>8.8. Place of Work:<br/>									
										<font color="red">* </font><input type="text" name="txtemployementdate" id="txtemployementdate"/>										
									</td>
									<td>
										8.9. Name of Org.<br/>
										<input type="text"/>
									</td>
								</tr>
								<tr>
									<td>8.10. Office Tel:<br/>
										<input type="text" name="txtpensionnumber" id="txtpensionnumber"/>
									</td>
									<td>8.11. Fax:<br/>									
										<font color="red">* </font><input type="text" name="txtemployementdate" id="txtemployementdate"/>										
									</td>
									<td>
										8.12. P.O.Box No.<br/>
										<input type="text"/>
									</td>
								</tr>
								<tr>
									<td>8.13. Email:<br/>
										<font color="red">* </font>
										<input type="text" name="txtnationality" id="txtnationality"/>
									</td>
									<td>8.14. Home Tel:<br/><font color="red">* </font>									
										<select>
											<option value="" selected="selected">--Select--</option>
										</select>
									</td>
									<td>8.15. Mobile:<br/>
										<input type="text"/>
									</td>
								</tr>	
								<tr>
									<td>8.16. Home Pobox:<br/>
										<font color="red">* </font>
										<input type="text" name="txtnationality" id="txtnationality"/>
									</td>
									<td></td>
									<td></td>
								</tr>															
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td>9. Language spoken at Home:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>9.1. Other language spoken:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>10. Name of Emergency Contact:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>10.1. Relationship:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>10.2. Office Tel:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>10.3. Home Tel:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>10.4. Mobile:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>10.5. Person responsible for paying fees:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>10.6. Expected date of arrival/Admission:</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td>List of sisters and brothers currecntly attending Sandford International School</td>
					<td>
						<table border="0" width="100%">
							<tr>
								<td>_________</td>
								<td>_________</td>
								<td>_________</td>
							</tr>
							<tr>
								<td>_________</td>
								<td>_________</td>
								<td>_________</td>
							</tr>
							<tr>
								<td>_________</td>
								<td>_________</td>
								<td>_________</td>
							</tr>
							<tr>
								<td>_________</td>
								<td>_________</td>
								<td>_________</td>
							</tr>
						</table>
					</td>
				</tr>				
				<tr>
					<td align="right" colspan="2">
						<input type="button" value="Register" class="input-submit" onclick="saveEmployee(
							document.getElementById('txtfirstname').value,document.getElementById('txtfathername').value,
							document.getElementById('txtgrandfathername').value,document.getElementById('slctsex').value,
							document.getElementById('txtdateofbirth').value,document.getElementById('txtidnumber').value,
							document.getElementById('txtpensionnumber').value,document.getElementById('txtemployementdate').value,
							document.getElementById('slctreligion').value,document.getElementById('txtnationality').value,
							document.getElementById('slctmaritalstatus').value,document.getElementById('txtspousefullname').value,
							document.getElementById('txtbasicsalary').value,document.getElementById('slctemployeetype').value,
							document.getElementById('txtemployeeposition').value,document.getElementById('slctfstudy').value,
							document.getElementById('slctbudgetcenter').value,document.getElementById('slctemployementtype').value,
							document.getElementById('slctcollege').value,document.getElementById('slctfis').value,
							document.getElementById('slctdepartment').value,document.getElementById('educationGrid'),
							document.getElementById('experienceGrid'),document.getElementById('trainingGrid'),
							document.getElementById('txtevaluationresult').value,document.getElementById('slctactiontaken').value,
							document.getElementById('txtdateofaction').value,document.getElementById('textareadescription').value,
							document.getElementById('textareaothercomment').value,document.getElementById('slctkefeleketema').value,
							document.getElementById('txtworda').value,document.getElementById('txtkebele').value,
							document.getElementById('txthousenumber').value,document.getElementById('txttelephonehouse').value,
							document.getElementById('txttelephonemobile').value,document.getElementById('txtemail').value);"/>
						<input type="reset" value="Clear All" class="input-submit"/>
					</td>
				</tr>
			</table>
		</form>
		
	</fieldset>
</div>

				
			</div>
			</div>
			<!-- /content -->

		</div>
		<!-- /cols -->

		<hr class="noscreen" />

		<!-- Footer -->
		<%@include file="footer.jsp"%>

	</div>
	<!-- /main -->

</body>
</html>