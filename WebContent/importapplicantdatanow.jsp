<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%@page import="org.apache.commons.io.FilenameUtils"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="java.util.*" %>
<%@page import="jxl.*" %>

<%		
	int levelId = 0;
	String applicantType = null;	
	
	int totalRows = 0;
	String itemName = "No File";
	Applicant applicant = null;
	
	Cell applicantFirstNameCell = null;	
	Cell applicantMiddleNameCell = null;
	Cell applicantLastNameCell = null;
	Cell applicantDateOfBirthCell = null;
	Cell applicantSexCell = null;
	Cell applicantPassportCell = null;
	Cell applicantCountryCell = null;
	Cell applicantNationalityCell = null;
	Cell applicantReligionCell = null;
	Cell applicantCountryOfBirthCell = null;
	Cell applicantOtherCell = null;
	Cell applicantDisabilityMedicationCell = null;
	Cell applicantLanguageSpokenAtHomeCell = null;
	Cell applicantOtherLanguageSpokenCell = null;
	Cell applicantExpectedDateOfArrivalCell = null;
	Cell personResponsibleForPayingFeeCell = null;
	Cell difficulityReadingCell = null;
	Cell difficulityMathmaticsCell = null;
	Cell difficulityLanguageCell = null;
	Cell difficulityBehavioralCell = null;
	Cell talentReadingCell = null;
	Cell talentMathmaticsCell = null;
	Cell talentLanguageCell = null;
	Cell fatherFirstNameCell = null;
	Cell fatherMiddleNameCell = null;
	Cell fatherLastNameCell = null;
	Cell fatherPassportNumberCell = null;
	Cell fatherCountryOfIssueCell = null;
	Cell fatherReligionCell = null;
	Cell fatherOccupationCell = null;
	Cell fatherPlaceOfWorkCell = null;
	Cell fatherNameOfOrganizationCell = null;
	Cell fatherIsStaffCell = null;
	Cell motherFirstNameCell = null;
	Cell motherMiddleNameCell = null;
	Cell motherLastNameCell = null;
	Cell motherPassportNumberCell = null;
	Cell motherCountryOfIssueCell = null;
	Cell motherReligionCell = null;
	Cell motherOccupationCell = null;
	Cell motherPlaceOfWorkCell = null;
	Cell motherNameOrganizationCell = null;
	Cell motherIsStaffCell = null;
	Cell fatherOfficeTelephoneCell = null;
	Cell fatherFaxCell = null;
	Cell fatherOfficePoboxCell = null;
	Cell fatherEmailCell = null;
	Cell fatherHomeTelephoneCell = null;
	Cell fatherMobileTelephoneCell = null;
	Cell fatherHomePoboxCell = null;
	Cell motherOfficeTelephoneCell = null;
	Cell motherFaxCell = null;
	Cell motherOfficePoboxCell = null;
	Cell motherEmailCell = null;
	Cell motherHomeTelephoneCell = null;
	Cell motherMobileTelephoneCell = null;
	Cell motherHomePoboxCell = null;
	Cell emergencyFullNameCell = null;
	Cell emergencyRelationshipCell = null;
	Cell emergencyOfficeTelephoneCell = null;
	Cell emergencyHomeTelephoneCell = null;
	Cell emergencyMobileTelephoneCell = null;
		 
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    
	if (!isMultipart){
		out.print("Form is not multipart!");
		
	} else {
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		List items = null;
		
		try {
			items = upload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		Iterator itr = items.iterator();
		int ctr = 1;
		while (itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			if (item.isFormField()) {
				String name = item.getFieldName();
				if(name.equals("slctlevel")){
					levelId = Integer.parseInt(item.getString());
				}
				if(name.equals("slctapplicanttype")){
					applicantType = item.getString();
				}
			}else{
				try {
					itemName = item.getName();
					
					File importFile = new File(config.getServletContext().getRealPath("/")
							+ "/import_data/" + itemName);
					item.write(importFile);
					
					//now the reading from the excel file begins...
					Workbook workbook = Workbook.getWorkbook(importFile);
					Sheet sheet = workbook.getSheet(0);
					
					totalRows = sheet.getRows();
					String value="";
					request.setCharacterEncoding("UTF-8");
					
					//now start accessing the cells
					for(int i=0;i<totalRows;i++){
						applicantFirstNameCell = sheet.getCell(0,i);
						applicantMiddleNameCell = sheet.getCell(1,i);
						applicantLastNameCell = sheet.getCell(2,i);
						applicantDateOfBirthCell = sheet.getCell(3,i);
						applicantSexCell = sheet.getCell(4,i);
						applicantPassportCell = sheet.getCell(5,i);
						applicantCountryCell = sheet.getCell(6,i);
						applicantNationalityCell = sheet.getCell(7,i);
						applicantReligionCell = sheet.getCell(8,i);
						applicantCountryOfBirthCell = sheet.getCell(9,i);
						applicantOtherCell = sheet.getCell(10,i);
						applicantDisabilityMedicationCell = sheet.getCell(11,i);
						applicantLanguageSpokenAtHomeCell = sheet.getCell(12,i);
						applicantOtherLanguageSpokenCell = sheet.getCell(13,i);
						applicantExpectedDateOfArrivalCell = sheet.getCell(14,i);
						personResponsibleForPayingFeeCell = sheet.getCell(15,i);
						difficulityReadingCell = sheet.getCell(16,i);
						difficulityMathmaticsCell = sheet.getCell(17,i);
						difficulityLanguageCell = sheet.getCell(18,i);
						difficulityBehavioralCell = sheet.getCell(19,i);
						talentReadingCell = sheet.getCell(20,i);
						talentMathmaticsCell = sheet.getCell(21,i);
						talentLanguageCell = sheet.getCell(22,i);
						fatherFirstNameCell = sheet.getCell(23,i);
						fatherMiddleNameCell = sheet.getCell(24,i);
						fatherLastNameCell = sheet.getCell(25,i);
						fatherPassportNumberCell = sheet.getCell(26,i);
						fatherCountryOfIssueCell = sheet.getCell(27,i);
						fatherReligionCell = sheet.getCell(28,i);
						fatherOccupationCell = sheet.getCell(29,i);
						fatherPlaceOfWorkCell = sheet.getCell(30,i);
						fatherNameOfOrganizationCell = sheet.getCell(31,i);
						fatherIsStaffCell = sheet.getCell(32,i);						
						fatherOfficeTelephoneCell = sheet.getCell(33,i);
						fatherFaxCell = sheet.getCell(34,i);
						fatherOfficePoboxCell = sheet.getCell(35,i);
						fatherEmailCell = sheet.getCell(36,i);
						fatherHomeTelephoneCell = sheet.getCell(37,i);
						fatherMobileTelephoneCell = sheet.getCell(38,i);
						fatherHomePoboxCell = sheet.getCell(39,i);						
						motherFirstNameCell = sheet.getCell(40,i);
						motherMiddleNameCell = sheet.getCell(41,i);
						motherLastNameCell = sheet.getCell(42,i);
						motherPassportNumberCell = sheet.getCell(43,i);
						motherCountryOfIssueCell = sheet.getCell(44,i);
						motherReligionCell = sheet.getCell(45,i);
						motherOccupationCell = sheet.getCell(46,i);
						motherPlaceOfWorkCell = sheet.getCell(47,i);
						motherNameOrganizationCell = sheet.getCell(48,i);
						motherIsStaffCell = sheet.getCell(49,i);
						motherOfficeTelephoneCell = sheet.getCell(50,i);
						motherFaxCell = sheet.getCell(51,i);
						motherOfficePoboxCell = sheet.getCell(52,i);
						motherEmailCell = sheet.getCell(53,i);
						motherHomeTelephoneCell = sheet.getCell(54,i);
						motherMobileTelephoneCell = sheet.getCell(55,i);
						motherHomePoboxCell = sheet.getCell(56,i);
						emergencyFullNameCell = sheet.getCell(57,i);
						emergencyRelationshipCell = sheet.getCell(58,i);
						emergencyOfficeTelephoneCell = sheet.getCell(59,i);
						emergencyHomeTelephoneCell = sheet.getCell(60,i);
						emergencyMobileTelephoneCell = sheet.getCell(61,i);						
						
						String applicantFirstName = applicantFirstNameCell.getContents();
						String applicantMiddleName = applicantMiddleNameCell.getContents();
						String applicantLastName = applicantLastNameCell.getContents();
						Date applicantDateOfBirth = Date.valueOf(applicantDateOfBirthCell.getContents());
						String applicantSex = applicantSexCell.getContents();
						String applicantPassport = applicantPassportCell.getContents();
						String applicantCountry = applicantCountryCell.getContents();
						String applicantNationality = applicantNationalityCell.getContents();
						String applicantReligion = applicantReligionCell.getContents();
						String applicantCountryOfBirth = applicantCountryOfBirthCell.getContents();
						String applicantOther = applicantOtherCell.getContents();
						String applicantDisabilityMedication = applicantDisabilityMedicationCell.getContents();
						String applicantLanguageSpokenAtHome = applicantLanguageSpokenAtHomeCell.getContents();
						String applicantOtherLanguageSpoken = applicantOtherLanguageSpokenCell.getContents();
						Date applicantExpectedDateOfArrival = Date.valueOf(applicantExpectedDateOfArrivalCell.getContents());
						String personResponsibleForPayingFee = personResponsibleForPayingFeeCell.getContents();
						boolean difficulityReading = Boolean.parseBoolean(difficulityReadingCell.getContents());
						boolean difficulityMathmatics = Boolean.parseBoolean(difficulityMathmaticsCell.getContents());
						boolean difficulityLanguage = Boolean.parseBoolean(difficulityLanguageCell.getContents());
						boolean difficulityBehavioral = Boolean.parseBoolean(difficulityBehavioralCell.getContents());
						boolean talentReading = Boolean.parseBoolean(talentReadingCell.getContents());
						boolean talentMathmatics = Boolean.parseBoolean(talentMathmaticsCell.getContents());
						boolean talentLanguage = Boolean.parseBoolean(talentLanguageCell.getContents());
						String fatherFirstName = fatherFirstNameCell.getContents();
						String fatherMiddleName = fatherMiddleNameCell.getContents();
						String fatherLastName = fatherLastNameCell.getContents();
						String fatherPassportNumber = fatherPassportNumberCell.getContents();
						String fatherCountryOfIssue = fatherCountryOfIssueCell.getContents();
						String fatherReligion = fatherReligionCell.getContents();
						String fatherOccupation = fatherOccupationCell.getContents();
						String fatherPlaceOfWork = fatherPlaceOfWorkCell.getContents();
						String fatherNameOfOrganization = fatherNameOfOrganizationCell.getContents();
						boolean fatherIsStaff = Boolean.parseBoolean(fatherIsStaffCell.getContents());
						String motherFirstName = motherFirstNameCell.getContents();
						String motherMiddleName = motherMiddleNameCell.getContents();
						String motherLastName = motherLastNameCell.getContents();
						String motherPassportNumber = motherPassportNumberCell.getContents();
						String motherCountryOfIssue = motherCountryOfIssueCell.getContents();
						String motherReligion = motherReligionCell.getContents();
						String motherOccupation = motherOccupationCell.getContents();
						String motherPlaceOfWork = motherPlaceOfWorkCell.getContents();
						String motherNameOrganization = motherNameOrganizationCell.getContents();
						boolean motherIsStaff = Boolean.parseBoolean(motherIsStaffCell.getContents());
						String fatherOfficeTelephone = fatherOfficeTelephoneCell.getContents();
						String fatherFax = fatherFaxCell.getContents();
						String fatherOfficePobox = fatherOfficePoboxCell.getContents();
						String fatherEmail = fatherEmailCell.getContents();
						String fatherHomeTelephone = fatherHomeTelephoneCell.getContents();
						String fatherMobileTelephone = fatherMobileTelephoneCell.getContents();
						String fatherHomePobox = fatherHomePoboxCell.getContents();
						String motherOfficeTelephone = motherOfficeTelephoneCell.getContents();
						String motherFax = motherFaxCell.getContents();
						String motherOfficePobox = motherOfficePoboxCell.getContents();
						String motherEmail = motherEmailCell.getContents();
						String motherHomeTelephone = motherHomeTelephoneCell.getContents();
						String motherMobileTelephone = motherMobileTelephoneCell.getContents();
						String motherHomePobox = motherHomePoboxCell.getContents();
						String emergencyFullName = emergencyFullNameCell.getContents();
						String emergencyRelationship = emergencyRelationshipCell.getContents();
						String emergencyOfficeTelephone = emergencyOfficeTelephoneCell.getContents();
						String emergencyHomeTelephone = emergencyHomeTelephoneCell.getContents();
						String emergencyMobileTelephone = emergencyMobileTelephoneCell.getContents();					
						
																	
						if(applicantFirstName != null && applicantMiddleName != null && applicantLastName != null){
							applicant = new Applicant(applicantFirstName,
									applicantMiddleName, applicantLastName, applicantDateOfBirth, applicantSex,
									applicantPassport, applicantCountry, applicantNationality,
									applicantReligion, applicantCountryOfBirth, levelId, applicantOther,
									applicantDisabilityMedication, applicantLanguageSpokenAtHome,applicantOtherLanguageSpoken,
									applicantExpectedDateOfArrival, personResponsibleForPayingFee, applicantType, "Admission Request");
							applicant.addApplicant();
							
							Applicant fetchedApplicant = Applicant
							.getApplicantUsingPassportNumber(applicantFirstName,applicantMiddleName,applicantLastName);
							String applicantId = fetchedApplicant.getId();//get the applicant id
							ChildTalent childTalent = new ChildTalent(talentReading,talentMathmatics, talentLanguage, applicantId);
							childTalent.addChildTalent();
							ChildDifficulities childDifficulities = new ChildDifficulities(difficulityReading, difficulityMathmatics,
									difficulityLanguage, difficulityBehavioral,applicantId);
							childDifficulities.addChildDifficulities();
							
							if (!Parent.thisPassportNumberExistsAndFullName(fatherPassportNumber,fatherFirstName,fatherMiddleName,fatherLastName)) {
								Parent fParent = new Parent(fatherFirstName,fatherMiddleName, fatherLastName,
										fatherPassportNumber, fatherCountryOfIssue,
										fatherReligion, fatherOccupation, fatherPlaceOfWork,
										fatherNameOfOrganization, fatherIsStaff);
								fParent.addParent();
							}
							
							if (!Parent.thisPassportNumberExistsAndFullName(motherPassportNumber,motherFirstName,motherMiddleName,motherLastName)) {
								Parent mParent = new Parent(motherFirstName, motherMiddleName,motherLastName,
										motherPassportNumber, motherCountryOfIssue,
										motherReligion, motherOccupation, motherPlaceOfWork,
										motherNameOrganization, motherIsStaff);
								mParent.addParent();
							}
							
							Parent fetchedFatherParent = Parent
									.getThisParentUsingPassportNumberAndFullName(fatherPassportNumber,fatherFirstName,fatherMiddleName,fatherLastName);
							Parent fetchedMotherParent = Parent
									.getThisParentUsingPassportNumberAndFullName(motherPassportNumber,motherFirstName,motherMiddleName,motherLastName);
							//now save the parent addresses....below
							ParentAddress fatherParentAddress = new ParentAddress(
									fatherOfficeTelephone, fatherFax, fatherOfficePobox, fatherEmail,
									fatherHomeTelephone, fatherMobileTelephone, fatherHomePobox,
									fetchedFatherParent.getId());
							System.out.print("father id ="+fetchedFatherParent.getId());
							fatherParentAddress.addParentAddress();
							ParentAddress motherParentAddress = new ParentAddress(
									motherOfficeTelephone, motherFax, motherOfficePobox, motherEmail,
									motherHomeTelephone, motherMobileTelephone, motherHomePobox,
									fetchedMotherParent.getId());
							motherParentAddress.addParentAddress();
							
							ChildParent fatherChildParent = new ChildParent(
									fetchedFatherParent.getId(), fetchedApplicant.getId(),
									"Father");
							fatherChildParent.addChildParent();
							ChildParent motherChildParent = new ChildParent(
									fetchedMotherParent.getId(), fetchedApplicant.getId(),
									"Mother");
							motherChildParent.addChildParent();
							//now mahder, start saving the emergency contact information for this particular applicant...
							EmergencyContact emergencyContact = new EmergencyContact(emergencyFullName, emergencyRelationship,
									emergencyOfficeTelephone, emergencyHomeTelephone,
									emergencyMobileTelephone, applicantId);
							emergencyContact.addEmergencyContact();						
						}//end if checker condition			
												
					}//end for loop
					
					workbook = null;
					System.gc();
				}catch(Exception e){
					e.printStackTrace();
				}
			}//end else
		}//end while loop
		
		
		
	}//end bigger else body!!    
%>
<p class='msg done'>Imported <%=totalRows%> applicants record from excel file!</p>
<%@include file="userhome.jsp" %>






