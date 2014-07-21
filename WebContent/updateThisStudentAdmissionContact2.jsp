<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.ResultSet" %>
<%
	String applicantId = request.getParameter("applicantId");
	
	//JOptionPane.showMessageDialog(null, "child talent updated");
	long ffid=-1;
	long fmid=-1;
	int fatherId = Integer.parseInt(request.getParameter("fatherId"));
	//String fFirstName = request.getParameter("fFirstName");
	//String fMiddleName = request.getParameter("fMiddleName");
	//String fLastName = request.getParameter("fLastName");
	//String fPassportNumber = request.getParameter("fPassportNumber");
	//String fCountryOfIssue = request.getParameter("fCountryOfIssue");
	//String fReligion = request.getParameter("fReligion");
	String fOccupation = request.getParameter("fOccupation");
	//String fPlaceOfWork = request.getParameter("fPlaceOfWork");
	//String fPlaceOfOrg = request.getParameter("fPlaceOfOrg");
	//JOptionPane.showMessageDialog(null, fatherId);
	//int fIsStaff = ((request.getParameter("fIsStaff").equalsIgnoreCase("yes"))?1:0);
	if(fatherId!=-1){
	   Parent.updateParent2(fatherId,fOccupation);
	}
	else{
		String sql="select id from tbl_passport_lookup";
		ResultSet rs=DBConnection.readFromDatabase(sql);
		rs.next();
		String passport=rs.getString("id");
		if (!Parent.thisPassportNumberExistsAndFullName(passport," "," "," ")) {
			Parent fParent = new Parent(" "," ", " ",
					passport, " ",
					" ", fOccupation, " ",
					" ", false);
			fParent.addParent();
			String sql2="update tbl_passport_lookup set id=id+1";
			DBConnection.writeToDatabase(sql2);
			///////////////////////////////////////////////////////////////////////////////////////////////////////
			Parent fetchedFatherParent = Parent
					.getThisParentUsingPassportNumberAndFullName(passport," "," "," ");
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
	//String fFax = request.getParameter("fFax");
	//String fPobox = request.getParameter("fPobox");
	String fMail = request.getParameter("fMail");
	String fHomeTel = request.getParameter("fHomeTel");
	String fMobile = request.getParameter("fMobile");
	String fMobile2 = request.getParameter("fMobile2");
	//String fHomePobox = request.getParameter("fHomePobox");
	int fatherAddress = Integer.parseInt(request.getParameter("fatherAddress"));
	//JOptionPane.showMessageDialog(null, ffid+", "+fatherId);
	if(ffid!=-1 && fatherId==-1){
		ParentAddress fatherParentAddress = new ParentAddress(
				fOfficeTel, " ", " ", fMail,
				fHomeTel, fMobile, " ",
				ffid);
		//System.out.print("father id ="+fetchedFatherParent.getId());
		fatherParentAddress.addParentAddress();
		
	}else{
		ParentAddress.updateParentAddress2(fatherAddress,fOfficeTel,fMail,fHomeTel,fMobile,fMobile2);
	}
	//JOptionPane.showMessageDialog(null, "parent address updated");
	
	int motherId = Integer.parseInt(request.getParameter("motherId"));
	//String mFirstName = request.getParameter("mFirstName");
	//String mMiddleName = request.getParameter("mMiddleName");
	//String mLastName = request.getParameter("mLastName");
	//String mPassportNumber = request.getParameter("mPassportNumber");
	//String mCountryOfIssue = request.getParameter("mCountryOfIssue");
	//String mReligion = request.getParameter("mReligion");
	String mOccupation = request.getParameter("mOccupation");
	//String mPlaceOfWork = request.getParameter("mPlaceOfWork");
	//String mPlaceOfOrg = request.getParameter("mPlaceOfOrg");
	//int mIsStaff = ((request.getParameter("mIsStaff").equalsIgnoreCase("yes"))?1:0);
	if(motherId!=-1){
		Parent.updateParent2(motherId, mOccupation);
	}else{
		String sql="select id from tbl_passport_lookup";
		ResultSet rs=DBConnection.readFromDatabase(sql);
		rs.next();
		String passport=rs.getString("id");
		if (!Parent.thisPassportNumberExistsAndFullName(passport," "," "," ")) {
			Parent mParent = new Parent(" "," ", " ",
					passport, " ",
					" ", mOccupation, " ",
					" ", false);
			mParent.addParent();
			String sql2="update tbl_passport_lookup set id=id+1";
			DBConnection.writeToDatabase(sql2);
			//mParent.addParent();
			///////////////////////////////////////////////////////////////////////////////////////////////////////
			Parent fetchedMotherParent = Parent
					.getThisParentUsingPassportNumberAndFullName(passport," "," "," ");
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
	//String mFax = request.getParameter("mFax");
	//String mPobox = request.getParameter("mPobox");
	String mMail = request.getParameter("mMail");
	//String mHomeTel = request.getParameter("mHomeTel");
	String mMobile = request.getParameter("mMobile");
	String mMobile2 = request.getParameter("mMobile2");
	//String mHomePobox = request.getParameter("mHomePobox");
	int motherAddress = Integer.parseInt(request.getParameter("motherAddress"));
	if(fmid!=-1 && motherId==-1){
		ParentAddress motherParentAddress = new ParentAddress(
				mOfficeTel, " ", " ", mMail,
				" ", mMobile, " ",
				fmid);
		//System.out.print("father id ="+fetchedFatherParent.getId());
		motherParentAddress.addParentAddress();
		
	}else{
		ParentAddress.updateParentAddress2(motherAddress,mOfficeTel,mMail," ",mMobile,mMobile2);
		//ParentAddress.updateParentAddress(motherAddress,mOfficeTel,mFax,mPobox,mMail,mHomeTel,mMobile,mHomePobox);
	}
	
	
	//JOptionPane.showMessageDialog(null, "parent address updated");
	
	int emergencyId = Integer.parseInt(request.getParameter("emergencyId"));
	
	//String fullName = request.getParameter("eFullName");
	//String relationship = request.getParameter("eRelationship");
	//String eOfficeTel = request.getParameter("eOfficeTel");
	//String eHomeTel = request.getParameter("eHomeTel");
	String eMobile = request.getParameter("eMobile");
	//JOptionPane.showMessageDialog(null, "EM: "+emergencyId+", name: "+fullName+",r/ship: "+relationship+
	//		",office: "+eOfficeTel+",home: "+eHomeTel+",mobile: "+eMobile+",applicantID: "+applicantId);
	if(emergencyId!=-1){
		EmergencyContact.updateEmergencyContact2(emergencyId, eMobile);
	}
	else{
		EmergencyContact em=new EmergencyContact(" "," ", " "," ",eMobile,applicantId);
		em.addEmergencyContact();		
	}
	
	
%>
<%@include file="showlistofstudentsinsectionselectorbarforcontactedit.jsp"%>
<p class="msg done">Contacts Updated Successfully!</p>