<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	int admissionAgeRuleId = Integer.parseInt(request.getParameter("admissionAgeRuleId"));
	AdmissionAgeRule admissionAgeRule = AdmissionAgeRule.getAdmissionAgeRule(admissionAgeRuleId);
%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Level:</td>
			<td>
				<input type="text" name="txteditlevelname" id="txteditlevelname" value="<%=Level.getLevel(admissionAgeRule.getLevelId()).getLevelName() %>"/>
				<input type="hidden" name="hiddenlevelid" id="hiddenlevelid" value="<%=admissionAgeRule.getLevelId() %>"/>
			</td>
			<td>
				<select name="slcteditlevel" id="slcteditlevel" style="width:50%" onchange="changeLevelForThisAdmissionAgeRule(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Level> levelList = Level.getAllLevels();
						Iterator<Level> levelItr = levelList.iterator();
						while(levelItr.hasNext()){
							Level level = levelItr.next();
							%>
							<option value="<%=level.getId() %>"><%=level.getLevelName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Lower Boundary:</td>
			<td>
				<input type="text" name="txteditlowerboundary" id="txteditlowerboundary" value="<%=admissionAgeRule.getLowerBoundary() %>"/>
			</td>
			<td></td>
		</tr>
		<tr>
			<td>Upper Boundary:</td>
			<td>
				<input type="text" name="txteditupperboundary" id="txteditupperboundary" value="<%=admissionAgeRule.getUpperBoundary() %>"/>
			</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td colspan="2">
				<input type="button" value="Update" onclick="updateAdmissionAgeRule(<%=admissionAgeRuleId %>,
				document.getElementById('hiddenlevelid').value,document.getElementById('txteditlowerboundary').value,
				document.getElementById('txteditupperboundary').value);"/>
				<input type="reset" value="Undo"/>
			</td>
		</tr>
	</table>
</form>