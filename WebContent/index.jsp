
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
<script type="text/javascript" language="javascript" src="js/ajax_functions.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".tabs > ul").tabs();
	});
</script>
<title>sis1.4 Sandford International School</title>
<link rel="shortcut icon" href="design/school.jpg"/>
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
				<!-- the main container div mahder -->
					<table border="1" width="100%">
						<tr>
							<td colspan="2"><strong><font size="5">sis1.4 Sandford International School</font></strong></td>												
						</tr>
						<tr style="background:#eeeeee">
							<td align="center">
								<h3><a href="applicationform_local.jsp">Local Application Form</a></h3>
							</td>
							<td align="center">
								<h3><a href="applicationform_international.jsp">International Application Form</a></h3>
							</td>
						</tr>
						
						<tr>
							<td colspan="2">
								Using this application, you can do the following things:
								<ul>
									<li>Manage Admission Application</li>
									<li>Manage Admission Approval</li>
									<li>Manage Applicants Detailed Information</li>									
								</ul>
								<br/><br/><br/>
								<br/><br/><br/>
							</td>							
						</tr>	
						<br/><br/><br/>						
						<tr>
							<td colspan="2" align="center">
								<font size="1"><strong>sis1.4 Sandford International School</strong><br/></font>
								<!--<img src="design/dolfin_main.jpg" width="5%"/>-->	
							</td>							
						</tr>					
					</table>	
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
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtusername').focus();
	});//end document.ready function
</script>