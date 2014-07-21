<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<% 
	String levelId = request.getParameter("levelId");
	String selcsubject = request.getParameter("subject");
	List<StudentLevel> studentList = StudentLevel.getStudentsInLevel(levelId);
	List<Subject> subjectList = Subject.getAllSubjects();
	Iterator<StudentLevel> studentItr = studentList.iterator();
	Iterator<Subject> subjectItr = subjectList.iterator();
	int studCount = 0;
	//int subCount = 0;
%>
<form>
	<table id="studentandsubject">
		<tr>
			<th>Student</th>			
		<%					
			while (subjectItr.hasNext()) {
				Subject subject = subjectItr.next();
				if(String.valueOf(subject.getId()).equalsIgnoreCase(selcsubject)){
					%>		
						<th id="<%=subject.getId()%>" value="<%=+subject.getId()%>"><%=subject.getSubjectName()%></th>			
					<%	
				}
			}//end while loop
		%>			
		</tr>
<%
	if (!studentList.isEmpty()) {		
		while (studentItr.hasNext()) {
			StudentLevel studLevel = studentItr.next();
			studCount++;
%>
	<tr> 
		<td id="<%=studLevel.getStudentId()%>"><%=studLevel.getName()%></td>			
		<%	String checkbox = String.valueOf(studCount)+selcsubject; %>	
		<td width="5"><input type="checkbox" id="<%=checkbox%>" /></td>	
	</tr>

	<%		
		}//end while loop		
	%>
		<tr>		
			<td colspan="5" align="center">
			<input type="button" id="btnsave" value="Save"
				onclick="saveTeachesStudent('save', document.getElementById('slctteacher').value,
								   document.getElementById('slctacademicyear').value,
								   document.getElementById('slctterm').value,
								   document.getElementById('slctlevel').value,
								   '<%=studCount%>','<%=selcsubject%>'					   
								   );" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" id="btndelete" value="Delete" 
				 onclick="saveTeachesStudent('delete', document.getElementById('slctteacher').value,
					   document.getElementById('slctacademicyear').value,
					   document.getElementById('slctterm').value,
					   document.getElementById('slctlevel').value,
					   '<%=studCount%>','<%=selcsubject%>'					   
					   );" />
			</td>
		</tr>
	</table>
</form>
<%
	}else{
%>
	<p class="msg info">There are no students in this level!</p>
<%
	}//end of if
%>