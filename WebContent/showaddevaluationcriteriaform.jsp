<%@page import="java.util.*" %>
<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<div style="background:lightyellow">
<form>
	<table border="0" width="100%">
		<tr>
			<td align="right">Subject:</td>
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
		</tr>
		<tr>
			<td align="right">Level:</td>
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
		</tr>
		<tr>
			<td align="right">Evaluation Criteria Name:</td>
			<td>
				<input type="text" name="txtcriterianame" id="txtcriterianame"/>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Save" onclick="saveEvaluationCriteria(document.getElementById('slctsubject').value,
						document.getElementById('slctlevel').value,document.getElementById('txtcriterianame').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>
</div>