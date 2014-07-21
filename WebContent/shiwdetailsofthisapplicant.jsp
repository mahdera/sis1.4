<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String applicantId = Long.parseLong(request.getParameter("applicantId"));
	//out.print(applicantId);
	Applicant applicant = Applicant.getApplicant(applicantId);
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
							<%
								ChildTalent cT = ChildTalent.getChildTalentsForApplicant(applicantId);
							%>
							<tr>
								<td><%=(cT.isReading()== true ? "Yes" : "No") %></td>
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
									<td width="33%">7.1. First Name:<br/>
										<%
											long fatherId = ChildParent.getFatherIdOfThisApplicant(applicantId);
											Parent fParent = Parent.getParent(fatherId);
											out.print(fParent.getFirstName());
										%>
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
										<%=fParentAddress.getEmail() %>
									</td>
									<td>7.14. Home Tel:<br/><font color="red">* </font>									
										<%=fParentAddress.getHomeTelephone() %>
									</td>
									<td>7.15. Mobile:<br/>
										<%=fParentAddress.getMobileTelephone() %>
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
											out.print(mParent.getFirstName());
										%>
									</td>
									<td width="33%">8.2. Last Name:<br/>
										<%=mParent.getLastName() %>
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
									<td>8.14. Home Tel:<br/><font color="red">* </font>									
										<%=mParentAddress.getHomeTelephone() %>
									</td>
									<td>8.15. Mobile:<br/>
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
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td>9. Language spoken at Home:</td>
					<td>
						<%=applicant.getLanguageSpokenAtHome() %>
					</td>
				</tr>
				<tr>
					<td>9.1. Other language spoken:</td>
					<td>
						<%=applicant.getOtherLanguageSpoken() %>
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
					<td>10.5. Person responsible for paying fees:</td>
					<td><%=applicant.getPersonResponsibleForPayingFees() %></td>
				</tr>
				<tr>
					<td>10.6. Expected date of arrival/Admission:</td>
					<td>
						<%=applicant.getExpectedDateOfArrivalAdmission() %>
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
									%>																
								</tbody>
							</table>
						</fieldset>
					</td>
				</tr>	
</table>