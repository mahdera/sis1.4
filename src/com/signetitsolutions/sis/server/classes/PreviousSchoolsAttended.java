/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

/**
 * @author Leki
 * 
 */
public class PreviousSchoolsAttended {
	private long id;
	private String nameOfSchool;
	private String typeOfSchool;
	private String years;
	private String classes;
	private String languageUsed;
	private String applicantId;

	/**
	 * 
	 */
	public PreviousSchoolsAttended() {
		super();
	}

	/**
	 * @param nameOfSchool
	 * @param years
	 * @param classes
	 * @param languageUsed
	 * @param applicantId
	 */
	public PreviousSchoolsAttended(String nameOfSchool, String typeOfSchool,
			String years, String classes, String languageUsed,
			String applicantId) {
		super();
		this.nameOfSchool = nameOfSchool;
		this.typeOfSchool = typeOfSchool;
		this.years = years;
		this.classes = classes;
		this.languageUsed = languageUsed;
		this.applicantId = applicantId;
	}

	/**
	 * @param id
	 * @param nameOfSchool
	 * @param years
	 * @param classes
	 * @param languageUsed
	 * @param applicantId
	 */
	public PreviousSchoolsAttended(long id, String nameOfSchool,
			String typeOfSchool, String years, String classes,
			String languageUsed, String applicantId) {
		super();
		this.id = id;
		this.nameOfSchool = nameOfSchool;
		this.typeOfSchool = typeOfSchool;
		this.years = years;
		this.classes = classes;
		this.languageUsed = languageUsed;
		this.applicantId = applicantId;
	}

	/**
	 * @return the typeOfSchool
	 */
	public String getTypeOfSchool() {
		return typeOfSchool;
	}

	/**
	 * @param typeOfSchool
	 *            the typeOfSchool to set
	 */
	public void setTypeOfSchool(String typeOfSchool) {
		this.typeOfSchool = typeOfSchool;
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
	 * @return the nameOfSchool
	 */
	public String getNameOfSchool() {
		return nameOfSchool;
	}

	/**
	 * @param nameOfSchool
	 *            the nameOfSchool to set
	 */
	public void setNameOfSchool(String nameOfSchool) {
		this.nameOfSchool = nameOfSchool;
	}

	/**
	 * @return the years
	 */
	public String getYears() {
		return years;
	}

	/**
	 * @param years
	 *            the years to set
	 */
	public void setYears(String years) {
		this.years = years;
	}

	/**
	 * @return the classes
	 */
	public String getClasses() {
		return classes;
	}

	/**
	 * @param classes
	 *            the classes to set
	 */
	public void setClasses(String classes) {
		this.classes = classes;
	}

	/**
	 * @return the languageUsed
	 */
	public String getLanguageUsed() {
		return languageUsed;
	}

	/**
	 * @param languageUsed
	 *            the languageUsed to set
	 */
	public void setLanguageUsed(String languageUsed) {
		this.languageUsed = languageUsed;
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

	public void addPreviousSchoolsAttended() {
		try {
			String command = "insert into tbl_preivous_schools_attended(name_of_school,type_of_school,years,classes,language_used,applicant_id) "
					+ "values('"
					+ this.getNameOfSchool()
					+ "','"
					+ this.getTypeOfSchool()
					+ "','"
					+ this.getYears()
					+ "','"
					+ this.getClasses()
					+ "','"
					+ this.getLanguageUsed()
					+ "','" + this.getApplicantId() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updatePreviousSchoolsAttended() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deletePreviousSchoolsAttended(long id) {
		try {
			String command = "delete from tbl_preivous_schools_attended where id = "
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PreviousSchoolsAttended> getAllPreviousSchoolsAttended() {
		List<PreviousSchoolsAttended> list = new ArrayList<PreviousSchoolsAttended>();
		PreviousSchoolsAttended previousSchoolsAttended = null;
		try {
			String query = "select * from tbl_preivous_schools_attended order by name_of_school";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				previousSchoolsAttended = new PreviousSchoolsAttended(
						rSet.getLong("id"), rSet.getString("name_of_school"),
						rSet.getString("type_of_school"),
						rSet.getString("years"), rSet.getString("classes"),
						rSet.getString("language_used"),
						rSet.getString("applicant_id"));
				list.add(previousSchoolsAttended);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<PreviousSchoolsAttended> getAllPreviousSchoolsAttendedForApplicant(
			String applicantId) {
		List<PreviousSchoolsAttended> list = new ArrayList<PreviousSchoolsAttended>();
		// JOptionPane.showMessageDialog(null, applicantId);
		PreviousSchoolsAttended previousSchoolsAttended = null;
		try {
			String query = "select * from tbl_preivous_schools_attended where applicant_id = '"
					+ applicantId + "' order by name_of_school";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				previousSchoolsAttended = new PreviousSchoolsAttended(
						rSet.getLong("id"), rSet.getString("name_of_school"),
						rSet.getString("type_of_school"),
						rSet.getString("years"), rSet.getString("classes"),
						rSet.getString("language_used"),
						rSet.getString("applicant_id"));
				list.add(previousSchoolsAttended);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PreviousSchoolsAttended getPreviousSchoolsAttended() {
		PreviousSchoolsAttended previousSchoolsAttended = null;
		try {
			String query = "select * from tbl_preivous_schools_attended order by name_of_school";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				previousSchoolsAttended = new PreviousSchoolsAttended(
						rSet.getLong("id"), rSet.getString("name_of_school"),
						rSet.getString("type_of_school"),
						rSet.getString("years"), rSet.getString("classes"),
						rSet.getString("language_used"),
						rSet.getString("applicant_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return previousSchoolsAttended;
	}
}// end class
