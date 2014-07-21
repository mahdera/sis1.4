/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author Mahder on macbook Pro
 * 
 */
public class ApplicantT {
	private String id;
	private String firstName;
	private String middleName;
	private String lastName;
	private String dateOfBirth;
	private String sex;
	private String passportNumber;
	private String countryOfIssue;
	private String nationality;
	private String religion;
	private String countryOfBirth;
	private int levelId;
	private String other;
	private String disabilityMedication;
	private String languageSpokenAtHome;
	private String otherLanguageSpoken;
	private Date expectedDateOfArrivalAdmission;
	private String personResponsibleForPayingFees;
	private String applicantType;
	private String status;
	private Date admissionRequested;
	private int state;
	private boolean archived;

	/**
	 * 
	 */
	public ApplicantT() {
	}
	
	

	/**
	 * @param id
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 * @param dateOfBirth
	 * @param sex
	 * @param passportNumber
	 * @param countryOfIssue
	 * @param nationality
	 * @param religion
	 * @param countryOfBirth
	 * @param levelId
	 * @param other
	 * @param disabilityMedication
	 * @param languageSpokenAtHome
	 * @param otherLanguageSpoken
	 * @param expectedDateOfArrivalAdmission
	 * @param personResponsibleForPayingFees
	 * @param applicantType
	 * @param status
	 * @param admissionRequested
	 * @param state
	 * @param archived
	 */
	public ApplicantT(String id, String firstName, String middleName,
			String lastName, String dateOfBirth, String sex,
			String passportNumber, String countryOfIssue, String nationality,
			String religion, String countryOfBirth, int levelId, String other,
			String disabilityMedication, String languageSpokenAtHome,
			String otherLanguageSpoken, Date expectedDateOfArrivalAdmission,
			String personResponsibleForPayingFees, String applicantType,
			String status, Date admissionRequested, int state, boolean archived) {
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.sex = sex;
		this.passportNumber = passportNumber;
		this.countryOfIssue = countryOfIssue;
		this.nationality = nationality;
		this.religion = religion;
		this.countryOfBirth = countryOfBirth;
		this.levelId = levelId;
		this.other = other;
		this.disabilityMedication = disabilityMedication;
		this.languageSpokenAtHome = languageSpokenAtHome;
		this.otherLanguageSpoken = otherLanguageSpoken;
		this.expectedDateOfArrivalAdmission = expectedDateOfArrivalAdmission;
		this.personResponsibleForPayingFees = personResponsibleForPayingFees;
		this.applicantType = applicantType;
		this.status = status;
		this.admissionRequested = admissionRequested;
		this.state = state;
		this.archived = archived;
	}



	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName
	 *            the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}

	/**
	 * @param middleName
	 *            the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName
	 *            the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the dateOfBirth
	 */
	public String getDateOfBirth() {
		return dateOfBirth;
	}

	/**
	 * @param dateOfBirth
	 *            the dateOfBirth to set
	 */
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * @param sex
	 *            the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * @return the passportNumber
	 */
	public String getPassportNumber() {
		return passportNumber;
	}

	/**
	 * @param passportNumber
	 *            the passportNumber to set
	 */
	public void setPassportNumber(String passportNumber) {
		this.passportNumber = passportNumber;
	}

	/**
	 * @return the countryOfIssue
	 */
	public String getCountryOfIssue() {
		return countryOfIssue;
	}

	/**
	 * @param countryOfIssue
	 *            the countryOfIssue to set
	 */
	public void setCountryOfIssue(String countryOfIssue) {
		this.countryOfIssue = countryOfIssue;
	}

	/**
	 * @return the nationality
	 */
	public String getNationality() {
		return nationality;
	}

	/**
	 * @param nationality
	 *            the nationality to set
	 */
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	/**
	 * @return the religion
	 */
	public String getReligion() {
		return religion;
	}

	/**
	 * @param religion
	 *            the religion to set
	 */
	public void setReligion(String religion) {
		this.religion = religion;
	}

	/**
	 * @return the countryOfBirth
	 */
	public String getCountryOfBirth() {
		return countryOfBirth;
	}

	/**
	 * @param countryOfBirth
	 *            the countryOfBirth to set
	 */
	public void setCountryOfBirth(String countryOfBirth) {
		this.countryOfBirth = countryOfBirth;
	}

	/**
	 * @return the levelId
	 */
	public int getLevelId() {
		return levelId;
	}

	/**
	 * @param levelId
	 *            the levelId to set
	 */
	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}

	/**
	 * @return the other
	 */
	public String getOther() {
		return other;
	}

	/**
	 * @param other
	 *            the other to set
	 */
	public void setOther(String other) {
		this.other = other;
	}

	/**
	 * @return the disabilityMedication
	 */
	public String getDisabilityMedication() {
		return disabilityMedication;
	}

	/**
	 * @param disabilityMedication
	 *            the disabilityMedication to set
	 */
	public void setDisabilityMedication(String disabilityMedication) {
		this.disabilityMedication = disabilityMedication;
	}

	/**
	 * @return the languageSpokenAtHome
	 */
	public String getLanguageSpokenAtHome() {
		return languageSpokenAtHome;
	}

	/**
	 * @param languageSpokenAtHome
	 *            the languageSpokenAtHome to set
	 */
	public void setLanguageSpokenAtHome(String languageSpokenAtHome) {
		this.languageSpokenAtHome = languageSpokenAtHome;
	}

	/**
	 * @return the otherLanguageSpoken
	 */
	public String getOtherLanguageSpoken() {
		return otherLanguageSpoken;
	}

	/**
	 * @param otherLanguageSpoken
	 *            the otherLanguageSpoken to set
	 */
	public void setOtherLanguageSpoken(String otherLanguageSpoken) {
		this.otherLanguageSpoken = otherLanguageSpoken;
	}

	/**
	 * @return the expectedDateOfArrivalAdmission
	 */
	public Date getExpectedDateOfArrivalAdmission() {
		return expectedDateOfArrivalAdmission;
	}

	/**
	 * @param expectedDateOfArrivalAdmission
	 *            the expectedDateOfArrivalAdmission to set
	 */
	public void setExpectedDateOfArrivalAdmission(
			Date expectedDateOfArrivalAdmission) {
		this.expectedDateOfArrivalAdmission = expectedDateOfArrivalAdmission;
	}

	/**
	 * @return the personResponsibleForPayingFees
	 */
	public String getPersonResponsibleForPayingFees() {
		return personResponsibleForPayingFees;
	}

	/**
	 * @param personResponsibleForPayingFees
	 *            the personResponsibleForPayingFees to set
	 */
	public void setPersonResponsibleForPayingFees(
			String personResponsibleForPayingFees) {
		this.personResponsibleForPayingFees = personResponsibleForPayingFees;
	}

	/**
	 * @return the applicantType
	 */
	public String getApplicantType() {
		return applicantType;
	}

	/**
	 * @param applicantType
	 *            the applicantType to set
	 */
	public void setApplicantType(String applicantType) {
		this.applicantType = applicantType;
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the admissionRequested
	 */
	public Date getAdmissionRequested() {
		return admissionRequested;
	}

	/**
	 * @param admissionRequested
	 *            the admissionRequested to set
	 */
	public void setAdmissionRequested(Date admissionRequested) {
		this.admissionRequested = admissionRequested;
	}

	/**
	 * @return the state
	 */
	public int getState() {
		return state;
	}

	/**
	 * @param state
	 *            the state to set
	 */
	public void setState(int state) {
		this.state = state;
	}

	/**
	 * @return the archived
	 */
	public boolean isArchived() {
		return archived;
	}

	/**
	 * @param archived
	 *            the archived to set
	 */
	public void setArchived(boolean archived) {
		this.archived = archived;
	}

	public static void updateArchiveStatus(ApplicantT applicantT) {
		try {
			String sqlStr = "update tbl_applicant_t set archived = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setBoolean(1, applicantT.isArchived());
			pStmt.setString(2, applicantT.getId());
			//System.out.println(pStmt);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static ApplicantT getApplicantT(String idNumber){
		ApplicantT applicantT = null;
		try{
			String query = "select * from tbl_applicant_t where id = '"+idNumber+"'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				applicantT = new ApplicantT(rSet.getString("id"), rSet.getString("first_name"), rSet.getString("middle_name"), 
						rSet.getString("last_name"), rSet.getString("date_of_birth"), rSet.getString("sex"), rSet.getString("passport_number"), rSet.getString("country_of_issue"), 
						rSet.getString("nationality"), rSet.getString("religion"), rSet.getString("country_of_birth"), rSet.getInt("level_id"), rSet.getString("other"), 
						rSet.getString("disability_medication"), rSet.getString("language_spoken_at_home"), rSet.getString("other_language_spoken"), 
						rSet.getDate("expected_date_of_arrival_admission"), rSet.getString("person_responsible_for_paying_fees"), rSet.getString("applicant_type"), 
						rSet.getString("status"), rSet.getDate("date_admission_requested"), rSet.getInt("state"), rSet.getBoolean("archived"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return applicantT;
	}
}// end class
