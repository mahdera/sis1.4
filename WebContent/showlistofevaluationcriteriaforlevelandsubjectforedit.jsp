<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	
	List<EvaluationCriteria> eList = EvaluationCriteria.getAllEvaluationCriteriasForLevelAndSubject(levelId,subjectId);
	Iterator<EvaluationCriteria> eItr = eList.iterator();
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Level</th>
		<th>Subject</th>
		<th>Evaluation Criteria Name</th>
		<th>Edit</th>
	</tr>
	<%
	int ctr=1;
	while(eItr.hasNext()){
		EvaluationCriteria e = eItr.next();
		Level l = Level.getLevel(e.getLevelId());
		Subject s = Subject.getSubject(e.getSubjectId());
		if(ctr%2==0){
		%>
		<tr class="bg">
		<%
		}else{
		%>
		<tr>
		<%
		}
		%>
			<td><%=ctr %></td>
			<td><%=l.getLevelName() %></td>
			<td><%=s.getSubjectName() %></td>
			<td><%=e.getEvaluationCriteriaName() %></td>
			<td>
				<a href="#.jsp" onclick="showEditFieldsOfEvaluationCriteria(<%=e.getId()%>);">Edit</a>
			</td>
		</tr>
		<%
		ctr++;
	}//end while loop
	%>
</table>
<div id="evaluationCriteriaListEditDiv"></div>