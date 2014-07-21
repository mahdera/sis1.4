/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

//import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.swing.JOptionPane;

import com.mysql.jdbc.PreparedStatement;

/**
 * @author Leki
 * 
 */
public class Applicant {
	private String id;
	private String firstName;
	private String middleName;
	private String lastName;
	private Date dateOfBirth;
	private String dateOfBirth1;
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
	private String expectedDateOfArrivalAdmission1;
	private String personResponsibleForPayingFees;
	private String applicantType;
	private String status;
	private Date dateAdmissionRequested;
	private String dateAdmissionRequested1;
	private String type;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setExpectedDateOfArrivalAdmission1(
			String expectedDateOfArrivalAdmission1) {
		this.expectedDateOfArrivalAdmission1 = expectedDateOfArrivalAdmission1;
	}

	/**
	 * 
	 */
	public Applicant() {
		super();
	}

	/**
	 * @param id
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 * @param dateOfBirth
	 * @param sex
	 * @param nationality
	 */
	public Applicant(String id, String firstName, String middleName,
			String lastName, Date dateOfBirth, String sex, String nationality) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.sex = sex;
		this.nationality = nationality;
	}

	public Applicant(String id, String first, String middle, String last,
			String sex, String type, String nationality, String date) {
		this.id = id;
		this.firstName = first;
		this.middleName = middle;
		this.lastName = last;
		this.sex = sex;
		this.type = type;
		this.nationality = nationality;
		this.dateAdmissionRequested1 = date;
	}

	/**
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 * @param dateOfBirth
	 * @param sex
	 * @param passportNumber
	 * @param countryOfIssue
	 * @param nationality
	 * @param countryOfBirth
	 * @param levelId
	 * @param other
	 * @param disabilityMedication
	 * @param languageSpokenAtHome
	 * @param otherLanguageSpoken
	 * @param expectedDateOfArrivalAdmission
	 * @param personResponsibleForPayingFees
	 */
	public Applicant(String firstName, String middleName, String lastName,
			Date dateOfBirth, String sex, String passportNumber,
			String countryOfIssue, String nationality, String religion,
			String countryOfBirth, int levelId, String other,
			String disabilityMedication, String languageSpokenAtHome,
			String otherLanguageSpoken, Date expectedDateOfArrivalAdmission,
			String personResponsibleForPayingFees, String applicantType,
			String status) {
		super();
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
	 * @param countryOfBirth
	 * @param levelId
	 * @param other
	 * @param disabilityMedication
	 * @param languageSpokenAtHome
	 * @param otherLanguageSpoken
	 * @param expectedDateOfArrivalAdmission
	 * @param personResponsibleForPayingFees
	 */
	public Applicant(String id, String firstName, String middleName,
			String lastName, Date dateOfBirth, String sex,
			String passportNumber, String countryOfIssue, String nationality,
			String religion, String countryOfBirth, int levelId, String other,
			String disabilityMedication, String languageSpokenAtHome,
			String otherLanguageSpoken, Date expectedDateOfArrivalAdmission,
			String personResponsibleForPayingFees, String applicantType,
			String status) {
		super();
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
	 * @param dateAdmissionRequested
	 */

	// remider, changed the String to String
	public Applicant(String id, String firstName, String middleName,
			String lastName, Date dateOfBirth, String sex,
			String passportNumber, String countryOfIssue, String nationality,
			String religion, String countryOfBirth, int levelId, String other,
			String disabilityMedication, String languageSpokenAtHome,
			String otherLanguageSpoken, Date expectedDateOfArrivalAdmission,
			String personResponsibleForPayingFees, String applicantType,
			String status, Date dateAdmissionRequested) {
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
		this.dateAdmissionRequested = dateAdmissionRequested;
	}

	// The bottom is a replica of the above method in hope of dicarding date
	// issues

	public Applicant(String id, String firstName, String middleName,
			String lastName, String dateOfBirth, String sex,
			String passportNumber, String countryOfIssue, String nationality,
			String religion, String countryOfBirth, int levelId, String other,
			String disabilityMedication, String languageSpokenAtHome,
			String otherLanguageSpoken, String expectedDateOfArrivalAdmission,
			String personResponsibleForPayingFees, String applicantType,
			String status, String dateAdmissionRequested) {
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.dateOfBirth1 = dateOfBirth;
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
		this.expectedDateOfArrivalAdmission1 = expectedDateOfArrivalAdmission;
		this.personResponsibleForPayingFees = personResponsibleForPayingFees;
		this.applicantType = applicantType;
		this.status = status;
		this.dateAdmissionRequested1 = dateAdmissionRequested;
	}

	/**
	 * @param id
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 */
	public Applicant(String id, String firstName, String middleName,
			String lastName) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
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
	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public String getDateOfBirth1() {
		return dateOfBirth1;
	}

	/**
	 * @param dateOfBirth
	 *            the dateOfBirth to set
	 */
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public void setDateOfBirth1(String dateOfBirth) {
		this.dateOfBirth1 = dateOfBirth;
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

	public String getExpectedDateOfArrivalAdmission1() {
		return expectedDateOfArrivalAdmission1;
	}

	/**
	 * @param expectedDateOfArrivalAdmission
	 *            the expectedDateOfArrivalAdmission to set
	 */
	public void setExpectedDateOfArrivalAdmission(
			Date expectedDateOfArrivalAdmission) {
		this.expectedDateOfArrivalAdmission = expectedDateOfArrivalAdmission;
	}

	public void setExpectedDateOfArrivalAdmission(
			String expectedDateOfArrivalAdmission) {
		this.expectedDateOfArrivalAdmission1 = expectedDateOfArrivalAdmission;
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
	 * @return the dateAdmissionRequested
	 */
	public Date getDateAdmissionRequested() {
		return dateAdmissionRequested;
	}

	public String getDateAdmissionRequested1() {
		return dateAdmissionRequested1;
	}

	/**
	 * @param dateAdmissionRequested
	 *            the dateAdmissionRequested to set
	 */
	public void setDateAdmissionRequested(Date dateAdmissionRequested) {
		this.dateAdmissionRequested = dateAdmissionRequested;
	}

	public void setDateAdmissionRequested1(String dateAdmissionRequested) {
		this.dateAdmissionRequested1 = dateAdmissionRequested;
	}

	/*public void addApplicant() {
		try {
			// JOptionPane.showMessageDialog(null,
			// this.generateApplicantId(this.getApplicantType().charAt(0),this.getExpectedDateOfArrivalAdmission().toString().substring(2,4)));
			// String command = "insert into tbl_applicant_t values(" +
			// "'"+this.generateApplicantId(this.getApplicantType().charAt(0),
			// this.getExpectedDateOfArrivalAdmission().toString().substring(2,4))+"','"
			// + this.getFirstName() + "','" + this.getMiddleName()
			// + "','" + this.getLastName() + "','"
			// + this.getDateOfBirth() + "','" + this.getSex() + "','"
			// + this.getPassportNumber() + "','"
			// + this.getCountryOfIssue() + "','" + this.getNationality()
			// + "','" + this.getReligion() + "','"
			// + this.getCountryOfBirth() + "'," + this.getLevelId()
			// + ",'" + this.getOther() + "','"
			// + this.getDisabilityMedication() + "','"
			// + this.getLanguageSpokenAtHome() + "','"
			// + this.getOtherLanguageSpoken() + "','"
			// + this.getExpectedDateOfArrivalAdmission() + "','"
			// + this.getPersonResponsibleForPayingFees() + "','"
			// + this.getApplicantType() + "','" + this.getStatus()
			// + "','" + this.getExpectedDateOfArrivalAdmission()
			// + "'," + 0 + ")";
			String command = "insert into tbl_applicant_t values(" + "'"
					+ this.generateApplicantId(this.getApplicantType()
							.charAt(0), this
							.getExpectedDateOfArrivalAdmission().toString()
							.substring(2, 4)) + "','" + this.getFirstName().replace("'", "\'\"\'\"\'")
					+ "','" + this.getMiddleName().replace("'", "\'\"\'\"\'") + "','" + this.getLastName().replace("'", "\'\"\'\"\'")
					+ "','" + this.getDateOfBirth() + "','" + this.getSex()
					+ "','" + this.getPassportNumber() + "','"
					+ this.getCountryOfIssue() + "','" + this.getNationality().replace("'", "\'\"\'\"\'")
					+ "','" + this.getReligion() + "','"
					+ this.getCountryOfBirth() + "'," + this.getLevelId()
					+ ",'" + this.getOther() + "','"
					+ this.getDisabilityMedication().replace("'", "\'\"\'\"\'") + "','"
					+ this.getLanguageSpokenAtHome().replace("'", "\'\"\'\"\'") + "','"
					+ this.getOtherLanguageSpoken().replace("'", "\'\"\'\"\'") + "','"
					+ this.getExpectedDateOfArrivalAdmission() + "','"
					+ this.getPersonResponsibleForPayingFees().replace("'", "\'\"\'\"\'") + "','"
					+ this.getApplicantType() + "','" + "Admission Request"
					+ "','" + this.getExpectedDateOfArrivalAdmission() + "',"
					+ 0 + ")";
			System.out.println("command = "+command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// DBConnection.disconnectDatabase();
		}
	}
	*/
	public void addApplicant() {
		try {	
				String command = "insert into tbl_applicant_t values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement p = (PreparedStatement) DBConnection.getDatabaseConnection().prepareStatement(command);
				
				p.setString(1, this.generateApplicantId(this.getApplicantType().charAt(0), this.getExpectedDateOfArrivalAdmission().toString().substring(2, 4)));
				p.setString(2, this.getFirstName());
				p.setString(3, this.getMiddleName());
				p.setString(4, this.getLastName());
				p.setString(5,  this.getDateOfBirth1());
				p.setString(6, this.getSex());
				p.setString(7, this.getPassportNumber());
				p.setString(8, this.getCountryOfIssue());
				p.setString(9, this.getNationality());
				p.setString(10, this.getReligion());
				p.setString(11, this.getCountryOfBirth());
				p.setInt(12, this.getLevelId());
				p.setString(13, this.getOther());
				p.setString(14, this.getDisabilityMedication());
				p.setString(15, this.getLanguageSpokenAtHome());
				p.setString(16, this.getOtherLanguageSpoken());
				p.setDate(17, (java.sql.Date) this.getExpectedDateOfArrivalAdmission());
				p.setString(18, this.getPersonResponsibleForPayingFees());
				p.setString(19, this.getApplicantType());
				p.setString(20, "Admission Request");
				p.setDate(21, (java.sql.Date) this.getExpectedDateOfArrivalAdmission());
				p.setString(22, "0");	
				
				p.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBConnection.disconnectDatabase();
			}
	}
	public static void updateApplicant(String applicantId,
			String applicantFirstName, String appplicantMiddleName,
			String applicantLastName, String dob, String sex,
			String passportNumber, String countryOfIssue, String nationality,
			String religion, String countryOfBirth, String others,
			String disablityMedication, String languageSpokenAtHome,
			String personResponsibleForPayingFees, String expected) {
		try {
			String command;
			if (!expected.equalsIgnoreCase("null")) {
				command = "update tbl_applicant_t set first_name=? ,middle_name=? ,last_name=? ,date_of_birth=? ,sex=?, " +
						"passport_number=? ,country_of_issue=? ,nationality=?, religion=? ,country_of_birth=?, other=?, " +
						"disability_medication=?, language_spoken_at_home=?, person_responsible_for_paying_fees=?, " +
						"expected_date_of_arrival_admission=? " +
						"where id=? ";
				PreparedStatement p = (PreparedStatement) DBConnection.getDatabaseConnection().prepareStatement(command);
				
				p.setString(1, applicantFirstName);
				p.setString(2, appplicantMiddleName);
				p.setString(3, applicantLastName);
				p.setString(4, dob);
				p.setString(5, sex);
				p.setString(6, passportNumber);
				p.setString(7, countryOfIssue);
				p.setString(8, nationality);
				p.setString(9, religion);
				p.setString(10, countryOfBirth);
				p.setString(11, others);
				p.setString(12, disablityMedication);
				p.setString(13, languageSpokenAtHome);
				p.setString(14, personResponsibleForPayingFees);
				p.setString(15, expected);
				p.setString(16, applicantId);
				
				p.executeUpdate();
				
			} else {
				command = "update tbl_applicant_t set first_name=? ,middle_name=? ,last_name=? ,date_of_birth=? ,sex=?, " +
						"passport_number=? ,country_of_issue=? ,nationality=?, religion=? ,country_of_birth=?, other=?, " +
						"disability_medication=?, language_spoken_at_home=?, person_responsible_for_paying_fees=? " +
						"where id=? ";
				PreparedStatement p = (PreparedStatement) DBConnection.getDatabaseConnection().prepareStatement(command);
				
				p.setString(1, applicantFirstName);
				p.setString(2, appplicantMiddleName);
				p.setString(3, applicantLastName);
				p.setString(4, dob);
				p.setString(5, sex);
				p.setString(6, passportNumber);
				p.setString(7, countryOfIssue);
				p.setString(8, nationality);
				p.setString(9, religion);
				p.setString(10, countryOfBirth);
				p.setString(11, others);
				p.setString(12, disablityMedication);
				p.setString(13, languageSpokenAtHome);
				p.setString(14, personResponsibleForPayingFees);
				p.setString(15, applicantId);			
				

				p.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// DBConnection.disconnectDatabase();
		}
	}

	public static void deleteAdmissionProcess(String id, int sid) {
		try {
			// JOptionPane.showMessageDialog(null, id);
			String com2 = "update tbl_applicant_t set status='deleted' where id='"
					+ id + "'";
			// String com2="delete from tbl_applicant_t where id='"+id+"'";
			String com3 = "delete from tbl_student_level_t where student_id='"
					+ id + "' and section_id=" + sid;
			// String command = "delete from tbl_applicant_t where id ='" +
			// id+"'";
			DBConnection.writeToDatabase(com3);
			DBConnection.writeToDatabase(com2);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// DBConnection.disconnectDatabase();
		}
	}

	public static void deleteApplicant(String id) {
		try {
			String com2 = "update tbl_applicant_t set status='rejected' where id='"
					+ id + "'";
			// String command = "delete from tbl_applicant_t where id ='" +
			// id+"'";
			DBConnection.writeToDatabase(com2);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// DBConnection.disconnectDatabase();
		}
	}

	public static List<Applicant> getAllApplicants() {
		List<Applicant> list = new ArrayList<Applicant>();
		Applicant applicant = null;
		try {
			String query = "select * from tbl_applicant_t order by first_name,middle_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				applicant = new Applicant(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getDate("date_of_birth"), 
						rSet.getString("sex"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("nationality"),
						rSet.getString("religion"),
						rSet.getString("country_of_birth"),
						rSet.getInt("level_id"), 
						rSet.getString("other"),
						rSet.getString("disability_medication"),
						rSet.getString("language_spoken_at_home"),
						rSet.getString("other_language_spoken"),
						rSet.getDate("expected_date_of_arrival_admission"),
						rSet.getString("person_responsible_for_paying_fees"),
						rSet.getString("applicant_type"),
						rSet.getString("status"),
						rSet.getDate("date_admission_requested"));
				list.add(applicant);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Applicant> getAllApplicantsWithStatus(String status) {
		List<Applicant> list = new ArrayList<Applicant>();
		Applicant applicant = null;
		try {
			// String query =
			// "select * from tbl_applicant_t where status = '"+status+"' and state=0";
			String query = "select * from tbl_applicant_t where status='"
					+ status + "' order by first_name,middle_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				applicant = new Applicant(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getString("date_of_birth"), rSet.getString("sex"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("nationality"),
						rSet.getString("religion"),
						rSet.getString("country_of_birth"),
						rSet.getInt("level_id"), rSet.getString("other"),
						rSet.getString("disability_medication"),
						rSet.getString("language_spoken_at_home"),
						rSet.getString("other_language_spoken"),
						rSet.getString("expected_date_of_arrival_admission"),
						rSet.getString("person_responsible_for_paying_fees"),
						rSet.getString("applicant_type"),
						rSet.getString("status"),
						rSet.getString("date_admission_requested"));
				list.add(applicant);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Applicant> getAllApplicantsWithStatuslevel(
			String status, int level) {
		List<Applicant> list = new ArrayList<Applicant>();
		Applicant applicant = null;
		try {
			// String query =
			// "select * from tbl_applicant_t where status = '"+status+"' and state=0";
			String query = "select * from tbl_applicant_t where status='"
					+ status + "' and level_id=" + level
					+ " order by first_name,middle_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				applicant = new Applicant(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getString("date_of_birth"), rSet.getString("sex"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("nationality"),
						rSet.getString("religion"),
						rSet.getString("country_of_birth"),
						rSet.getInt("level_id"), rSet.getString("other"),
						rSet.getString("disability_medication"),
						rSet.getString("language_spoken_at_home"),
						rSet.getString("other_language_spoken"),
						rSet.getString("expected_date_of_arrival_admission"),
						rSet.getString("person_responsible_for_paying_fees"),
						rSet.getString("applicant_type"),
						rSet.getString("status"),
						rSet.getString("date_admission_requested"));
				list.add(applicant);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static Applicant getApplicantUsingStudentId(String studentId){
		Applicant applicant = null;
		try {			
			String query = "select * from tbl_applicant_t where id = '" + studentId +"'";
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {				
				applicant = new Applicant(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getString("date_of_birth"), rSet.getString("sex"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("nationality"),
						rSet.getString("religion"),
						rSet.getString("country_of_birth"),
						rSet.getInt("level_id"), rSet.getString("other"),
						rSet.getString("disability_medication"),
						rSet.getString("language_spoken_at_home"),
						rSet.getString("other_language_spoken"),
						rSet.getString("expected_date_of_arrival_admission"),
						rSet.getString("person_responsible_for_paying_fees"),
						rSet.getString("applicant_type"),
						rSet.getString("status"),
						rSet.getString("date_admission_requested"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return applicant;
	}
	
	public static Applicant getApplicant(long id){
		Applicant applicant = null;
		try {			
			String query = "select * from tbl_applicant_t where id =" + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {				
				applicant = new Applicant(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getString("date_of_birth"), rSet.getString("sex"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("nationality"),
						rSet.getString("religion"),
						rSet.getString("country_of_birth"),
						rSet.getInt("level_id"), rSet.getString("other"),
						rSet.getString("disability_medication"),
						rSet.getString("language_spoken_at_home"),
						rSet.getString("other_language_spoken"),
						rSet.getString("expected_date_of_arrival_admission"),
						rSet.getString("person_responsible_for_paying_fees"),
						rSet.getString("applicant_type"),
						rSet.getString("status"),
						rSet.getString("date_admission_requested"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return applicant;
	}

	public static Applicant getApplicant(String id) {
		Applicant applicant = null;
		try {			
			String query = "select * from tbl_applicant_t where id ='"+id+ "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {				
				applicant = new Applicant(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getString("date_of_birth"), rSet.getString("sex"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("nationality"),
						rSet.getString("religion"),
						rSet.getString("country_of_birth"),
						rSet.getInt("level_id"), rSet.getString("other"),
						rSet.getString("disability_medication"),
						rSet.getString("language_spoken_at_home"),
						rSet.getString("other_language_spoken"),
						rSet.getString("expected_date_of_arrival_admission"),
						rSet.getString("person_responsible_for_paying_fees"),
						rSet.getString("applicant_type"),
						rSet.getString("status"),
						rSet.getString("date_admission_requested"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return applicant;
	}

	public static Applicant getApplicantUsingPassportNumber(
			String studentFirstName, String studentMiddleName,
			String studentLastName) {
		Applicant applicant = null;
		try {
			String query = "select * from tbl_applicant_t where first_name = '"
					+ studentFirstName + "' and middle_name='"
					+ studentMiddleName + "' and last_name='" + studentLastName
					+ "'";
				ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				applicant = new Applicant(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getDate("date_of_birth"), rSet.getString("sex"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("nationality"),
						rSet.getString("religion"),
						rSet.getString("country_of_birth"),
						rSet.getInt("level_id"), rSet.getString("other"),
						rSet.getString("disability_medication"),
						rSet.getString("language_spoken_at_home"),
						rSet.getString("other_language_spoken"),
						rSet.getDate("expected_date_of_arrival_admission"),
						rSet.getString("person_responsible_for_paying_fees"),
						rSet.getString("applicant_type"),
						rSet.getString("status"),
						rSet.getDate("date_admission_requested"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return applicant;
	}

	public static float getApplicantAge(String applicantId) {
		float age = 0.0f;
		try {
			// this is mssql version String query =
			// "select StringDIFF(DAY,String_of_birth,GETString()) as ageInDays from tbl_applicant where id = "+applicantId;
			String query = "select DATEDIFF(now(),date_of_birth) as ageInDays from tbl_applicant_t where id = '"
					+ applicantId + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				float ageInDays = rSet.getFloat("ageInDays");
				age = ageInDays / (float) 365;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return age;
	}

	public static void updateStatusOfApplicantTo(String applicantId,
			String status) {
		try {
			String command = "update tbl_applicant_t set status = '" + status
					+ "' where id = '" + applicantId + "'";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateStatusOfApplicantTo(String applicantId,
			String status, int level) {
		try {
			String command = "update tbl_applicant_t set status = '" + status
					+ "' , level_id=" + level + " where id = '" + applicantId
					+ "'";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public String generateApplicantId(char type, String yr_prfx) {
		try {
			String com = "select count(*) as num from tbl_applicant_t";
			ResultSet rs = DBConnection.readFromDatabase(com);
			rs.next();
			String id = rs.getString("num") + type + "/" + yr_prfx;
			return id;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}

}// end class
