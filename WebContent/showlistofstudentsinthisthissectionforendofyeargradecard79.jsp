<%@ page import="com.signetitsolutions.sis.server.classes.*"%>
<%@ page import="java.util.*" %>
<%
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	List<Applicant> applicant = ReportAnalyzer.getStudentsBySection(sectionId);
	Iterator<Applicant> appItr = applicant.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eeeeee">
		<td>First Name</td>
		<td>Middle Name</td>
		<td>Last Name</td>
		<td colspan="2">Report</td>
	</tr>
	<%
		while(appItr.hasNext()){
			Applicant a = appItr.next();
			%>
			<tr>
			<td><%=a.getFirstName() %></td>
			<td><%=a.getMiddleName() %></td>
			<td><%=a.getLastName() %></td>
			<td><a href="#.jsp" onclick="generateEndOfYearGradeCardForThisStudent('<%=sectionId %>','<%=a.getId()%>')">Generate Grade Report</a></td>
			<td><a href="#.jsp" onclick="generateEndOfYearNarrativeForThisStudent('<%=sectionId %>','<%=a.getId()%>');">Generate Narrative Report</a></td>
			
			</tr>
		<%
		}
		%>
</table>
<div id="showEndOfYearFinal"></div>