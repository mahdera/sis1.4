
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
<link rel="shortcut icon" href="design/dolfin.jpg" />
<script src="sample/datetimepicker_css.js"></script>
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
				<%@page import="com.signetitsolutions.sis.server.classes.*"%>
				<%@page import="java.util.*"%>
				<div id="applicationFormDiv">
					<%@include file="showapplicationinternationalform.jsp"%>
				</div>
				<%-- <%@include file="showinformationboxboforeattachments.jsp" %> --%>
				<!-- <div>
					<fieldset>
						<legend>Attachments:</legend>
						<form style="background:lightyellow">
							<table border="0" width="100%">
								<tr>
									<td align="right">Birth Certificate:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td align="right">Vaccination Card:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td align="right">Father Passport:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td align="right">Mother Passport:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td align="right">Child Passport:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td align="right">Current School Report:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td align="right">Receipt Application Fee:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td align="right">Passport Size Photo:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td align="right">Parent Work Permit:</td>
									<td><input type="file" name="fle" /></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" value="Save" /> <input
										type="reset" value="Clear All" /></td>
								</tr>
							</table>
						</form>
					</fieldset>
				</div> -->
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