<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long studentId = Long.parseLong(request.getParameter("studentId"));
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	//now get the evaluation criteria for this subject and level...from MSSQL Server 2005 DBMS Mahder...
	int numberOfEvaluationCriteria = EvaluationCriteria.getHowManyEvaluationCriteriaDoesThisSubjectOfLevelHas(subjectId,levelId);
	List<EvaluationCriteria> eCList = EvaluationCriteria.getAllEvaluationCriteriasForLevelAndSubject(levelId,subjectId);
	Iterator<EvaluationCriteria> eCItr = eCList.iterator();
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>CURRICULUM AREA</td>
			<td>ACHIEVEMENT</td>
			<td>EFFORT</td>
			<!-- <td>SPECIALIST TEACHERS' COMMENTS</td> -->
		</tr>
		<%
		int rowCtr=1;
		while(eCItr.hasNext()){
			EvaluationCriteria e = eCItr.next();
			String acheName = "txtachievement"+rowCtr;
			String effortName = "txteffort"+rowCtr;
			String hiddenCriteriaId = "hiddencriteriaid"+rowCtr;
			//String commentName = "textareacomment"+e.getId();
			%>
			<tr>
				<td>
					<%=e.getEvaluationCriteriaName() %>
					<input type="hidden" name="<%=hiddenCriteriaId %>" id="<%=hiddenCriteriaId %>" value="<%=e.getId() %>"/> 
				</td>
				<td><input type="text" name="<%=acheName %>" id="<%=acheName %>"/></td>
				<td><input type="text" name="<%=effortName %>" id="<%=effortName %>"/></td>				
			</tr>
			<%
			rowCtr++;
		}//end while loop
		
		%>
		<tr style="background:#eeeeee">
			<td colspan="3">
				SPECIALIST TEACHERS' COMMENTS
			</td>
		</tr>
		<tr>
			<td>Write your comments here:</td>
			<td colspan="2">
				<textarea name="textareacomment" id="textareacomment" rows="3" cols="80"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="right">
				<input type="button" value="Save" onclick="
					var numberOfCriteria = <%=numberOfEvaluationCriteria%>
					alert(numberOfCriteria);
					var strValues=':';
					var criteriaIdNameVal=null;
					var acheNameVal=null;
					var effortNameVal=null;
					for(i=1;i<=numberOfCriteria;i++){
						var criteriaIdName = 'hiddencriteriaid'+i;
						var acheName = 'txtachievement'+i;
						var effortName = 'txteffort'+i;
						//alert(criteriaIdName);
						//alert(document.getElementById(effortName).value);
						criteriaIdNameVal = document.getElementById(criteriaIdName).value;
						acheNameVal = document.getElementById(acheName).value;
						effortNameVal = document.getElementById(effortName).value;
						//alert('here mahder');
						//alert(criteriaIdNameVal+':'+acheNameVal+':'+effortNameVal);
						strValues += criteriaIdNameVal+':'+acheNameVal+':'+effortNameVal+':';						
					}
					//alert(strValues);
					saveEvaluationForStudent(<%=studentId%>,<%=teacherId%>,<%=subjectId%>,
					strValues,document.getElementById('textareacomment').value,
					document.getElementById('slctacademicyear').value,
					document.getElementById('slctterm').value);
				"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>	
</form>