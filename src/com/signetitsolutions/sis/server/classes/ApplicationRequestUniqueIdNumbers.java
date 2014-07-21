/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;

import javax.swing.JOptionPane;

/**
 * @author alemayehu
 * 
 */
public class ApplicationRequestUniqueIdNumbers {
	private long id;
	private String applicantId;
	private String generatedIdNumber;

	/**
	 * @param applicantId
	 * @param generatedIdNumber
	 */
	public ApplicationRequestUniqueIdNumbers(String applicantId,
			String generatedIdNumber) {
		this.applicantId = applicantId;
		this.generatedIdNumber = generatedIdNumber;
	}

	/**
	 * @param id
	 * @param applicantId
	 * @param generatedIdNumber
	 */
	public ApplicationRequestUniqueIdNumbers(long id, String applicantId,
			String generatedIdNumber) {
		this.id = id;
		this.applicantId = applicantId;
		this.generatedIdNumber = generatedIdNumber;
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

	/**
	 * @return the generatedIdNumber
	 */
	public String getGeneratedIdNumber() {
		return generatedIdNumber;
	}

	/**
	 * @param generatedIdNumber
	 *            the generatedIdNumber to set
	 */
	public void setGeneratedIdNumber(String generatedIdNumber) {
		this.generatedIdNumber = generatedIdNumber;
	}

	public void addApplicationRequestUniqueIdNumber() {
		try {
			// JOptionPane.showMessageDialog(
			// null,
			// "@unique " + this.getApplicantId() + ", "
			// + this.getGeneratedIdNumber());
			String command = "insert into tbl_application_request_unique_id_numbers(applicant_id,generated_id_number) "
					+ "values('"
					+ this.getApplicantId()
					+ "','"
					+ this.getGeneratedIdNumber() + "')";
			
		DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static ApplicationRequestUniqueIdNumbers getApplicationRequestUniqueIdNumberForThisApplicant(
			String applicantId) {
		ApplicationRequestUniqueIdNumbers app = null;
		try {
			String query = "select * from tbl_application_request_unique_id_numbers where applicant_id = '"
					+ applicantId + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				app = new ApplicationRequestUniqueIdNumbers(rSet.getLong("id"),
						rSet.getString("applicant_id"),
						rSet.getString("generated_id_number"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return app;
	}
}// end class
