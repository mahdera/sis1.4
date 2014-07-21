<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String applicantId = request.getParameter("applicantId");
	//out.print(applicantId);
	//JOptionPane.showMessageDialog(null, applicantId);
	Applicant applicant = Applicant.getApplicant(applicantId);
	//JOptionPane.showMessageDialog(null, applicant.getFirstName());
%>
<table border="0" width="100%" style="background:#ffffff">
	<tr>
					<td colspan="2">
						<fieldset>
							<legend>1. Basic Information</legend>
							<table border="1" width="100%">
								<tr>
									<td width="33%">1.1. Student's First Name:<br/>
										<%=applicant.getFirstName() %>
									</td>
									<td width="33%">1.2. Student's Middle Name:<br/>
										<%=applicant.getMiddleName() %>
									</td>
									<td width="33%">1.3. Students Last Name:<br/>
										<%=applicant.getLastName() %>
									</td>
								</tr>
								<tr>
									<td>1.4. Sex:<br/>									
										<%=applicant.getSex() %>
									</td>
									<td>1.5. Date of Birth:<br/>
										<%=applicant.getDateOfBirth1() %>										
									</td>
									<td>1.6. Passport Number:<br/>
										<%=applicant.getPassportNumber() %>
									</td>
								</tr>
								<tr>
									<td>1.7. Country of Issue:<br/>
										<%=applicant.getCountryOfIssue() %>
									</td>
									<td>1.8. Nationality:<br/>									
										<%=applicant.getNationality() %>										
									</td>
									<td>1.9. Religion:<br/>									
										<%=applicant.getReligion() %>
									</td>
								</tr>
								<tr>
									<td>1.10. Country of Birth:<br/>										
										<%=applicant.getCountryOfBirth() %>
									</td>
									<td>1.11. Class into which entry if requested:<br/>									
										<%=Level.getLevel(applicant.getLevelId()).getLevelName() %>
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
							
							<table border="1" width="100%" id="educationGrid">
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
										if(!prevSchoolList.isEmpty()){
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
								<%
								}else{
									%>
									<p class="msg info">This applicant has no previous school information saved in the database!</p>
									<%
								}
								%>
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
							<%  //JOptionPane.showMessageDialog(null, "111");
								ChildDifficulities cD = ChildDifficulities.getChildDifficulitiesForApplicant(applicantId);
								//JOptionPane.showMessageDialog(null, cD.isReading());
								//JOptionPane.showMessageDialog(null, "..."+cD.isReading());
							%>
							<tr>
								<td><%=(cD.isReading()== true ? "Yes" : "No") %></td>
								<td><%=(cD.isMathematics() == true ? "Yes" : "No") %></td>
								<td><%=(cD.isLanguage() == true ? "Yes" : "No") %></td>
								<td><%=(cD.isBehavioral() == true ? "Yes" : "No") %></td>
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
							<%  //JOptionPane.showMessageDialog(null, applicantId);
								ChildTalent cT = ChildTalent.getChildTalentsForApplicant(applicantId);
								//JOptionPane.showMessageDialog(null, cT.isReading());
							%>
							<tr>
								<td><%=(cT.isReading()== true ? "Yes" : "No")%></td>
								<td><%=(cT.isMathematics() == true ? "Yes" : "No") %></td>
								<td><%=(cT.isLanguage() == true ? "Yes" : "No") %></td>								
							</tr>
						</table>	
					</td>
				</tr>
				<tr>
					<td>6. Others (Specify):</td>
					<td><%=applicant.getOther() %></td>
				</tr>
				<tr>
					<td>Any disability, medication which is likely to affect normal school activity:</td>
					<td><%=applicant.getDisabilityMedication() %></td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>7. Father's Information</legend>
							<table border="1" width="100%">
								<tr>
									<%//first name td was here%>
										<%
										//JOptionPane.showMessageDialog(null, "1");
											long fatherId = ChildParent.getFatherIdOfThisApplicant(applicantId);
											//JOptionPane.showMessageDialog(null, fatherId);
											if(fatherId!=-1){
												//JOptionPane.showMessageDialog(null, fatherId);
											Parent fParent = Parent.getParent(fatherId);
											//out.print(fParent.getFirstName());
										%>
									<td width="33%">7.1. First Name:<br/>
									<% out.print(fParent.getFirstName()); %>	
									</td>
									<td width="33%">7.2. Last Name:<br/>
										<%=fParent.getLastName() %>
									</td>
									<td width="33%"><br/>										
									</td>
								</tr>
								<tr>
									<td>7.4. Passport Number:<br/>
										<%=fParent.getPassportNumber() %>
									</td>
									<td>
										7.5. Country of Issue:<br/>
										<%=fParent.getCountryOfIssue() %>
									</td>
									<td>7.6. Religion:<br/>									
										<%=fParent.getReligion() %>
									</td>
								</tr>
								<tr>
									<td>7.7. Occupation:<br/>
										<%=fParent.getOccupation() %>
									</td>
									<td>7.8. Place of Work:<br/>									
										<%=fParent.getPlaceOfWork() %>										
									</td>
									<td>
										7.9. Name of Org.<br/>
										<%=fParent.getNameOfOrganization() %>
									</td>
								</tr>
								<tr>
									<td>7.10. Office Tel:<br/>
										<%
											//JOptionPane.showMessageDialog(null, fParent.getId());
											ParentAddress fParentAddress = ParentAddress.getParentAddressForParent(fParent.getId());
											out.print(fParentAddress.getOfficeTelephone());
										%>
									</td>
									<td>7.11. Fax:<br/>									
										<%=fParentAddress.getFax() %>										
									</td>
									<td>
										7.12. P.O.Box No.<br/>
										<%=fParentAddress.getOfficePobox() %>
									</td>
								</tr>
								<tr>
									<td>7.13. Email:<br/>
										<%=fParentAddress.getEmail()==null ? " ":fParentAddress.getEmail() %>
									</td>
									<td>7.14. Home Tel:<br/>									
										<%=fParentAddress.getHomeTelephone()==null ? " ":fParentAddress.getHomeTelephone() %>
									</td>
									<td>7.15. Mobile:<br/><font color="red">* </font>
										<%=fParentAddress.getMobileTelephone()==null ? " ":fParentAddress.getMobileTelephone() %>
									</td>
								</tr>	
								<tr>
									<td>7.16. Home Pobox:<br/>
										<%=fParentAddress.getHomePobox() %>
									</td>
									<td>
										7.17. Is Staff:<br/>
										<%=fParent.isStaff() %>
									</td>
									<td></td>
								</tr>
								<%}else{ %>
								<p class="msg info">This applicant has no father information saved in the database!</p>
								<%} %>															
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
									<%// first name td was here %>
										<%
											long motherId = ChildParent.getMotherIdOfThisApplicant(applicantId);
										//JOptionPane.showMessageDialog(null, motherId);
											if(motherId!=-1){
											Parent mParent = Parent.getParent(motherId);
											//if(mParent != null)
												//out.print(mParent.getFirstName());
										%>
									<td width="33%">8.1. First Name:<br/>
									<% if(mParent != null)
									   out.print(mParent.getFirstName());%>	
									</td>
									<td width="33%">8.2. Last Name:<br/>
										<%
										   if(mParent != null)
											  out.print(mParent.getLastName()); 
										%>
									</td>
									<td width="33%"><br/>
										
									</td>
								</tr>
								<tr>
									<td>8.4. Passport Number:<br/>
										<%=mParent.getPassportNumber() %>
									</td>
									<td>
										8.5. Country of Issue:<br/>
										<%=mParent.getCountryOfIssue() %>
									</td>
									<td>8.6. Religion:<br/>									
									<%=mParent.getReligion() %>
									</td>
								</tr>
								<tr>
									<td>8.7. Occupation:<br/>
										<%=mParent.getOccupation() %>
									</td>
									<td>8.8. Place of Work:<br/>									
										<%=mParent.getPlaceOfWork() %>										
									</td>
									<td>
										8.9. Name of Org.<br/>
										<%=mParent.getNameOfOrganization() %>
									</td>
								</tr>
								<tr>
									<td>8.10. Office Tel:<br/>
										<%
											ParentAddress mParentAddress = ParentAddress.getParentAddressForParent(mParent.getId());
											out.print(mParentAddress.getOfficeTelephone());
										%>
									</td>
									<td>8.11. Fax:<br/>									
										<%=mParentAddress.getFax() %>										
									</td>
									<td>
										8.12. P.O.Box No.<br/>
										<%=mParentAddress.getOfficePobox() %>
									</td>
								</tr>
								<tr>
									<td>8.13. Email:<br/>
										<%=mParentAddress.getEmail() %>
									</td>
									<td>8.14. Home Tel:<br/>								
										<%=mParentAddress.getHomeTelephone() %>
									</td>
									<td>8.15. Mobile:<br/><font color="red">* </font>	
										<%=mParentAddress.getMobileTelephone() %>
									</td>
								</tr>	
								<tr>
									<td>8.16. Home Pobox:<br/>
										<%=mParentAddress.getHomePobox() %>
									</td>
									<td>
										8.17. Is Staff:<br/>
										<%=mParent.isStaff() %>
									</td>
									<td></td>
								</tr>	
								<%}else{ %>
								<p class="msg info">This applicant has no mother information saved in the database!</p>
								<%} %>														
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td>9. Language spoken at Home:</td>
					<td>
						<%=applicant.getLanguageSpokenAtHome()%>
					</td>
				</tr>
				<tr>
					<td>9.1. Other language spoken:</td>
					<td>
						<%=applicant.getOtherLanguageSpoken()%>
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
										<%=eContact.getFullName() %>
									</td>
									<td width="33%">10.2. Relationship:<br/>
										<%=eContact.getRelationship() %>
									</td>
									<td width="33%">10.3. Office Tel:<br/>
										<%=eContact.getOfficeTelephone() %>
									</td>
								</tr>
								<tr>
									<td>10.4. Home Tel:<br/>
										<%=eContact.getHomeTelephone() %>
									</td>
									<td>
										10.5. Mobile:<br/>
										<%=eContact.getMobileTelephone() %>
									</td>
									<td>
									</td>
								</tr>																							
							</table>
						</fieldset>
					</td>
				</tr>				
				<tr>
					<td>10.6. Person responsible for paying fees:</td>
					<td><%=applicant.getPersonResponsibleForPayingFees() %></td>
				</tr>
				<tr>
					<td>10.7. Expected date of arrival/Admission:</td>
					<td>
						<%=applicant.getExpectedDateOfArrivalAdmission1() %>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>11. List of Sisters and Brothers Currently Attending Sandford International School</legend>
							
							<table border="1" width="100%" id="siblingGrid">
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
										if(!siblingList.isEmpty()){
											Iterator<SiblingAttendingCurrently> siblingItr = siblingList.iterator();
											siblingList = null;
											int ctr = 1;
											while(siblingItr.hasNext()){
												SiblingAttendingCurrently s = siblingItr.next();
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
												<%=s.getFirstName() %>
											</td>
											<td>
												<%=s.getMiddleName() %>
											</td>	
											<td>
												<%=s.getLastName() %>
											</td>
											<td>
												<%=s.getRelationship() %>
											</td>																			
										</tr>
										<%
											ctr++;
											}//end while loop
										}else{
											%>
											<p class="msg info">This applicant has no information about siblings currently attending in the school!</p>
											<%
										}
									%>																
								</tbody>
							</table>
						</fieldset>
					</td>
				</tr>	
				<tr>
					<td colspan="2">
						<fieldset>
							<legend>12. For Office Use Only</legend>
							<table border="0" width="100%">
								<tr style="background:#eeeeee">
									<th>Level Requested</th>
									<th>Admission Age Rule</th>
									<th>Applicant Age</th>									
									<th>Age Legitimate for Level Requested</th>
									<th>Space Available in Level Requested</th>
									<th>Applicant Status</th>
								</tr>
								<%	//JOptionPane.showMessageDialog(null, "");
									float applicantAge = Applicant.getApplicantAge(applicantId);
									AdmissionAgeRule ageRule = AdmissionAgeRule.getAdmissionAgeRuleForThisLevel(applicant.getLevelId());
									//now get the space available in school for the requested level...
									int howManySections = Section.getNumberOfSectionsForLevel(applicant.getLevelId());
									int classSizeOfSection = Section.getClassSizeOfSectionLevel(applicant.getLevelId());
									int totalSizeOfAllSections = howManySections * classSizeOfSection;
									//now count how many students exist/admitted to 
									int numberOfStudentsInThisLevelCurrently = StudentLevel.getNumberOfStudentsInThisLevel(applicant.getLevelId());
									int totalSpaceAvailable = totalSizeOfAllSections - numberOfStudentsInThisLevelCurrently;
									
								%>
								<tr>
									<td><input type="text" disabled = "disabled" id="txtleveladmission"value="<%=Level.getLevel(applicant.getLevelId()).getLevelName() %>"/><br/><br/>Change Level<br/>
										<input type="hidden" id="hiddenleveladmission" value="<%=applicant.getLevelId()%>"/>
										<select name="slctlevel" id="slctlevel" style="width:100%" onchange="changeLevelForThisAdmissionProcess(this.value);">
											<option value="" selected="selected">--Select--</option>
											<%
												List<Level> levels = Level.getAllLevels();
												Iterator<Level> levItr = levels.iterator();
												while(levItr.hasNext()){
													Level l = levItr.next();
													%>
													<option value="<%=l.getId() %>"><%=l.getLevelName() %></option>
													<%
												}
											%>
										</select>
									</td>
									<td><%=ageRule.getLowerBoundary() %> & <%=ageRule.getUpperBoundary() %></td>
									<td><%=applicantAge %></td>
									<td><%
										String ans = (ageRule.getLowerBoundary()<= applicantAge && ageRule.getUpperBoundary() > applicantAge)? "Yes" : "No";
										if(ans.equals("Yes"))
											out.print("<font color='green'><strong>"+ans+"</strong></font>");
										else
											out.print("<font color='red'><strong>"+ans+"</strong></font>");
										%>
									</td>
									<td><%=totalSpaceAvailable %></td>
									<td><%=applicant.getApplicantType() %></td>
								</tr>
							</table>
							<table border="1" width="100%">
								<tr style="background:#eeeeee">
									<td colspan="3">
										Take Action
									</td>
								</tr>
								<tr>
									<td>
										<input type="button" value="Admit Student" onclick="showAllSectionsOfThisLevelAndSpaceAvailableInEachSection(document.getElementById('hiddenleveladmission').value,'<%=applicant.getId() %>');"/>
									</td>
									<td>
										<input type="button" value="Put to Waiting List" onclick="putThisApplicantToWaitingList('<%=applicant.getId()%>','<%=applicant.getDateAdmissionRequested1()%>',document.getElementById('txtleveladmission').value)"/>
									</td>
									<td>
										<input type="button" value="Reject Application" onclick="rejectThisApplicant('<%=applicant.getId()%>')"/>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<div id="showSectionDetailsDiv"></div>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>	
</table>