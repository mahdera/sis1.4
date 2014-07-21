<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%
	String studentFirstName = request.getParameter("studentFirstName");
	String studentMiddleName = request
			.getParameter("studentMiddleName");
	if(studentMiddleName.length()==0 || studentMiddleName.equalsIgnoreCase("Middle Name")){
		studentMiddleName=" ";
	}
	String studentLastName = request.getParameter("studentLastName");
	String sex = request.getParameter("sex");
	Date dateOfBirth = Date
			.valueOf(request.getParameter("dateOfBirth"));
	String passportNumber = request.getParameter("passportNumber");
	String studentCountryOfIssue = request
			.getParameter("studentCountryOfIssue");
	String studentNationality = request
			.getParameter("studentNationality");
	String studentReligion = request.getParameter("studentReligion");
	String countryOfBirth = request.getParameter("countryOfBirth");
	String applicantId;
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	boolean difficulityReading = Boolean.parseBoolean(request
			.getParameter("difficulityReading"));
	boolean difficulityMathematics = Boolean.parseBoolean(request
			.getParameter("difficulityMathematics"));
	boolean difficulityLanguage = Boolean.parseBoolean(request
			.getParameter("difficulityLanguage"));
	boolean difficulityBehavioral = Boolean.parseBoolean(request
			.getParameter("difficulityBehavioral"));
	boolean giftedReading = Boolean.parseBoolean(request
			.getParameter("giftedReading"));
	boolean giftedMathematics = Boolean.parseBoolean(request
			.getParameter("giftedMathematics"));
	boolean giftedLanguage = Boolean.parseBoolean(request
			.getParameter("giftedLanguage"));
	//boolean giftedBehavioral = Boolean.parseBoolean(request.getParameter("giftedBehavioral"));
	String others = request.getParameter("others");
	String medication = request.getParameter("medication");
	String fatherFirstName = request.getParameter("fatherFirstName");
	String fatherMiddleName = request.getParameter("fatherMiddleName");
	if(fatherMiddleName.length()==0 || fatherMiddleName.equalsIgnoreCase("Middle Name")){
		fatherMiddleName=" ";
	}
	String fatherLastName = request.getParameter("fatherLastName");
	String fatherPassportNumber = request
			.getParameter("fatherPassportNumber");
	String fatherCountryOfIssue = request
			.getParameter("fatherCountryOfIssue");
	String fatherReligion = request.getParameter("fatherReligion");
	String fatherOccupation = request.getParameter("fatherOccupation");
	String fatherPlaceOfWork = request
			.getParameter("fatherPlaceOfWork");
	String fatherNameOfOrganization = request
			.getParameter("fatherNameOfOrganization");
	if(fatherNameOfOrganization.length()==0 || fatherNameOfOrganization.equalsIgnoreCase("Name of Org.")){
		fatherNameOfOrganization=" ";
	}
	String fatherOfficeTelephone = request
			.getParameter("fatherOfficeTelephone");
	if(fatherOfficeTelephone.length()==0 || fatherOfficeTelephone.equalsIgnoreCase("Office Tele.")){
		fatherOfficeTelephone="--";
	}
	String fatherFax = request.getParameter("fatherFax");
	if(fatherFax.length()==0 || fatherFax.equalsIgnoreCase("Fax")){
		fatherFax=" ";
	}
	String fatherPobox = request.getParameter("fatherPobox");
	if(fatherPobox.length()==0 || fatherPobox.equalsIgnoreCase("P.O.Box")){
		fatherPobox=" ";
	}
	String fatherEmail = request.getParameter("fatherEmail");
	String fatherHomeTelephone = request
			.getParameter("fatherHomeTelephone");
	if(fatherHomeTelephone.length()==0 || fatherHomeTelephone.equalsIgnoreCase("Home Tele")){
		fatherHomeTelephone=" ";
	}
	String fatherMobile = request.getParameter("fatherMobile");
	String fatherHomePobox = request.getParameter("fatherHomePobox");
	if(fatherHomePobox.length()==0 || fatherHomePobox.equalsIgnoreCase("Home POBox")){
		fatherHomePobox=" ";
	}
	String motherFirstName = request.getParameter("motherFirstName");
	String motherMiddleName = request.getParameter("motherMiddleName");
	if(motherMiddleName.length()==0 || motherMiddleName.equalsIgnoreCase("Middle Name")){
		motherMiddleName=" ";
	}
	String motherLastName = request.getParameter("motherLastName");
	String motherPassportNumber = request
			.getParameter("motherPassportNumber");
	String motherCountryOfIssue = request
			.getParameter("motherCountryOfIssue");
	String motherReligion = request.getParameter("motherReligion");
	String motherOccupation = request.getParameter("motherOccupation");
	String motherPlaceOfWork = request
			.getParameter("motherPlaceOfWork");
	String motherNameOfOrganization = request
			.getParameter("motherNameOfOrganization");
	if(motherNameOfOrganization.length()==0 || motherNameOfOrganization.equalsIgnoreCase("Name of Org.")){
		motherNameOfOrganization=" ";
	}
	String motherOfficeTelephone = request
			.getParameter("motherOfficeTelephone");
	if(motherOfficeTelephone.length()==0 || motherOfficeTelephone.equalsIgnoreCase("Office Tel.")){
		motherOfficeTelephone=" ";
	}
	String motherFax = request.getParameter("motherFax");
	if(motherFax.length()==0 || motherFax.equalsIgnoreCase("Fax")){
		motherFax=" ";
	}
	String motherPobox = request.getParameter("motherPobox");
	if(motherPobox.length()==0 || motherPobox.equalsIgnoreCase("POBox")){
		motherPobox=" ";
	}
	String motherEmail = request.getParameter("motherEmail");
	String motherHomeTelephone = request
			.getParameter("motherHomeTelephone");
	if(motherHomeTelephone.length()==0 || motherHomeTelephone.equalsIgnoreCase("Home Tel.")){
		motherHomeTelephone=" ";
	}
	String motherMobile = request.getParameter("motherMobile");
	String motherHomePobox = request.getParameter("motherHomePobox");
	if(motherHomePobox.length()==0 || motherHomePobox.equalsIgnoreCase("Home POBox")){
		motherHomePobox=" ";
	}
	String emergencyContactFullName = request
			.getParameter("emergencyContactFullName");
	String emergencyRelation = request
			.getParameter("emergencyRelation");
	String emergencyOfficeTelephone = request
			.getParameter("emergencyOfficeTelephone");
	if(emergencyOfficeTelephone.length()==0 || emergencyOfficeTelephone.equalsIgnoreCase("Office Tel.")){
		emergencyOfficeTelephone=" ";
	}
	String emergencyHomeTelephone = request
			.getParameter("emergencyHomeTelephone");
	if(emergencyHomeTelephone.length()==0 || emergencyHomeTelephone.equalsIgnoreCase("Home Tel.")){
		emergencyHomeTelephone=" ";
	}
	String emergencyMobile = request.getParameter("emergencyMobile");
	String personPayingFees = request.getParameter("personPayingFees");
	Date expectedDateOfArrival = Date.valueOf(request
			.getParameter("expectedDateOfArrival"));
	String formType = request.getParameter("formType");
	int educationGridRowCounter = Integer.parseInt(request
			.getParameter("educationGridRowCounter"));
	int siblingGridRowCounter = Integer.parseInt(request
			.getParameter("siblingGridRowCounter"));
	String languageSpokenAtHome = request
			.getParameter("languageSpokenAtHome");
	String otherLanguageSpoken = request
			.getParameter("otherLanguageSpoken");
	String status = "Admission Request";
	boolean fatherIsStaff = Boolean.parseBoolean(request
			.getParameter("fatherIsStaff"));
	boolean motherIsStaff = Boolean.parseBoolean(request
			.getParameter("motherIsStaff"));

	/* out.print(studentFirstName+":"+studentMiddleName+":"+studentLastName+":"+sex+":"+dateOfBirth+":"+passportNumber+":"+
			studentCountryOfIssue+":"+studentNationality+":"+studentReligion+":"+countryOfBirth+":"+levelId+":"+difficulityReading+":"+
			difficulityMathematics+":"+difficulityLanguage+":"+difficulityBehavioral+":"+giftedReading+":"+giftedMathematics+":"+
			giftedLanguage+":"+giftedBehavioral+":"+others+":"+medication+":"+fatherFirstName+":"+fatherMiddleName+":"+fatherLastName+":"+
			fatherPassportNumber+":"+fatherCountryOfIssue+":"+fatherReligion+":"+fatherOccupation+":"+fatherPlaceOfWork+":"+fatherNameOfOrganization+":"+
			fatherOfficeTelephone+":"+fatherFax+":"+fatherPobox+":"+fatherEmail+":"+fatherHomeTelephone+":"+fatherMobile+":"+fatherHomePobox+":"+
			motherFirstName+":"+motherMiddleName+":"+motherLastName+":"+motherPassportNumber+":"+motherCountryOfIssue+":"+motherReligion+":"+
			motherOccupation+":"+motherPlaceOfWork+":"+motherNameOfOrganization+":"+motherOfficeTelephone+":"+motherFax+":"+motherPobox+":"+
			motherEmail+":"+motherHomeTelephone+":"+motherMobile+":"+motherHomePobox+":"+emergencyContactFullName+":"+emergencyRelation+":"+
			emergencyOfficeTelephone+":"+emergencyHomeTelephone+":"+emergencyMobile+":"+personPayingFees+":"+expectedDateOfArrival+":"+educationGridRowCounter+":"+
			siblingGridRowCounter); */
	//First save the applicant information here Mahder...
	Applicant applicant = new Applicant(studentFirstName,
			studentMiddleName, studentLastName, dateOfBirth, sex,
			passportNumber, studentCountryOfIssue, studentNationality,
			studentReligion, countryOfBirth, levelId, others,
			medication, languageSpokenAtHome, otherLanguageSpoken,
			expectedDateOfArrival, personPayingFees, formType, status);
	applicant.addApplicant();
	//now fetch the applicant using the passport number...
	Applicant fetchedApplicant = Applicant
			.getApplicantUsingPassportNumber(studentFirstName,studentMiddleName,studentLastName);
	applicantId = fetchedApplicant.getId();//get the applicant id
	//JOptionPane.showMessageDialog(null, applicantId);
	//works fine till here
	ChildTalent childTalent = new ChildTalent(giftedReading,
			giftedMathematics, giftedLanguage, applicantId);
	childTalent.addChildTalent();
	ChildDifficulities childDifficulities = new ChildDifficulities(
			difficulityReading, difficulityMathematics,
			difficulityLanguage, difficulityBehavioral,
			fetchedApplicant.getId());
	childDifficulities.addChildDifficulities();

	//now save the parent information of this applicant...
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
				motherNameOfOrganization, motherIsStaff);
		mParent.addParent();
	}
	//fetch the father using passport number
	Parent fetchedFatherParent = Parent
			.getThisParentUsingPassportNumberAndFullName(fatherPassportNumber,fatherFirstName,fatherMiddleName,fatherLastName);
	Parent fetchedMotherParent = Parent
			.getThisParentUsingPassportNumberAndFullName(motherPassportNumber,motherFirstName,motherMiddleName,motherLastName);
	//now save the parent addresses....below
	ParentAddress fatherParentAddress = new ParentAddress(
			fatherOfficeTelephone, fatherFax, fatherPobox, fatherEmail,
			fatherHomeTelephone, fatherMobile, fatherHomePobox,
			fetchedFatherParent.getId());
	
	fatherParentAddress.addParentAddress();
	ParentAddress motherParentAddress = new ParentAddress(
			motherOfficeTelephone, motherFax, motherPobox, motherEmail,
			motherHomeTelephone, motherMobile, motherHomePobox,
			fetchedMotherParent.getId());
	motherParentAddress.addParentAddress();
	//now create a relationship b/n this applicant and the parent information...
	ChildParent fatherChildParent = new ChildParent(
			fetchedFatherParent.getId(), String.valueOf(fetchedApplicant.getId()),
			"Father");
	fatherChildParent.addChildParent();
	ChildParent motherChildParent = new ChildParent(
			fetchedMotherParent.getId(), fetchedApplicant.getId(),
			"Mother");
	motherChildParent.addChildParent();
	//now mahder, start saving the emergency contact information for this particular applicant...
	EmergencyContact emergencyContact = new EmergencyContact(
			emergencyContactFullName, emergencyRelation,
			emergencyOfficeTelephone, emergencyHomeTelephone,
			emergencyMobile, fetchedApplicant.getId());
	emergencyContact.addEmergencyContact();
	//now save the previously attended school here Mahder...
	String[] nameOfSchool = new String[educationGridRowCounter];
	String[] typeOfSchool = new String[educationGridRowCounter];
	String[] years = new String[educationGridRowCounter];
	String[] classes = new String[educationGridRowCounter];
	String[] languageUsed = new String[educationGridRowCounter];
	for (int i = 0; i < educationGridRowCounter; i++) {
		String theNameOfSchool = "txtnameofschool" + (i + 1);
		String theTypeOfSchool = "txttypeofschool" + (i + 1);
		String theYears = "txtyears" + (i + 1);
		String theClasses = "txtclasses" + (i + 1);
		String theLanguageUsed = "txtlanguageused" + (i + 1);

		nameOfSchool[i] = request.getParameter(theNameOfSchool);
		typeOfSchool[i] = request.getParameter(theTypeOfSchool);
		years[i] = request.getParameter(theYears);
		classes[i] = request.getParameter(theClasses);
		languageUsed[i] = request.getParameter(theLanguageUsed);
		//now save this information to the database...
		PreviousSchoolsAttended pr = new PreviousSchoolsAttended(
				nameOfSchool[i], typeOfSchool[i], years[i], classes[i],
				languageUsed[i], String.valueOf(fetchedApplicant.getId()));
		pr.addPreviousSchoolsAttended();
	}//end for...loop

	//in the same fashion do for sibling information...buki
	String[] siblingFirstName = new String[siblingGridRowCounter];
	String[] siblingMiddleName = new String[siblingGridRowCounter];
	String[] siblingLastName = new String[siblingGridRowCounter];
	String[] siblingRelation = new String[siblingGridRowCounter];
	for (int j = 0; j < siblingGridRowCounter; j++) {
		String theSiblingFirstName = "txtsiblingfirstname" + (j + 1);
		String theSiblingMiddleName = "txtsiblingmiddlename" + (j + 1);
		String theSiblingLastName = "txtsiblinglastname" + (j + 1);
		String theSiblingRelation = "slctsiblingrelation" + (j + 1);

		siblingFirstName[j] = request.getParameter(theSiblingFirstName);
		siblingMiddleName[j] = request
				.getParameter(theSiblingMiddleName);
		siblingLastName[j] = request.getParameter(theSiblingLastName);
		siblingRelation[j] = request.getParameter(theSiblingRelation);
		SiblingAttendingCurrently si = new SiblingAttendingCurrently(
				siblingFirstName[j], siblingMiddleName[j],
				siblingLastName[j], siblingRelation[j],
				String.valueOf(fetchedApplicant.getId()));
		si.addSiblingAttendingCurrently();
	}//end for...loop
	//now it is time to form the unique admission request submission identification id for this particular student
	Date currentDate = Utility.getCurrentDate();
	String firstCharacterOfFirstName = Utility.getOnlyTheseCharactersAsStringFromThisStringValue(studentFirstName, 0, 1);
	String firstCharacterOfMiddleName = Utility.getOnlyTheseCharactersAsStringFromThisStringValue(studentMiddleName, 0, 1);
	String firstCharacterOfLastName = Utility.getOnlyTheseCharactersAsStringFromThisStringValue(studentLastName, 0, 1);
	String firstThreeCharactersOfNationality = Utility.getOnlyTheseCharactersAsStringFromThisStringValue(studentNationality, 0, 3);//the exception occured here previously
	String lastValue = firstCharacterOfFirstName.toUpperCase() +""+firstCharacterOfMiddleName.toUpperCase()+""+firstCharacterOfLastName.toUpperCase()+"/"+
			firstThreeCharactersOfNationality.toUpperCase()+"/"+currentDate;
	ApplicationRequestUniqueIdNumbers appIdNumber = new ApplicationRequestUniqueIdNumbers(applicantId,lastValue);
	appIdNumber.addApplicationRequestUniqueIdNumber();
%>
<jsp:forward page="showstudentapplicationrequestsavedmessage.jsp">
     <jsp:param name="applicantId" value="<%=applicantId %>"/>
</jsp:forward>
