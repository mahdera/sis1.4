<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%@page import="java.util.*" %>

<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	int semesterId = Integer.parseInt(request.getParameter("semesterId"));
	int subjectId = Integer.parseInt(request.getParameter("subjectId"));
	int semesterId2 = 0;
	if(semesterId == 1 || semesterId == 2){
		semesterId2 = 1;
	}else if(semesterId == 3 || semesterId == 4){
		semesterId2 = 2;
	}else if(semesterId == 5 || semesterId == 6 || semesterId == 7){
		semesterId2 = 3;
	}
	List<GradeCard> gradeCard = GradeCard.getAllStudentsInTeachingSet(teacherId, levelId, academicYearId, semesterId2, subjectId);
	String subjectGradeType = null;
	Subject sub = Subject.getSubject(subjectId);
	
	if(sub.getSubjectName().startsWith("Theory of knowledge") || sub.getSubjectName().equalsIgnoreCase("Theory of knowledge") || sub.getSubjectName().equalsIgnoreCase("Theory of knowledge/Extended Essay") 
			|| sub.getSubjectName().equalsIgnoreCase("Theory of knowledge / Extended Essay") || sub.getSubjectName().equalsIgnoreCase("Theory of knowledge/ Extended Essay") 
			|| sub.getSubjectName().equalsIgnoreCase("Theory of knowledge /Extended Essay") || sub.getSubjectName().equalsIgnoreCase("Tok") || sub.getDescription().startsWith("AB Type")){
		subjectGradeType = "ab";
	}else if(sub.getSubjectName().equalsIgnoreCase("Creativity") || sub.getSubjectName().equalsIgnoreCase("Action") || sub.getSubjectName().equalsIgnoreCase("Service")){
		subjectGradeType = "su";
	}else{
		subjectGradeType = "12";
	}
	if(12 == levelId || levelId == 13){
		subjectGradeType = "abForIGCSE";
	}
	if (!gradeCard.isEmpty()) {
		Iterator<GradeCard> gCard = gradeCard.iterator();
		int counter = 1;
%>

<form>
	<table id="attendance" width="100%">
		<tr>
			<th>Student Full Name</th>			
			<th>Sex</th>
			<th>Grade</th>
			<% 
			if(!subjectGradeType.equalsIgnoreCase("su")){
				if(semesterId == 7){ 
				%>
				<th>Percentage</th>
				<% } else{ %>
				<th>Effort</th>
			    <% }%>
			    <th>Narrative</th>
			<% }%>
		</tr>
		<%
			while (gCard.hasNext()) {
				GradeCard gC = gCard.next();
		%>
		<tr width="25%" style="background: #fff">
			<td width=""><%=gC.getStudentFullName()%> <input type="hidden"
				id="studentId_<%=counter%>" value="<%=gC.getStudentId()%>" />
			</td>			
			<td width="1%"><%=gC.getStudentSex()%></td>
			<td width="8%">
			  <% if(subjectGradeType.equalsIgnoreCase("12")){ %>			 
					<select name="txtGrade_<%=counter%>" id="txtGrade_<%=counter%>" style="width: 100%">
					<option value="" selected="selected"> --Select-- </option>					
					<option value="7" > 7 </option>
					<option value="6" > 6 </option>
					<option value="5" > 5 </option>
					<option value="4" > 4 </option>
					<option value="3" > 3 </option>
					<option value="2" > 2 </option>						
					<option value="1" > 1 </option>
					</select>
		      <%}else if(subjectGradeType.equalsIgnoreCase("su")){ %>
		            <input type="text"	id="txtGrade_<%=counter%>" value="" />					
			  <%} else if(subjectGradeType.equalsIgnoreCase("abForIGCSE")){ %>
					<select name="txtGrade_<%=counter%>" id="txtGrade_<%=counter%>" style="width: 100%">
					<option value="" selected="selected"> --Select-- </option>	
					<option value="*" > A* </option>				
					<option value="A" > A </option>
					<option value="B" > B </option>
					<option value="C" > C </option>
					<option value="D" > D </option>
					<option value="E" > E </option>
					<option value="F" > F </option>
					<option value="G" > G </option>
					<option value="U" > U </option>
					</select>
				<%} else  if(subjectGradeType.equalsIgnoreCase("ab")){%>
					<select name="txtGrade_<%=counter%>" id="txtGrade_<%=counter%>" style="width: 100%">
					<option value="" selected="selected"> --Select-- </option>					
					<option value="A" > A </option>
					<option value="B" > B </option>
					<option value="C" > C </option>
					<option value="D" > D </option>
					<option value="E" > E </option>
					</select>
				<%}%>
			</td>
			<% if(!subjectGradeType.equalsIgnoreCase("su")){ %>
				<td width="8%">
				<% if(semesterId == 7){ %>
					<input type="text"	id="txtEff_<%=counter%>" value="" />
				<% } else{ %>
					<select name="txtEff_<%=counter%>" id="txtEff_<%=counter%>" style="width: 100%">
							<option value="" selected="selected"> --Select-- </option>					
							<option value="A" > A </option>
							<option value="B" > B </option>
							<option value="C" > C </option>
							<option value="D" > D </option>
							<option value="E" > E </option>						
					</select>
				<% } %>				
				</td>
				<td width="58%">
					<textarea id="txtNarrative_<%=counter%>" cols="70" rows="2"></textarea>
				</td>
			<% }else{ %>
			 <td width="0">
				 <input type="hidden"	id="txtEff_<%=counter%>" value="" />
				 <input type="hidden" id="txtNarrative_<%=counter%>" >
			 </td>
			<% } %>
		</tr>
		<%
		counter++;
		}//end while loop
		%>
		<tr>
			<td colspan="5" align="center"><input type="button" id="btnsave"
				value="Save"
				onclick="saveGradeCard2('<%=teacherId%>','<%=levelId%>','<%=academicYearId%>','<%=semesterId%>',
										'<%=subjectId%>','<%=counter%>');" />&nbsp;&nbsp;<input
				type="reset" id="btnreset" value="reset"/>
			</td>
		</tr>
	</table>
</form>
<%
	} else {
%>
<p class="msg info">No student information found under the selectd
	section!</p>
<%
	}
%>