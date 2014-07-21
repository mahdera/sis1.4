/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Leki
 * 
 */
public class EmergencyContact {
	private String id;
	private String fullName;
	private String relationship;
	private String officeTelephone;
	private String homeTelephone;
	private String mobileTelephone;
	private String applicantId;

	/**
	 * 
	 */
	public EmergencyContact() {
		super();
	}

	/**
	 * @param fullName
	 * @param relationship
	 * @param officeTelephone
	 * @param homeTelephone
	 * @param mobileTelephone
	 * @param applicantId
	 */
	public EmergencyContact(String fullName, String relationship,
			String officeTelephone, String homeTelephone,
			String mobileTelephone, String applicantId) {
		super();
		this.fullName = fullName;
		this.relationship = relationship;
		this.officeTelephone = officeTelephone;
		this.homeTelephone = homeTelephone;
		this.mobileTelephone = mobileTelephone;
		this.applicantId = applicantId;
	}

	/**
	 * @param id
	 * @param fullName
	 * @param relationship
	 * @param officeTelephone
	 * @param homeTelephone
	 * @param mobileTelephone
	 * @param applicantId
	 */
	public EmergencyContact(String id, String fullName, String relationship,
			String officeTelephone, String homeTelephone,
			String mobileTelephone, String applicantId) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.relationship = relationship;
		this.officeTelephone = officeTelephone;
		this.homeTelephone = homeTelephone;
		this.mobileTelephone = mobileTelephone;
		this.applicantId = applicantId;
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
	 * @return the fullName
	 */
	public String getFullName() {
		return fullName;
	}

	/**
	 * @param fullName
	 *            the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	/**
	 * @return the relationship
	 */
	public String getRelationship() {
		return relationship;
	}

	/**
	 * @param relationship
	 *            the relationship to set
	 */
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	/**
	 * @return the officeTelephone
	 */
	public String getOfficeTelephone() {
		return officeTelephone;
	}

	/**
	 * @param officeTelephone
	 *            the officeTelephone to set
	 */
	public void setOfficeTelephone(String officeTelephone) {
		this.officeTelephone = officeTelephone;
	}

	/**
	 * @return the homeTelephone
	 */
	public String getHomeTelephone() {
		return homeTelephone;
	}

	/**
	 * @param homeTelephone
	 *            the homeTelephone to set
	 */
	public void setHomeTelephone(String homeTelephone) {
		this.homeTelephone = homeTelephone;
	}

	/**
	 * @return the mobileTelephone
	 */
	public String getMobileTelephone() {
		return mobileTelephone;
	}

	/**
	 * @param mobileTelephone
	 *            the mobileTelephone to set
	 */
	public void setMobileTelephone(String mobileTelephone) {
		this.mobileTelephone = mobileTelephone;
	}

	/**
	 * @return the applicantId
	 */
	public String getApplicantId() {
		return applicantId;
	}

	/**
	 * @param applicantId
	 *            the applicantId to set
	 */
	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}

	public void addEmergencyContact() {
		try {
			String command = "insert into tbl_emergency_contact(full_name,relationship,office_telephone,home_telephone,mobile_telephone,applicant_id) "
					+ "values('"
					+ this.getFullName()
					+ "','"
					+ this.getRelationship()
					+ "','"
					+ this.getOfficeTelephone()
					+ "','"
					+ this.getHomeTelephone()
					+ "','"
					+ this.getMobileTelephone()
					+ "','"
					+ this.getApplicantId()
					+ "')";
			
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateEmergencyContact2(int eId, String mobile) {
		try {
			String command = "update tbl_emergency_contact set mobile_telephone='"
					+ mobile + "' where id=" + eId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateEmergencyContact(int eId, String fullName,
			String relationship, String officeTel, String homeTel, String mobile) {
		try {
			String command = "update tbl_emergency_contact set full_name='"
					+ fullName + "',relationship='" + relationship
					+ "',office_telephone='" + officeTel + "',home_telephone='"
					+ homeTel + "',mobile_telephone='" + mobile + "' where id="
					+ eId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteEmergencyContact(String id) {
		try {
			String command = "delete from tbl_emergency_contact where id=" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmergencyContact> getAllEmergencyContacts() {
		List<EmergencyContact> list = new ArrayList<EmergencyContact>();
		EmergencyContact emergencyContact = null;
		try {
			String query = "select * from tbl_emergency_contact order by full_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				emergencyContact = new EmergencyContact(rSet.getString("id"),
						rSet.getString("full_name"),
						rSet.getString("relationship"),
						rSet.getString("office_telephone"),
						rSet.getString("home_telephone"),
						rSet.getString("mobile_telephone"),
						rSet.getString("applicant_id"));
				list.add(emergencyContact);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmergencyContact getEmergencyContact(String id) {
		EmergencyContact emergencyContact = null;
		try {
			String query = "select * from tbl_emergency_contact where id = "
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				emergencyContact = new EmergencyContact(rSet.getString("id"),
						rSet.getString("full_name"),
						rSet.getString("relationship"),
						rSet.getString("office_telephone"),
						rSet.getString("home_telephone"),
						rSet.getString("mobile_telephone"),
						rSet.getString("applicant_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return emergencyContact;
	}

	public static EmergencyContact getEmergencyContactForApplicant(
			String applicantId) {
		EmergencyContact emergencyContact = null;
		try {
			String query = "select * from tbl_emergency_contact where applicant_id = '"
					+ applicantId + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if (!rSet.next()) {
				emergencyContact = new EmergencyContact("-1", "", "", "", "",
						"", "");
			} else {
				do {
					emergencyContact = new EmergencyContact(
							rSet.getString("id"), rSet.getString("full_name"),
							rSet.getString("relationship"),
							rSet.getString("office_telephone"),
							rSet.getString("home_telephone"),
							rSet.getString("mobile_telephone"),
							rSet.getString("applicant_id"));
				} while (rSet.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return emergencyContact;
	}
}// end class
