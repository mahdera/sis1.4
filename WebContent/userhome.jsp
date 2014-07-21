
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
<head> 
	<meta http-equiv="content-type" content="text/html; charset=utf-8" /> 
	<meta http-equiv="content-language" content="en" /> 
	<meta name="robots" content="noindex,nofollow" /> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/reset.css" /> <!-- RESET --> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/main.css" /> <!-- MAIN STYLE SHEET --> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/2col.css" title="2col" /> <!-- DEFAULT: 2 COLUMNS --> 
	<link rel="alternate stylesheet" media="screen,projection" type="text/css" href="css/1col.css" title="1col" /> <!-- ALTERNATE: 1 COLUMN --> 
	<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]--> <!-- MSIE6 --> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/style.css" /> <!-- GRAPHIC THEME --> 
	<link rel="stylesheet" media="screen,projection" type="text/css" href="css/mystyle.css" /> <!-- WRITE YOUR CSS CODE HERE --> 
	<!-- <script type="text/javascript" src="js/jquery.js"></script>-->
	 
	<script type="text/javascript" src="js/switcher.js"></script> 
	<script type="text/javascript" src="js/toggle.js"></script> 
	<script type="text/javascript" src="js/ui.core.js"></script> 
	<script type="text/javascript" src="js/ui.tabs.js"></script>
	<script type="text/javascript" src="js/ajax_functions.js"></script>
	<script src="datetimepicker/datetimepicker_css.js"></script>  
	<script type="text/javascript" src="jscolor/jscolor.js"></script>
	<script src="201a.js" type="text/javascript"></script>
	<link rel="stylesheet" media="print" type="text/css" href="css/print.css"/>
	
	<title>sis1.4 Sandford International School</title>
	<link rel="shortcut icon" href="design/school.jpg"/>		  
	<script src="sample/datetimepicker_css.js"></script> 
	<link rel="stylesheet" href="js_color_picker/color_select.css" type="text/css"/>
	<script type="text/javascript" src="js_color_picker/color_select.js"></script>
	<script type="text/javascript" language="javascript" src="DataTables-1.10.0/media/js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="DataTables-1.10.0/media/css/jquery.dataTables.css"></link>
	<script type="text/javascript" language="javascript" src="DataTables-1.10.0/media/js/jquery.dataTables.js"></script>
	
	<!-- now comes the jquery text editor section -->	
	<script type="text/javascript" src="jQuery-TE_v.1.4.0/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="jQuery-TE_v.1.4.0/jquery-te-1.4.0.min.js"></script>
	<link rel="Stylesheet" type="text/css" href="jQuery-TE_v.1.4.0/jquery-te-1.4.0.css" />
	
	<script type="text/javascript">
		function cs_init(){
			var cs0 = new color_select();
			cs0.attach_to_element(document.getElementById("color_select_icon0"));
		}
		
		function my_awesome_update_o_matic_function(the_new_color){
			window.status = the_new_color;
		}
		cs0.change_update_function = "my_awesome_update_o_matic_function";
	</script>	     
</head> 
 
<body> 
<%
	response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
	response.addHeader("Pragma", "no-cache"); 
	response.addDateHeader ("Expires", 0);
%> 
<div id="main"> 
 
	<!-- Tray -->
	<%@include file="tray.jsp" %> 	 
 
	<hr class="noscreen" /> 
 
	<%@include file="menuheader.jsp" %>
 
	<hr class="noscreen" /> 
 
	<!-- Columns --> 
	<div id="cols" class="box"> 
 
		<!-- Aside (Left Column) --> 
		<div id="aside" class="box"> 
 
			<%@include file="leftpaddingbox.jsp" %>
 
 			<%@include file="leftmenulists.jsp" %>
			
 
		</div> <!-- /aside --> 
 
		<hr class="noscreen" /> 
 
		<!-- Content (Right Column) --> 
		<div id="content" class="box"> <!-- the main container div mahder -->
			<div style="text-align:center">
			<span id="ajaxLoaderSpan" style="visibility:hidden">
 					<img src="design/loading.gif" border="0"/>
 			</span>
 			</div>
 				
 			<div id="searchResultDiv"></div>
 			<div id="operationStatusDiv"></div>		 
		</div> <!-- /content --> 
 
	</div> <!-- /cols --> 
 
	<hr class="noscreen" /> 
 
	<!-- Footer --> 
	<%@include file="footer.jsp" %> 
 
</div> <!-- /main --> 
 
</body> 
</html>