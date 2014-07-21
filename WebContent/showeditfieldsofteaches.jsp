<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Teaches t =Teaches.getTeaches(id);
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Subject:</td>
			<td>
				<input type="text" name="txtsubject" id="txtsubject" value="<%= Subject.getSubject(t.getSubjectId()).getSubjectName()%>"/>
				<input type="hidden" name="hiddensubject" id="hiddensubject" value="<%= t.getSubjectId()%>"/>
			</td>
			<td>
				<select name="slctsubject" id="slctsubject" style="width:50%" onchange="changeSubjectForThisTeaches(this.value)">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Subject> sList = Subject.getAllSubjects();
						Iterator<Subject> sItr = sList.iterator();
						while(sItr.hasNext()){
							Subject s = sItr.next();
							%>
							<option value="<%=s.getId()%>"><%=s.getSubjectName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Level:</td>
			<td>
				<input type="text" name="txtlevel" id="txtlevel" value="<%= Level.getLevel(t.getSectionId()).getLevelName()%>"/>
				<input type="hidden" name="hiddenlevel" id="hiddenlevel" value="<%= t.getSectionId()%>"/>
			</td>
			<td>
				<select name="slctlevel" id="slctlevel" style="width:50%" onchange="changeLevelForThisTeaches(this.value)">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Level> lList = Level.getAllLevels();
						Iterator<Level> lItr = lList.iterator();
						while(lItr.hasNext()){
							Level l = lItr.next();
							%>
							<option value="<%=l.getId()%>"><%=l.getLevelName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Update" onclick="updateTeaches(<%=t.getId() %>,
						document.getElementById('hiddensubject').value,document.getElementById('hiddenlevel').value);"/>
				<input type="reset" value="Undo"/>
			</td>
		</tr>
	</table>
</form>