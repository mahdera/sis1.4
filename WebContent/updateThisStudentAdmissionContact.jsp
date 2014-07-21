<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	String applicantId = request.getParameter("applicantId");
	
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
		if (!Parent.thisPassportNumberExistsAndFullName(fPassportNumber,fFirstName,fMiddleName,fLastName)) {
			Parent fParent = new Parent(fFirstName," ", fLastName,
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
		ParentAddress.updateParentAddress(fatherAddress,fOfficeTel,fFax,fPobox,fMail,fHomeTel,fMobile, fMobile2,fHomePobox);
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
		if (!Parent.thisPassportNumberExistsAndFullName(mPassportNumber,mFirstName,mMiddleName,mLastName)) {
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
		ParentAddress.updateParentAddress(motherAddress,mOfficeTel,mFax,mPobox,mMail,mHomeTel,mMobile, mMobile,mHomePobox);
	}
	
	
	//JOptionPane.showMessageDialog(null, "parent address updated");
	
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
<%@include file="showlistofstudentsinsectionselectorbarforcontactedit.jsp"%>
<p class="msg done">Contacts Updated Successfully!</p>