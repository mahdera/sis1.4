/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

/**
 * @author Leki
 * 
 */
public class SiblingAttendingCurrently {
	private long id;
	private String firstName;
	private String middleName;
	private String lastName;
	private String relationship;
	private String applicantId;

	/**
	 * 
	 */
	public SiblingAttendingCurrently() {
		super();
	}

	/**
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 * @param relationship
	 * @param applicantId
	 */
	public SiblingAttendingCurrently(String firstName, String middleName,
			String lastName, String relationship, String applicantId) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.relationship = relationship;
		this.applicantId = applicantId;
	}

	/**
	 * @param id
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 * @param relationship
	 * @param applicantId
	 */
	public SiblingAttendingCurrently(long id, String firstName,
			String middleName, String lastName, String relationship,
			String applicantId) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.relationship = relationship;
		this.applicantId = applicantId;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
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

	public void addSiblingAttendingCurrently() {
		try {
			String command = "insert into tbl_sibling_attending_currently(first_name,middle_name,last_name,applicant_id, relationship) "
					+ "values('"
					+ this.getFirstName()
					+ "','"
					+ this.getMiddleName()
					+ "','"
					+ this.getLastName()
					+ "','"
					+ this.getApplicantId() 
					+ "','"
					+ this.getRelationship()+"')";
			
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateSiblingAttendingCurrently() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteSiblingAttendingCurrently(long id) {
		try {
			String command = "delete from tbl_sibling_attending_currently where id = "
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}
	public static void deleteSiblingAttendingCurrentlyByApplicant(String applicantId) {
		try {
			String command = "delete from db_sis.tbl_sibling_attending_currently where applicant_id = ?";
			PreparedStatement prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(command);
			prs.setString(1, applicantId);			
			prs.executeUpdate();			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}
	
			
	public static List<SiblingAttendingCurrently> getAllSiblingsAttendingCurrently() {
		List<SiblingAttendingCurrently> list = new ArrayList<SiblingAttendingCurrently>();
		SiblingAttendingCurrently siblingAttendingCurrently = null;
		try {
			String query = "select * from tbl_sibling_attending_currently order by first_name,middle_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				siblingAttendingCurrently = new SiblingAttendingCurrently(
						rSet.getLong("id"), rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getString("relationship"),
						rSet.getString("applicant_id"));
				list.add(siblingAttendingCurrently);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<SiblingAttendingCurrently> getAllSiblingsAttendingCurrentlyForApplicant(
			String applicantId) {
		List<SiblingAttendingCurrently> list = new ArrayList<SiblingAttendingCurrently>();
		SiblingAttendingCurrently siblingAttendingCurrently = null;
		try {
			
			String query = "select * from tbl_sibling_attending_currently where applicant_id = '"
					+ applicantId
					+ "' order by first_name,middle_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if (!rSet.next()) {
				siblingAttendingCurrently = new SiblingAttendingCurrently(-1,
						"", "", "", "", "");
				list.add(siblingAttendingCurrently);
			} else {
				do {
					siblingAttendingCurrently = new SiblingAttendingCurrently(
							rSet.getLong("id"), rSet.getString("first_name"),
							rSet.getString("middle_name"),
							rSet.getString("last_name"),
							rSet.getString("relationship"),
							rSet.getString("applicant_id"));
					list.add(siblingAttendingCurrently);
				} while (rSet.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static SiblingAttendingCurrently getSiblingAttendingCurrently(long id) {
		SiblingAttendingCurrently siblingAttendingCurrently = null;
		try {
			String query = "select * from tbl_sibling_attending_currently where id = "
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				siblingAttendingCurrently = new SiblingAttendingCurrently(
						rSet.getLong("id"), rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getString("relationship"),
						rSet.getString("applicant_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return siblingAttendingCurrently;
	}
}// end class
