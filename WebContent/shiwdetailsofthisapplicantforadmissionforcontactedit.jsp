<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String applicantId = String.valueOf(request.getParameter("applicantId"));
	//out.print(applicantId);
	Applicant applicant = Applicant.getApplicant(applicantId);

%>
<form>
<table border="0" style="width:100%;overflow:auto;">
	<tr>
		<th colspan="5"><center>Telephone</center></th>
		<th><center>E-mail</center></th>
		<th><center>Emergency Contact Mobile</center></th>
		<th><center>Parents Profession Father's/Mother's</center></th>
	</tr>
	<tr>
			<th>Res Tel.</th>
			<th>Father's Office</th>
			<th>Mother's Office</th>
			<th>Father's Mobile</th>
			<th>Mother's Mobile</th>
			<th></th>
			<th></th>
			<th></th>
	</tr>
	<tr>		<%
											long fatherId = ChildParent.getFatherIdOfThisApplicant(applicantId);
											Parent fParent = Parent.getParent(fatherId);
											long motherId = ChildParent.getMotherIdOfThisApplicant(applicantId);
											Parent mParent = Parent.getParent(motherId);
											ParentAddress mParentAddress = ParentAddress.getParentAddressForParent(mParent.getId());
											ParentAddress fParentAddress = ParentAddress.getParentAddressForParent(fParent.getId());
											EmergencyContact eContact = EmergencyContact.getEmergencyContactForApplicant(applicantId);
											//out.print(fParent.getFirstName());
				%>
				<td> <br/>									
										<input type="text" id="txtfatherhometel" name="txtfatherhometel" value="<%=fParentAddress.getHomeTelephone() %>"/>
										<br/><input type="hidden" id="hiddenfatherid" value="<%=fatherId%>">
										<br/><input type="hidden" id="hiddenfatheraddress" value="<%= fParentAddress.getId() %>"/>
				</td>
				<td> <br/>
										<input type="text" id="txtfatherofficetel" name="txtfatherofficetel" value="<%= fParentAddress.getOfficeTelephone()%>"/>
										
									</td>
				<td> <br/>
										<input type="text" id="txtmotherofficetel" name="txtmotherofficetel" value="<%=mParentAddress.getOfficeTelephone() %>"/>
										<br/><input type="hidden" id="hiddenmotherid" value="<%=motherId %>"/>
									    <br/><input type="hidden" id="hiddenmotheraddress" value="<%=mParentAddress.getId()%>"/>
									</td>
									<td>  Mobile 1:<br/>
										<input type="txet" id="txtfathermobile" name="txtfathermobile" value="<%=fParentAddress.getMobileTelephone() %>"/><br/>
										 Mobile 2:<br/>
										<input type="txet" id="txtfathermobile2" name="txtfathermobile2" value="<%=fParentAddress.getMobileTelephone2() %>"/>
									</td>
									<td> Mobile 1:<br/>
										<input type="text" id="txtmothermobile" name="txtmothermobile" value="<%=mParentAddress.getMobileTelephone() %>"/><br/>
										 Mobile 2:<br/>
										<input type="text" id="txtmothermobile2" name="txtmothermobile2" value="<%=mParentAddress.getMobileTelephone2() %>"/>
									</td>					
				<td> F-Email:<br/>
										<input type="text" id="txtfatheremail" name="txtfatheremail" value="<%=fParentAddress.getEmail() %>"/><br/>
					 M-Email:<br/>		<input type="text" id="txtmotheremail" name="txtmotheremail" value="<%=mParentAddress.getEmail() %>"/>
									</td>
				
				<td> <br/>
										<input type="text" id="txtemobile" name="txtemobile" value="<%=eContact.getMobileTelephone() %>"/><br/>
										<input type="hidden" id="hiddeneid" value="<%=eContact.getId() %>"/>
									</td>
				<td> Father's:<br/>
										<input type="text" id="txtfatheroccupation" name="txtfatheroccupation" value="<%=fParent.getOccupation() %>"/><br/>
					 Mother's:<br/>		<input type="text" id="txtmotheroccupation" name="txtmotheroccupation" value="<%=mParent.getOccupation() %>"/>
									</td>
			</tr>
			<tr><td colspan="8" align="center"><input type="button" value="Update" onclick="updateThisStudentAdmissionContact2('<%=applicant.getId()%>',
		document.getElementById('txtfatheroccupation').value,document.getElementById('txtfatherofficetel').value,
		document.getElementById('txtfatheremail').value,
		document.getElementById('txtfatherhometel').value,
		document.getElementById('txtfathermobile').value,
		document.getElementById('txtfathermobile2').value,
		
		document.getElementById('txtmotheroccupation').value,
		document.getElementById('txtmotherofficetel').value,
		document.getElementById('txtmotheremail').value,
		document.getElementById('txtmothermobile').value,
		document.getElementById('txtmothermobile2').value,
		
		document.getElementById('txtemobile').value,
		document.getElementById('hiddenfatherid').value,document.getElementById('hiddenfatheraddress').value,
		document.getElementById('hiddenmotherid').value,document.getElementById('hiddenmotheraddress').value,document.getElementById('hiddeneid').value)"/>&nbsp<input type="reset" value="Undo"/></td></tr>
</table>
</form>