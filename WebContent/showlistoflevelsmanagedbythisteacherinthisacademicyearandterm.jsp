<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	int termId = Integer.parseInt(request.getParameter("termId"));
	
	//now get all levels using the above parameter...
	List<Teaches> tList = Teaches.getAllTeachesForTeacherInTermAndAcademicYear(teacherId,termId,academicYearId);
	Iterator<Teaches> tItr = tList.iterator();
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Level</td>
			<td>
				<select name="slctteaches" id="slctteaches" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						while(tItr.hasNext()){
							Teaches t = tItr.next();
							%>
							<option value="<%=t.getId() %>"><%=Level.getLevel(t.getSectionId()).getLevelName() %>, <%=Subject.getSubject(t.getSubjectId()).getSubjectName() %></option>
							<%
						}
					%>
				</select>
			</td>
			<td>
				<input type="button" value="Show Students" onclick="showListOfStudentsInThisTeachesValue(document.getElementById('slctteaches').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="studentListDiv"></div>