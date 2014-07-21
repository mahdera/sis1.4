<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
		String teacherId = request.getParameter("teacherId");
		String levelId = request.getParameter("levelId");	
		int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
		int semesterId = Integer.parseInt(request.getParameter("semesterId"));
		String subjectId = request.getParameter("subjectId");
		
		List<GradeCard> gradeCardList = GradeCard.getAllGradeCardsForTheFollowingParameters(
				teacherId, levelId, academicYearId, semesterId, subjectId);
		Iterator<GradeCard> gradeCardItr = gradeCardList.iterator();
		gradeCardList = null;
		int counter = 1;
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Student Name</th>
		<th>Teacher Name</th>		
		<th>Subject</th>
		<th>Grade</th>
		<% if(semesterId == 7){ %>
		<th>Percentage</th>
		<% } else{ %>
		<th>Effort</th>
		<% } %>
		<th>Narrative</th>
	    
	</tr>
	<%
	int ctr=1;
	while(gradeCardItr.hasNext()){
		GradeCard gradeCard = gradeCardItr.next();		
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
		    <td><input type="hidden" id="gradeId_<%=counter%>" value="<%=gradeCard.getId()%>" /><%=gradeCard.getId() %></td>
			<td><input type="hidden" id="studentId_<%=counter%>" value="<%=gradeCard.getStudentId()%>" ><%=gradeCard.getStudentFullName() %></td>
			<td><input type="hidden" id="teacherId_<%=counter%>" value="<%=gradeCard.getTeacherId()%>" ><%=gradeCard.getTeacherFullName() %></td>			
			<td><%=gradeCard.getSubjectName() %></td>
			<td><input type="text" id="txtGrade_<%=counter%>" value="<%=gradeCard.getGrade() %>" size="12" /></td>			
			<td><input type="text" id="txtEff_<%=counter%>" value="<%=gradeCard.getEff() %>" size="4" /></td>
			<td><textarea id="txtCond_<%=counter%>" cols="40" ><%=gradeCard.getCond() %></textarea></td>
		</tr>
		<%
		ctr++;
		counter++;
	}//end while loop
	%>
	<tr>
			<td colspan="5" align="center"><input type="button" id="btnsave"
				value="Update"
				onclick="updateGradeCard('<%=teacherId%>','<%=levelId%>',<%=academicYearId%>,<%=semesterId%>,
										'<%=subjectId%>','<%=counter%>');" />&nbsp;&nbsp;<input
				type="reset" id="btnreset" value="reset"/>
			</td>
		</tr>
</table>
<div id="editGradeCardDiv"></div>
        
