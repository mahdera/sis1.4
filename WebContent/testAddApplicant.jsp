<%@page import="com.signetitsolutions.sis.server.classes.*"%>

<%

			String username = request.getParameter("txtusername");
			String password = request.getParameter("txtpassword");
			
			Applicant applicant =new Applicant();
			
			System.out.println("   a     ");
			
			applicant.setFirstName("first'Name");
			System.out.println("   applicant.getFirstName() a     "+applicant.getFirstName());
			applicant.setMiddleName("middleName");
			applicant.setLastName("lastName");
			applicant.setDateOfBirth1("2004-12-16");
			applicant.setSex("Male");
			applicant.setPassportNumber("90809890");
			applicant.setCountryOfIssue("Ethiopia");
			applicant.setNationality("Ethiopia");
			applicant.setReligion("Ortodox");
			applicant.setCountryOfBirth("Ethiopia");
			applicant.setLevelId(1);
			applicant.setOther("other");
			applicant.setDisabilityMedication("disabilityMedication");
			applicant.setLanguageSpokenAtHome("Amharic");
			applicant.setOtherLanguageSpoken("otherLanguageSpoken");
			applicant.setExpectedDateOfArrivalAdmission("2013-12-28");
			applicant.setPersonResponsibleForPayingFees("Tolosa");
			applicant.setApplicantType("applicantType");
			applicant.setStatus("status");
			
			System.out.println("   b     ");
			
			applicant.addApplicant();            
			

%>