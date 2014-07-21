<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<h3 class="tit">Student Evaluation Tab</h3> 
<div class="tabs box"> 
	<ul> 
		<li><a href="#.jsp" id="showstudentevaluationInnerMenuEarlyYearLink"><span>Early Years</span></a></li>
		<!-- <li><a href="#.jsp" id="showstudentevaluationInnerMenuReceptionLink"><span>Reception</span></a></li>-->
		<li><a href="#.jsp" id="showstudentevaluationInnerMenuKeyStageOneLink"><span>Key Stage One</span></a></li>
		<li><a href="#.jsp" id="showstudentevaluationInnerMenuKeyStageTwoLink"><span>Key Stage Two</span></a></li>
		<li><a href="#.jsp" id="showstudentevaluationInnerMenuSpecialistClassLink"><span>Specialist Class</span></a></li>
		<li><a href="#.jsp" id="showstudentevaluationInnerMenuEditEvaluationResultLink"><span>Edit Evaluation Result</span></a></li>					
	    <li><a href="#.jsp" id="showstudentevaluationInnerMenuReportLink"><span>View Report</span></a></li>
	</ul> 
</div> <!-- /tabs -->
<div id="showdetail"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#showstudentevaluationInnerMenuEarlyYearLink').click(function(){
			$('#showdetail').load('earlyyearmenu.jsp');
		});
		
		$('#showstudentevaluationInnerMenuReceptionLink').click(function(){
			$('#showdetail').load('reseptionmenu.jsp');
		});
		
		$('#showstudentevaluationInnerMenuKeyStageOneLink').click(function(){
			$('#showdetail').load('keystageonemenu.jsp');
		});
		
		$('#showstudentevaluationInnerMenuKeyStageTwoLink').click(function(){
			$('#showdetail').load('keystagetwomenu.jsp');
		});
		
		$('#showstudentevaluationInnerMenuSpecialistClassLink').click(function(){
			$('#showdetail').load('menuforspecialist.jsp');
		});
		
		$('#showstudentevaluationInnerMenuReportLink').click(function(){
			$('#showdetail').load('report.jsp');
		});
		
		$('#showstudentevaluationInnerMenuEditEvaluationResultLink').click(function(){
			$('#showdetail').load('editevaluationresult.jsp');
		});
	});//end document.ready function
</script>