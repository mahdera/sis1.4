<%@page import="javax.swing.text.Document"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	Account account = (Account) session.getAttribute("account");
	String supervisorType = null;
	////
	String functionalityName = "feeManagement";
	Functionality functionalityO = Functionality
			.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(),
			functionalityO.getId());

	if (role.isReadable() && role.isWritable()) {
%>
<form>
	<table border="0" width="100%">

		<tr>

			<td width="50%">Select Level: <select name="slectLevel" id="selectLevel"  style="width:100%" onchange="showAllTheSectionsOfThisLevel(this.value)">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Level> levelList = Level.getAllLevels();
							Iterator<Level> levelItr = levelList.iterator();
							levelList = null;
							while (levelItr.hasNext()) {
								Level a = levelItr.next();
					%>
					<option value="<%=a.getId()%>"><%=a.getLevelName()%></option>
					<%
						}
					%>
			</select></td>

			<td>Select Section:
			
			<div id="sectionDiv"></div>
			</td>
		</tr>
		<tr>
		<td>Select Academic Year:
				<select name="slctacademicyear" id="slctacademicyear">
					<option value="" selected="selected">--Select--</option>
					<%
						List<AcademicYear> academicYearList = AcademicYear.getAllAcademicYears();
							Iterator<AcademicYear> academicYearItr = academicYearList.iterator();
							academicYearList = null;
							while (academicYearItr.hasNext()) {
								AcademicYear a = academicYearItr.next();
					%>
					<option value="<%=a.getId()%>"><%=a.getAcademicYearName()%></option>
					<%
						}
					%>
			</select></td>
			<td>
				 Date:<br/>
				<input type="text" name="txtstartdate" id="txtstartdate"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtstartdate');" />
			</td>
		</tr>
		<tr>
			<td colspan="6" align="right"><input type="button"
				value="Show Student Grid"
				onclick="showListOfStudentsForFee(document.getElementById('selectLevel').value,document.getElementById('slctsection').value,document.getElementById('slctacademicyear').value);" />
				<input type="reset" value="Clear All" /></td>
		</tr>
	</table>
</form>
<div id="attendanceDiv"></div>
<%
	} else {
%><p class="msg error">You do not have sufficient privileged to
	perform this operation!</p>
<%
	}
%>
