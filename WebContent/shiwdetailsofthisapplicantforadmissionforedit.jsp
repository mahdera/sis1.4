<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String applicantId = String.valueOf(request.getParameter("applicantId"));
	//out.print(applicantId);
	Applicant applicant = Applicant.getApplicant(applicantId);
	
%>
<form >
<table border="0" width="100%" style="background:#ffffff">
	<tr>
					<td colspan="2">
						<fieldset>
							<legend>1. Basic Information</legend>
							<table border="1" width="100%">
								<tr>
									<td width="33%">1.1. Student's First Name:<br/>
										<input type="text" id="txtstudentfirstname" name="txtstudentfirstname" value="<%=applicant.getFirstName() %>"/>
									</td>
									<td width="33%">1.2. Student's Middle Name:<br/>
										<input type="text" id="txtstudentmiddlename" name="txtstudentmiddlename" value="<%=applicant.getMiddleName() %>"|/>
									</td>
									<td width="33%">1.3. Students Last Name:<br/>
										<input type="text" id="txtstudentlastname" name="txtstudentlastname" value="<%=applicant.getLastName() %>"/>
									</td>
								</tr>
								<tr>
									<td>1.4. Sex:<br/>									
										<input type="text" id="txtsex" name="txtsex" value="<%=applicant.getSex() %>"/>
									</td>
									<td>1.5. Date of Birth:<br/>
										<input type="text" id="txtdateofbirth" name="txtdateofbirth" value="<%=applicant.getDateOfBirth1() %>"/>										
									</td>
									<td>1.6. Passport Number:<br/>
										<input type="text" id="txtpassportnumber" name="txtpassportnumber" value="<%=applicant.getPassportNumber() %>"/>
									</td>
								</tr>
								<tr>
									<td>1.7. Country of Issue:<br/>
										<input type="text" id="txtcountryofissue" name="txtcountryofissue" value="<%=applicant.getCountryOfIssue() %>"/>
									</td>
									<td>1.8. Nationality:<br/>									
										<input type="text" id="txtnationality" name="nationality" value="<%=applicant.getNationality() %>"/>										
									</td>
									<td>1.9. Religion:<br/>									
										<input type="text" id="txtreligion" name="txtreligion" value="<%=applicant.getReligion() %>"/>
									</td>
								</tr>
								<tr>
									<td>1.10. Country of Birth:<br/>										
										<input type="text" id="txtcountryofbirth" name="txtcountryofbirth" value="<%=applicant.getCountryOfBirth() %>"/>
									</td>
									<td>1.11. Class into which entry if requested:<br/>									
										<input type="text" id="txtentryrequested" name="txtentryrequested" value="<%=Level.getLevel(applicant.getLevelId()).getLevelName() %>"/>
									</td>
									<td><br/>
										
									</td>
								</tr>																
							</table>
						</fieldset>
					</td>
				</tr>				
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>2. Previous Schools Attended</legend>
							<table border="1" width="100%" id="educationGrid" name="detail" >
								<thead>								
								<tr>								
									<th style="background:#eeeeee;color:black;">Name of School</th>
									<th style="background:#eeeeee;color:black;">Type of School</th>
									<th style="background:#eeeeee;color:black;">Years</th>
									<th style="background:#eeeeee;color:black;">Classes</th>
									<th style="background:#eeeeee;color:black;">Language Used</th>									
								</tr>
								</thead>
								<tbody>
									<%
										List<PreviousSchoolsAttended> prevSchoolList = PreviousSchoolsAttended.getAllPreviousSchoolsAttendedForApplicant(applicantId);
										Iterator<PreviousSchoolsAttended> prevSchoolItr = prevSchoolList.iterator();
										prevSchoolList = null;
										while(prevSchoolItr.hasNext()){
											PreviousSchoolsAttended p = prevSchoolItr.next();
									%>
									<tr>								
										<td width="50%">
											<%=p.getNameOfSchool() %>
										</td>
										<td>
											<%=p.getTypeOfSchool() %>
										</td>	
										<td>
											<%=p.getYears() %>
										</td>
										<td>
											<%=p.getClasses() %>
										</td>
										<td>
											<%=p.getLanguageUsed() %>
										</td>									
									</tr>	
									<%
										}//end while loop
									%>															
								</tbody>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td>4. Any areas in which your child has difficulties in the past:</td>
					<td>
						<table border="0" width="100%">
							<tr style="background:#eeeeee">
								<td>Reading</td>
								<td>Mathematics</td>
								<td>Language</td>
								<td>Behavioral</td>
							</tr>
							<%
								ChildDifficulities cD = ChildDifficulities.getChildDifficulitiesForApplicant(applicantId);
								
							%>
							<tr>
								<td><input type="text" id="txtreading" name="txtreading" value="<%=(cD.isReading()== true ? "Yes" : "No") %>"/>
								<input type="hidden" id="hiddenchilddifficulties" value="<%=cD.getId()%>"/>	
								</td>
								<td><input type="text" id="txtmathematics" name="txtmathematics" value="<%=(cD.isMathematics() == true ? "Yes" : "No") %>"/></td>
								<td><input type="text" id="txtlanguage" name="txtlanguage" value="<%=(cD.isLanguage() == true ? "Yes" : "No") %>"/></td>
								<td><input type="text" id="txtbehavioral" name="txtbehavioral" value="<%=(cD.isBehavioral() == true ? "Yes" : "No") %>"/></td>
							</tr>
						</table>						 
					</td>
				</tr>
				<tr>
					<td>5. Any areas in which your child is gifted/talented</td>
					<td>
						<table border="0" width="100%">
							<tr style="background:#eeeeee">
								<td>Reading</td>
								<td>Mathematics</td>
								<td>Language</td>				
							</tr>
							<%
								ChildTalent cT = ChildTalent.getChildTalentsForApplicant(applicantId);
							%>
							<tr>
								<td><input type="text"  id="txtcreading" name="txtcreading" value='<%=(cT.isReading()== true ? "Yes" : "No") %>'/>
								<input type="hidden" id="hiddenchildtalent" value="<%=cT.getId()%>"/>
								</td>
								<td><input type="text" id="txtcmathematics" name="txtcmathematics" value='<%=(cT.isMathematics() == true ? "Yes" : "No") %>'/></td>
								<td><input type="text" id="txtclanguage" name="txtclanguage" value='<%=(cT.isLanguage() == true ? "Yes" : "No") %>'/></td>								
							</tr>
						</table>	
					</td>
				</tr>
				<tr>
					<td>6. Others (Specify):</td>
					<td><input type="text" id="txtothers" name="txtothers" value="<%=applicant.getOther() %>"/></td>
				</tr>
				<tr>
					<td>Any disability, medication which is likely to affect normal school activity:</td>
					<td><input type="text" id="txtdidablitymedication" name="disablitymedication" value="<%=applicant.getDisabilityMedication() %>"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>7. Father's Information</legend>
							<table border="1" width="100%">
								<tr>
									<td width="33%">7.1. First Name:<br/>
										<%
											long fatherId = ChildParent.getFatherIdOfThisApplicant(applicantId);
											Parent fParent = Parent.getParent(fatherId);
											//out.print(fParent.getFirstName());
										%>
										<input type="text" id="txtfatherfirstname" name="txtfatherfirtsname" value="<%=fParent.getFirstName() %>"/>
										<input type="hidden" id="hiddenfatherid" value="<%=fatherId%>">
									</td>
									<td width="33%">7.2. Last Name:<br/>
										<input type="text" id="txtfatherlastname" name="txtfatherlastname" value="<%=fParent.getLastName() %>"/>
									</td>
									<td width="33%"><br/>										
									</td>
								</tr>
								<tr>
									<td>7.4. Passport Number:<br/>
										<input type="text" id="txtfatherpassportnumber" name="txtfatherpassportnumber" value="<%=fParent.getPassportNumber() %>"/>
									</td>
									<td>
										7.5. Country of Issue:<br/>
										<input type="text" id="txtfathercountryofissue" name="txtfathercountryofissue" value="<%=fParent.getCountryOfIssue() %>"/>
									</td>
									<td>7.6. Religion:<br/>									
										<input type="text" id="txtfatherreligion" name="txtfatherreligion" value="<%=fParent.getReligion() %>"/>
									</td>
								</tr>
								<tr>
									<td>7.7. Occupation:<br/>
										<input type="text" id="txtfatheroccupation" name="txtfatheroccupation" value="<%=fParent.getOccupation() %>"/>
									</td>
									<td>7.8. Place of Work:<br/>									
										<input type="text" id="txtfatherpalceofwork" name="txtfatherplaceofwork" value="<%=fParent.getPlaceOfWork() %>"/>										
									</td>
									<td>
										7.9. Name of Org.<br/>
										<input type="text" id="txtfathernameoforg" name="txtfathernameoforg" value="<%=fParent.getNameOfOrganization() %>"/>
									</td>
								</tr>
								<tr>
									<td>7.10. Office Tel:<br/>
										<%
											ParentAddress fParentAddress = ParentAddress.getParentAddressForParent(fParent.getId());
										%>
										<input type="text" id="txtfatherofficetel" name="txtfatherofficetel" value="<%= fParentAddress.getOfficeTelephone()%>"/>
										<input type="hidden" id="hiddenfatheraddress" value=<%= fParentAddress.getId() %>>
									</td>
									<td>7.11. Fax:<br/>									
										<input type="text" id="txtfatherfax" name="txtfatherfax" value="<%=fParentAddress.getFax() %>"/>										
									</td>
									<td>
										7.12. P.O.Box No.<br/>
										<input type="text" id="txtfatherpobox" name="txtfatherpobox" value="<%=fParentAddress.getOfficePobox() %>"/>
									</td>
								</tr>
								<tr>
									<td>7.13. Email:<br/>
										<input type="text" id="txtfatheremail" name="txtfatheremail" value="<%=fParentAddress.getEmail() %>"/>
									</td>
									<td>7.14. Home Tel:<br/><font color="red">* </font>									
										<input type="text" id="txtfatherhometel" name="txtfatherhometel" value="<%=fParentAddress.getHomeTelephone() %>"/>
									</td>
									<td>7.15. Mobile:<br/>
										<input type="txet" id="txtfathermobile" name="txtfathermobile" value="<%=fParentAddress.getMobileTelephone() %>"/>
										<input type="txet" id="txtfathermobile2" name="txtfathermobile2" value="<%=fParentAddress.getMobileTelephone2() %>"/>
									</td>
								</tr>	
								<tr>
									<td>7.16. Home Pobox:<br/>
										<input type="text" id="txtfatherhomepobox" name="txtfatherhomepobox" value="<%=fParentAddress.getHomePobox() %>"/>
									</td>
									<td>
										7.17. Is Staff:<br/>
										<input type="text" id="txtisstaff" name="txtisstaff" value='<%=(fParent.isStaff()==true?"Yes":"No") %>'/>
									</td>
									<td></td>
								</tr>															
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>8. Mother's Information</legend>
							<table border="1" width="100%">
								<tr>
									<td width="33%">8.1. First Name:<br/>
										<%
											long motherId = ChildParent.getMotherIdOfThisApplicant(applicantId);
											Parent mParent = Parent.getParent(motherId);
										%>
										<input type="text" id="txtmotherfirstname" name="txtmotherfirstname" value="<%=mParent.getFirstName()%>"/>
										<input type="hidden" id="hiddenmotherid" value="<%=motherId %>"/>
									</td>
									<td width="33%">8.2. Last Name:<br/>
										<input type="text" id="txtmotherlastname" name="txtmotherlastname" value="<%=mParent.getLastName() %>"/>
									</td>
									<td width="33%"><br/>
										
									</td>
								</tr>
								<tr>
									<td>8.4. Passport Number:<br/>
										<input type="text" id="txtmotherpassportnumber" name="txtmotherpassportnumber" value="<%=mParent.getPassportNumber() %>"/>
									</td>
									<td>
										8.5. Country of Issue:<br/>
										<input type="text" id="txtmothercountryofissue" name="txtmothercountrofissue" value="<%=mParent.getCountryOfIssue() %>"/>
									</td>
									<td>8.6. Religion:<br/>									
									<input type="text" id="txtmotherreligion" name="txtmotherreligion" value="<%=mParent.getReligion() %>"/>
									</td>
								</tr>
								<tr>
									<td>8.7. Occupation:<br/>
										<input tpe="text" id="txtmotheroccupation" name="txtmotheroccupation" value="<%=mParent.getOccupation() %>"/>
									</td>
									<td>8.8. Place of Work:<br/>									
										<input type="text" id="txtmotherplaceofwork" name="txtmotherplaceofwork" value="<%=mParent.getPlaceOfWork() %>"/>										
									</td>
									<td>
										8.9. Name of Org.<br/>
										<inpuut type="text" id="txtmothernameoforg" name="txtmothernameoforg" value="<%=mParent.getNameOfOrganization() %>"/>
									</td>
								</tr>
								<tr>
									<td>8.10. Office Tel:<br/>
										<%
											ParentAddress mParentAddress = ParentAddress.getParentAddressForParent(mParent.getId());
										%>
										<input type="text" id="txtmotherofficetel" name="txtmotherofficetel" value="<%=mParentAddress.getOfficeTelephone() %>"/>
										<input type="hidden" id="hiddenmotheraddress" value="<%=mParentAddress.getId()%>"/>
									</td>
									<td>8.11. Fax:<br/>									
										<input type="text" id="txtmotherfax" name="txtmotherfax" value="<%=mParentAddress.getFax() %>"/>										
									</td>
									<td>
										8.12. P.O.Box No.<br/>
										<input type="text" id="txtmotherpobox" name="txtmotherpobox" value="<%=mParentAddress.getOfficePobox() %>"/>
									</td>
								</tr>
								<tr>
									<td>8.13. Email:<br/>
										<input type="text" id="txtmotheremail" name="txtmotheremail" value="<%=mParentAddress.getEmail() %>"/>
									</td>
									<td>8.14. Home Tel:<br/><font color="red">* </font>									
										<input type="text" id="txtmotherhometel" name="txtmotherhometel" value="<%=mParentAddress.getHomeTelephone() %>"/>
									</td>
									<td>8.15. Mobile:<br/>
										<input type="text" id="txtmothermobile" name="txtmothermobile" value="<%=mParentAddress.getMobileTelephone() %>"/>
										<input type="text" id="txtmothermobile2" name="txtmothermobile2" value="<%=mParentAddress.getMobileTelephone2() %>"/>
									</td>
								</tr>	
								<tr>
									<td>8.16. Home Pobox:<br/>
										<input type="text" id="txtmotherhomepobox" name="txtmotherhomepobox" value="<%=mParentAddress.getHomePobox() %>"/>
									</td>
									<td>
										8.17. Is Staff:<br/>
										<input type="text" id="txtmotherisstaff" name="txtmotherisstaff" value='<%=(mParent.isStaff()==true?"yes":"No") %>'/>
									</td>
									<td></td>
								</tr>															
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td>9. Language spoken at Home:</td>
					<td>
						<input type="text" id="txtlanguagespokenathome" name="txtlanguagespokenathome" value="<%=applicant.getLanguageSpokenAtHome() %>"/>
					</td>
				</tr>
				<tr>
					<td>9.1. Other language spoken:</td>
					<td>
						<input type="text" id="txtotherlanguagespoken" name="txtotherlanguagespoken" value="<%=applicant.getOtherLanguageSpoken() %>"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>10. Emergency Contact Information</legend>
							<table border="1" width="100%">
								<%
									EmergencyContact eContact = EmergencyContact.getEmergencyContactForApplicant(applicantId);
								%>
								<tr>
									<td width="33%">10.1. Full Name:<br/>
										<input type="text" id="txtefullname" name="txtefullname" value="<%=eContact.getFullName() %>"/>
										<input type="hidden" id="hiddeneid" value="<%=eContact.getId() %>"/>
									</td>
									<td width="33%">10.2. Relationship:<br/>
										<input type="text" id="txterelationship" name="txterelationship" value="<%=eContact.getRelationship() %>"/>
									</td>
									<td width="33%">10.3. Office Tel:<br/>
										<input type="text" id="txteofficetel" name="txteofficetel" value="<%=eContact.getOfficeTelephone() %>"/>
									</td>
								</tr>
								<tr>
									<td>10.4. Home Tel:<br/>
										<input type="text" id="txtehometel" name="txtehometel" value="<%=eContact.getHomeTelephone() %>"/>
									</td>
									<td>
										10.5. Mobile:<br/>
										<input type="text" id="txtemobile" name="txtemobile" value="<%=eContact.getMobileTelephone() %>"/>
									</td>
									<td>
									</td>
								</tr>																							
							</table>
						</fieldset>
					</td>
				</tr>				
				<tr>
					<td>10.5. Person responsible for paying fees:</td>
					<td><input type="text" id="txtpersonresponsibleforpayingfee" name="txtpersonresponsibleforpayingfee" value="<%=applicant.getPersonResponsibleForPayingFees() %>"/></td>
				</tr>
				<tr>
					<td>10.6. Expected date of arrival/Admission:</td>
					<td>					
						<input type="text" id="txtexpecteddateofarrival" name="txtexpecteddateofarrival" value="<%=applicant.getExpectedDateOfArrivalAdmission1() %>"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>11. List of Sisters and Brothers Currently Attending Sandford International School</legend>
							<div align="right">
								<a href="#.jsp" onclick="insertNewSiblingsGridRow(document.getElementById('siblingCoun'));">
									[Add Sibling]
								</a>
								 | 
								<a href="#.jsp" onclick="removeTableRow(document.getElementById('siblingCoun'));">
									[Remove Sibling]
								</a>
							</div>
							<table border="1" width="100%" id="siblingCoun">
								<thead>								
								<tr>								
									<th style="background:#eeeeee;color:black;">First Name</th>
									<th style="background:#eeeeee;color:black;">Middle Name</th>
									<th style="background:#eeeeee;color:black;">Last Name</th>
									<th style="background:#eeeeee;color:black;">Relation</th>																											
								</tr>
								</thead>								
								<tbody>
									<%
									  
										List<SiblingAttendingCurrently> siblingList = SiblingAttendingCurrently.getAllSiblingsAttendingCurrentlyForApplicant(applicantId);
										Iterator<SiblingAttendingCurrently> siblingItr = siblingList.iterator();
										siblingList = null;
										int ctr = 1;
										int num = 0;
										while(siblingItr.hasNext()){
											SiblingAttendingCurrently s = siblingItr.next();
											if(!s.getApplicantId().equalsIgnoreCase("")){
										num++;
										if(ctr % 2 ==0){
									%>
									<tr class="bg">
									<%
										}else{
									%>			
									<tr>
									<%
										}
									%>					
										<td>
											<input type="text" id="txtsiblingfirstname<%=num %>"  value="<%=s.getFirstName() %>"/>											
										</td>
										<td>
											<input type="text" id="txtsiblingmiddlename<%=num %>"  value="<%=s.getMiddleName() %>"/>											
										</td>	
										<td>
											<input type="text" id="txtsiblinglastname<%=num %>" value="<%=s.getLastName() %>"/>											
										</td>
										<td>
											<select id="slctsiblingrelation<%=num %>"  value="<%=s.getRelationship() %>" >
								              <option value="<%=s.getRelationship()%>" selected="<%=s.getRelationship()%>"><%=s.getRelationship()%></option>
								              <option value='Brother'>Brother</option>
								              <option value='Sister'>Sister</option>
								            </select>											
										</td>																			
									</tr>
									<%
										ctr++;
											}//end of if
										}//end while loop
									%>																
								</tbody>
							</table>
						</fieldset>
					</td>
				</tr>	
			
	<tr><td colspan="2" align="center"><input type="button" value="Update" onclick="updateThisStudentAdmission('<%=applicant.getId()%>',
		document.getElementById('txtstudentfirstname').value,document.getElementById('txtstudentmiddlename').value,
		document.getElementById('txtstudentlastname').value,document.getElementById('txtsex').value,document.getElementById('txtdateofbirth').value,
		document.getElementById('txtpassportnumber').value,document.getElementById('txtcountryofissue').value,document.getElementById('txtnationality').value,
		document.getElementById('txtreligion').value,document.getElementById('txtcountryofbirth').value,document.getElementById('txtentryrequested').value,
		document.getElementById('txtreading').value,document.getElementById('txtmathematics').value,document.getElementById('txtlanguage').value,
		document.getElementById('txtbehavioral').value,document.getElementById('txtcreading').value,document.getElementById('txtcmathematics').value,
		document.getElementById('txtclanguage').value,document.getElementById('txtothers').value,document.getElementById('txtdidablitymedication').value,
		document.getElementById('txtfatherfirstname').value,document.getElementById('txtfatherlastname').value,document.getElementById('txtfatherpassportnumber').value,
		document.getElementById('txtfathercountryofissue').value,document.getElementById('txtfatherreligion').value,document.getElementById('txtfatheroccupation').value,
		document.getElementById('txtfatherpalceofwork').value,document.getElementById('txtfathernameoforg').value,document.getElementById('txtfatherofficetel').value,
		document.getElementById('txtfatherfax').value,document.getElementById('txtfatherpobox').value,document.getElementById('txtfatheremail').value,
		document.getElementById('txtfatherhometel').value,document.getElementById('txtfathermobile').value,document.getElementById('txtfathermobile2').value,document.getElementById('txtfatherhomepobox').value,
		document.getElementById('txtisstaff').value,document.getElementById('txtmotherfirstname').value,document.getElementById('txtmotherlastname').value,
		document.getElementById('txtmotherpassportnumber').value,document.getElementById('txtmothercountryofissue').value,document.getElementById('txtmotherreligion').value,
		document.getElementById('txtmotheroccupation').value,document.getElementById('txtmotherplaceofwork').value,document.getElementById('txtmothernameoforg').value,
		document.getElementById('txtmotherofficetel').value,document.getElementById('txtmotherfax').value,document.getElementById('txtmotherpobox').value,
		document.getElementById('txtmotheremail').value,document.getElementById('txtmotherhometel').value,document.getElementById('txtmothermobile').value,document.getElementById('txtmothermobile2').value,
		document.getElementById('txtmotherhomepobox').value,document.getElementById('txtmotherisstaff').value,document.getElementById('txtlanguagespokenathome').value,
		document.getElementById('txtotherlanguagespoken').value,document.getElementById('txtefullname').value,document.getElementById('txterelationship').value,
		document.getElementById('txteofficetel').value,document.getElementById('txtehometel').value,document.getElementById('txtemobile').value,
		document.getElementById('txtpersonresponsibleforpayingfee').value,document.getElementById('txtexpecteddateofarrival').value,document.getElementById('hiddenchilddifficulties').value,
		document.getElementById('hiddenchildtalent').value,document.getElementById('hiddenfatherid').value,document.getElementById('hiddenfatheraddress').value,
		document.getElementById('hiddenmotherid').value,document.getElementById('hiddenmotheraddress').value,document.getElementById('hiddeneid').value, document.getElementById('siblingCoun'));"/>&nbsp<input type="reset" value="Undo"/></td></tr>
</table>
</form>