<%@ page import="com.signetitsolutions.sis.server.classes.*"%>
<%@ page import="java.util.*" %>
<%
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String studentId = request.getParameter("studentId");
	List<SpecialCourseGrading> scg = ReportAnalyzer.getStudentSpecialCourseGrading(sectionId, studentId);
	SpecialCourseGrading s = scg.get(0);
%>
<div id="printReportDiv" width="100%">
<table width="100%">
	<tr>
		<td colspan="4">Student Name:  <b><%=s.getFirstName()+" "+s.getMiddleName() %></b></td><td colspan="4">Class  <b><%=Level.getLevel(s.getLevelId()).getLevelName() %></b></td>
	</tr>
	<tr>
		<td colspan="8" style="text-align:center"><b>key to grades</b> : according to year group standard</td>
	</tr>
	<tr>
		<td colspan="4" style="text-align:center"><b>ACHIEVEMENT</b></td><td colspan="4" style="text-align:center"><b>EFFORT</b></td>
	</tr>
	<tr>
		<td>E</td><td>Exceeding Expectation </td><td>S</td><td>Achieving some expectation</td><td>1</td><td>Excellent</td><td>3</td><td>Satisfactory</td>
	</tr>
	<tr>
		<td>M</td><td>Meeting Expectation</td><td>N</td><td>Not yet achieving expectation</td><td>2</td><td>Good</td><td>4</td><td>Unsatisfactory</td>
	</tr>
	<tr>
		<td colspan="2"> <b>CURRICULUM <br/>AREA</b></td ><td colspan="2"><b>Achievement</b></td><td colspan="2"><b>Effort</b></td><td colspan="2"><b>Specialist teacher comment</b></td>
	</tr>
	<%
		Iterator<SpecialCourseGrading> scgItr = scg.iterator();
		int prev = -1, ind = 0;
		while(scgItr.hasNext()){
			SpecialCourseGrading sg = scgItr.next();
			if(prev != sg.getSubjectId()){
				prev = sg.getSubjectId();
				ind = ReportAnalyzer.countRowsOfSCG(scg, sg.getSubjectId());
				if(ind - 1 == 0){
				%>
				<tr>
					<td colspan="5" style="font-weight: bold"><%=Subject.getSubject(sg.getSubjectId()).getSubjectName() %></td>
					<td colspan="3" style="font-weight: bold"><%=Teacher.getTeacher(sg.getTeacherId()).getFirstName()+" "+Teacher.getTeacher(sg.getTeacherId()).getMiddleName() %></td>
				</tr>
				<tr><td>
					<td colspan ="2"><%=EvaluationCriteria.getEvaluationCriteria(sg.getEvalCriteria()).getEvaluationCriteriaName() %></td>
					<td colspan ="2"><%=sg.getAchivment() %></td>
					<td colspan ="2"><%=sg.getEffort() %></td>
					<td colspan ="2"><%=sg.getComment() %></td>
				</tr>
				<%
				}else{
					%>
					<tr>
					<td colspan="5" style="font-weight: bold"><%=Subject.getSubject(sg.getSubjectId()).getSubjectName() %></td>
					<td colspan="3" style="font-weight: bold"><%=Teacher.getTeacher(sg.getTeacherId()).getFirstName()+" "+Teacher.getTeacher(sg.getTeacherId()).getMiddleName() %></td>
					</tr>
					<tr>
						<td colspan ="2"><%=EvaluationCriteria.getEvaluationCriteria(sg.getEvalCriteria()).getEvaluationCriteriaName() %></td>
						<td colspan ="2"><%=sg.getAchivment() %></td>
						<td colspan ="2"><%=sg.getEffort() %></td>
						<td  colspan ="2" rowspan=<%=ind %>><%=sg.getComment() %></td>
					</tr>
					<%
				}
			}else{
				%>
				<tr>
					<td colspan ="2"><%=EvaluationCriteria.getEvaluationCriteria(sg.getEvalCriteria()).getEvaluationCriteriaName() %></td>
					<td colspan ="2"><%=sg.getAchivment() %></td>
					<td colspan ="2"><%=sg.getEffort() %></td>
				</tr>
				<%
			}
		}
	%>
</table>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a> 