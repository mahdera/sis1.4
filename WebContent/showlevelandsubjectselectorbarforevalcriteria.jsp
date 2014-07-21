<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Level:</td>				
			<td>
				<select name="slctlevel" id="slctlevel" style="width:50%">
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
			<td>Select Subject:</td>
			<td>
				<select name="slctsubject" id="slctsubject" style="width:50%">
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
			<td>
				<input type="button" value="Show" onclick="showListOfEvaluationCriteriaForLevelAndSubject(
						document.getElementById('slctlevel').value,document.getElementById('slctsubject').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
</form>
<div id="evaluationCriteriaListDiv"></div>