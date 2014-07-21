<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
   
	String applicantId = request.getParameter("applicantId");
	String applicantFirstName = request.getParameter("applicantFirstName");
	String appplicantMiddleName = request.getParameter("applicantMiddleName");
	String applicantLastName = request.getParameter("applicantLastName");
	String dateOfBirth = request.getParameter("dateOfBirth");
	String sex = request.getParameter("sex");
	String passportNumber = request.getParameter("passportNumber");
	String countryOfIssue = request.getParameter("countryOfIssue");
	String nationality = request.getParameter("nationality");
	String religion = request.getParameter("religion");
	String countryOfBirth = request.getParameter("countryOfBirth");
	String others = request.getParameter("others");
	String disablityMedication = request.getParameter("disablityMedication");
	String languageSpokenAtHome = request.getParameter("languageSpokenAtHome");
	//JOptionPane.showMessageDialog(null, request.getParmeter("expectedDateOfArrival"));
	String expectedDateOfArrival = request.getParameter("expectedDateOfArrival");
	
	String personResponsibleForPayingFees = request.getParameter("personResponsibleForPayingFees");
	
	Applicant.updateApplicant(applicantId,applicantFirstName,appplicantMiddleName,applicantLastName,dateOfBirth,sex,passportNumber,countryOfIssue,
			nationality,religion,countryOfBirth,others,disablityMedication,languageSpokenAtHome,personResponsibleForPayingFees,expectedDateOfArrival);
	
	int cid = Integer.parseInt(request.getParameter("childDifficulties"));
	//JOptionPane.showMessageDialog(null, cid);
	int reading  = ((request.getParameter("reading").equalsIgnoreCase("yes"))?1:0);
	int mathematics =(( request.getParameter("mathematics").equalsIgnoreCase("yes"))?1:0);
	int language = ((request.getParameter("language").equalsIgnoreCase("yes"))?1:0);
	int behavoiural = ((request.getParameter("behavioural").equalsIgnoreCase("yes"))?1:0);
	//JOptionPane.showMessageDialog(null, cid);
	if(cid!=0){
		ChildDifficulities.updateChildDifficulities(cid,reading,mathematics,language,behavoiural);
	}
	
	int tid = Integer.parseInt(request.getParameter("childTalent"));
	int treading  = ((request.getParameter("cReading").equalsIgnoreCase("yes"))?1:0);
	int tmathematics =(( request.getParameter("cMathematcs").equalsIgnoreCase("yes"))?1:0);
	int tlanguage = ((request.getParameter("cLanguage").equalsIgnoreCase("yes"))?1:0);
	//JOptionPane.showMessageDialog(null, tid);
	if(tid!=-1){
		ChildTalent.updateChildTalent(tid,treading,tmathematics,tlanguage);
	}
	//JOptionPane.showMessageDialog(null, "child talent updated");
	long ffid=-1;
	long fmid=-1;
	int fatherId = Integer.parseInt(request.getParameter("fatherId"));
	String fFirstName = request.getParameter("fFirstName");
	String fMiddleName = request.getParameter("fMiddleName");
	String fLastName = request.getParameter("fLastName");
	String fPassportNumber = request.getParameter("fPassportNumber");
	String fCountryOfIssue = request.getParameter("fCountryOfIssue");
	String fReligion = request.getParameter("fReligion");
	String fOccupation = request.getParameter("fOccupation");
	String fPlaceOfWork = request.getParameter("fPlaceOfWork");
	String fPlaceOfOrg = request.getParameter("fPlaceOfOrg");
	//JOptionPane.showMessageDialog(null, fatherId);
	int fIsStaff = ((request.getParameter("fIsStaff").equalsIgnoreCase("yes"))?1:0);
	if(fatherId!=-1){
	  Parent.updateParent(fatherId,fFirstName,fMiddleName,fLastName,fPassportNumber,fCountryOfIssue,fReligion,fOccupation,fPlaceOfWork,fPlaceOfOrg,fIsStaff);
	 }
	else{
		if (!Parent.thisPassportNumberExistsAndFullName(fPassportNumber,fFirstName,fMiddleName,fLastName) && !fPassportNumber.equalsIgnoreCase("") && !fPassportNumber.equalsIgnoreCase("null")) {
			Parent fParent = new Parent(fFirstName,fMiddleName, fLastName,
					fPassportNumber, fCountryOfIssue,
					fReligion, fOccupation, fPlaceOfWork,
					fPlaceOfOrg, fIsStaff==1);
			fParent.addParent();
			///////////////////////////////////////////////////////////////////////////////////////////////////////
			Parent fetchedFatherParent = Parent
					.getThisParentUsingPassportNumberAndFullName(fPassportNumber,fFirstName,fMiddleName,fLastName);
			///////////////////////////////////////////////////////////////////////////////////////////////////////
			ffid=fetchedFatherParent.getId();
			ChildParent fatherChildParent = new ChildParent(
					fetchedFatherParent.getId(), applicantId,
					"Father");
			fatherChildParent.addChildParent();
		}
	}
	
	//JOptionPane.showMessageDialog(null, "parent updated");
	
	String fOfficeTel = request.getParameter("fOfficeTel");
	String fFax = request.getParameter("fFax");
	String fPobox = request.getParameter("fPobox");
	String fMail = request.getParameter("fMail");
	String fHomeTel = request.getParameter("fHomeTel");
	String fMobile = request.getParameter("fMobile");
	String fMobile2 = request.getParameter("fMobile2");
	String fHomePobox = request.getParameter("fHomePobox");
	int fatherAddress = Integer.parseInt(request.getParameter("fatherAddress"));
	//JOptionPane.showMessageDialog(null, ffid+", "+fatherId);
	if(ffid!=-1 && fatherId==-1){
		ParentAddress fatherParentAddress = new ParentAddress(
				fOfficeTel, fFax, fPobox, fMail,
				fHomeTel, fMobile, fHomePobox,
				ffid);
		//System.out.print("father id ="+fetchedFatherParent.getId());
		fatherParentAddress.addParentAddress();
		
	}else{
		ParentAddress.updateParentAddress(fatherAddress,fOfficeTel,fFax,fPobox,fMail,fHomeTel,fMobile,fMobile2,fHomePobox);
	}
	//JOptionPane.showMessageDialog(null, "parent address updated");
	
	int motherId = Integer.parseInt(request.getParameter("motherId"));
	String mFirstName = request.getParameter("mFirstName");
	String mMiddleName = request.getParameter("mMiddleName");
	String mLastName = request.getParameter("mLastName");
	String mPassportNumber = request.getParameter("mPassportNumber");
	String mCountryOfIssue = request.getParameter("mCountryOfIssue");
	String mReligion = request.getParameter("mReligion");
	String mOccupation = request.getParameter("mOccupation");
	String mPlaceOfWork = request.getParameter("mPlaceOfWork");
	String mPlaceOfOrg = request.getParameter("mPlaceOfOrg");
	int mIsStaff = ((request.getParameter("mIsStaff").equalsIgnoreCase("yes"))?1:0);
	if(motherId!=-1){
		Parent.updateParent(motherId, mFirstName,mMiddleName, mLastName, mPassportNumber, mCountryOfIssue,mReligion, mOccupation, mPlaceOfWork, mPlaceOfOrg, mIsStaff);
	}else{
		if (!Parent.thisPassportNumberExistsAndFullName(mPassportNumber,mFirstName,mMiddleName,mLastName)  && !mPassportNumber.equalsIgnoreCase("") && !mPassportNumber.equalsIgnoreCase("null")) {
			Parent mParent = new Parent(mFirstName," ", mLastName,
					mPassportNumber, mCountryOfIssue,
					mReligion, mOccupation, mPlaceOfWork,
					mPlaceOfOrg, mIsStaff==1);
			mParent.addParent();
			///////////////////////////////////////////////////////////////////////////////////////////////////////
			Parent fetchedMotherParent = Parent
					.getThisParentUsingPassportNumberAndFullName(mPassportNumber,mFirstName,mMiddleName,mLastName);
			///////////////////////////////////////////////////////////////////////////////////////////////////////
			fmid=fetchedMotherParent.getId();
			ChildParent motherChildParent = new ChildParent(
					fetchedMotherParent.getId(), applicantId,
					"Mother");
			motherChildParent.addChildParent();
		}
	}
	//JOptionPane.showMessageDialog(null, "after parent update");
	
	String mOfficeTel = request.getParameter("mOfficeTel");
	String mFax = request.getParameter("mFax");
	String mPobox = request.getParameter("mPobox");
	String mMail = request.getParameter("mMail");
	String mHomeTel = request.getParameter("mHomeTel");
	String mMobile = request.getParameter("mMobile");
	String mMobile2 = request.getParameter("mMobile2");
	String mHomePobox = request.getParameter("mHomePobox");
	int motherAddress = Integer.parseInt(request.getParameter("motherAddress"));
	if(fmid!=-1 && motherId==-1){
		ParentAddress motherParentAddress = new ParentAddress(
				mOfficeTel, mFax, mPobox, mMail,
				mHomeTel, mMobile, mHomePobox,
				fmid);
		//System.out.print("father id ="+fetchedFatherParent.getId());
		motherParentAddress.addParentAddress();
		
	}else{
		ParentAddress.updateParentAddress(motherAddress,mOfficeTel,mFax,mPobox,mMail,mHomeTel,mMobile,mMobile2,mHomePobox);
	}
	
	
	//JOptionPane.showMessageDialog(null, "parent address updated");
	//////////////////////////////////////////
	
	int siblingCoun = Integer.parseInt(request.getParameter("siblingCounId"));
	SiblingAttendingCurrently.deleteSiblingAttendingCurrentlyByApplicant(applicantId);
	for(int i=1;i<=siblingCoun;i++){
		String siblingFirstName = request.getParameter("txtsiblingfirstname"+i);
		String siblingMiddleName = request.getParameter("txtsiblingmiddlename"+i);
		String siblingLastName = request.getParameter("txtsiblinglastname"+i);
		String siblingRelationship = request.getParameter("slctsiblingrelation"+i);
		
		SiblingAttendingCurrently sibling = new SiblingAttendingCurrently(siblingFirstName, siblingMiddleName, siblingLastName, siblingRelationship, applicantId);
		sibling.addSiblingAttendingCurrently();
	}
	///////////////////////////////////////////
	
	
	int emergencyId = Integer.parseInt(request.getParameter("emergencyId"));
	
	String fullName = request.getParameter("eFullName");
	String relationship = request.getParameter("eRelationship");
	String eOfficeTel = request.getParameter("eOfficeTel");
	String eHomeTel = request.getParameter("eHomeTel");
	String eMobile = request.getParameter("eMobile");
	//JOptionPane.showMessageDialog(null, "EM: "+emergencyId+", name: "+fullName+",r/ship: "+relationship+
	//		",office: "+eOfficeTel+",home: "+eHomeTel+",mobile: "+eMobile+",applicantID: "+applicantId);
	if(emergencyId!=-1){
		EmergencyContact.updateEmergencyContact(emergencyId, fullName, relationship, eOfficeTel, eHomeTel, eMobile);
	}
	else{
		EmergencyContact em=new EmergencyContact(fullName,relationship,eOfficeTel,eHomeTel,eMobile,applicantId);
		em.addEmergencyContact();		
	}
		
%>
<p class="msg done">Applicant Updated Successfully!</p>
