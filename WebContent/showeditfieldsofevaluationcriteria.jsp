<%@page import="java.util.*" %>
<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	EvaluationCriteria e = EvaluationCriteria.getEvaluationCriteria(id);
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td align="right">Subject:</td>
			<td>
				<input type="text" name="txtsubject" id="txtsubject" value="<%=Subject.getSubject(e.getSubjectId()).getSubjectName()%>"/>
				<input type="hidden" name="hiddensubject" id="hiddensubject" value="<%=e.getSubjectId()%>"/>
			</td>
			<td align="right">Subject:</td>
			<td>
				<select name="slctsubject" id="slctsubject" style="width:50%" onchange="changeSubjectForThisEvaluationCriteria(this.value)">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Subject> sList = Subject.getAllSubjects();
						Iterator<Subject> sItr = sList.iterator();
						sList = null;
						while(sItr.hasNext()){
							Subject s = sItr.next();
							%>
							<option value="<%=s.getId() %>"><%=s.getSubjectName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Level:</td>
			<td>
				<input type="text" name="txtlevel" id="txtlevel" value="<%=Level.getLevel(e.getLevelId()).getLevelName()%>"/>
				<input type="hidden" name="hiddenlevel" id="hiddenlevel" value="<%=e.getLevelId()%>"/>
			</td>
			<td align="right">Level:</td>
			<td>
				<select name="slctlevel" id="slctlevel" style="width:50%" onchange="changeLevelForThisEvaluationCriteria(this.value)">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Level> lList = Level.getAllLevels();
						Iterator<Level> lItr = lList.iterator();
						lList = null;
						while(lItr.hasNext()){
							Level l = lItr.next();
							%>
							<option value="<%=l.getId() %>"><%=l.getLevelName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Evaluation Criteria Name:</td>
			<td>
				<input type="text" name="txtcriterianame" id="txtcriterianame" value="<%=e.getEvaluationCriteriaName()%>"/>
			</td>
		</tr>
		<tr>
		<td></td>
			<td>
				<input type="button" value="Update" onclick="updateEvaluationCriteria(<%=e.getId()%>,document.getElementById('hiddensubject').value,document.getElementById('hiddenlevel').value,document.getElementById('txtcriterianame').value);"/>
				<input type="reset" value="Undo"/>
			</td>
		</tr>
	</table>
</form>


