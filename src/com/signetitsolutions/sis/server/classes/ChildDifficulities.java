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
public class ChildDifficulities {
	private long id;
	private boolean reading;
	private boolean mathematics;
	private boolean language;
	private boolean behavioral;
	private String applicantId;

	/**
	 * 
	 */
	public ChildDifficulities() {
		super();
	}

	/**
	 * @param reading
	 * @param mathematics
	 * @param language
	 * @param behavioral
	 * @param applicantId
	 */
	public ChildDifficulities(boolean reading, boolean mathematics,
			boolean language, boolean behavioral, String applicantId) {
		super();
		this.reading = reading;
		this.mathematics = mathematics;
		this.language = language;
		this.behavioral = behavioral;
		this.applicantId = applicantId;
	}

	/**
	 * @param id
	 * @param reading
	 * @param mathematics
	 * @param language
	 * @param behavioral
	 * @param applicantId
	 */
	public ChildDifficulities(long id, boolean reading, boolean mathematics,
			boolean language, boolean behavioral, String applicantId) {
		super();
		this.id = id;
		this.reading = reading;
		this.mathematics = mathematics;
		this.language = language;
		this.behavioral = behavioral;
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
	 * @return the reading
	 */
	public boolean isReading() {
		return reading;
	}

	/**
	 * @param reading
	 *            the reading to set
	 */
	public void setReading(boolean reading) {
		this.reading = reading;
	}

	/**
	 * @return the mathematics
	 */
	public boolean isMathematics() {
		return mathematics;
	}

	/**
	 * @param mathematics
	 *            the mathematics to set
	 */
	public void setMathematics(boolean mathematics) {
		this.mathematics = mathematics;
	}

	/**
	 * @return the language
	 */
	public boolean isLanguage() {
		return language;
	}

	/**
	 * @param language
	 *            the language to set
	 */
	public void setLanguage(boolean language) {
		this.language = language;
	}

	/**
	 * @return the behavioral
	 */
	public boolean isBehavioral() {
		return behavioral;
	}

	/**
	 * @param behavioral
	 *            the behavioral to set
	 */
	public void setBehavioral(boolean behavioral) {
		this.behavioral = behavioral;
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

	public void addChildDifficulities() {
		try {
			String command = "insert into tbl_child_difficulities(reading,mathematics,language,behavioral,applicant_id)"
					+ " values("
					+ (this.isReading() == false ? 0 : 1)
					+ ","
					+ (this.isMathematics() == false ? 0 : 1)
					+ ","
					+ (this.isLanguage() == false ? 0 : 1)
					+ ","
					+ (this.isBehavioral() == false ? 0 : 1)
					+ ",'"
					+ this.getApplicantId() + "')";
			
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateChildDifficulities(int id, int reading,
			int mathematics, int language, int behavioural) {
		try {
			String command = "update tbl_child_difficulities set reading="
					+ reading + ",mathematics=" + mathematics + ",language="
					+ language + ",behavioral=" + behavioural + " where id="
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteChildDifficulities(long id) {
		try {
			String command = "delete from tbl_child_difficulities where id="
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ChildDifficulities> getAllChildDifficulities() {
		List<ChildDifficulities> list = new ArrayList<ChildDifficulities>();
		ChildDifficulities childDifficulities = null;
		try {
			String query = "select * from tbl_child_difficulities";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				childDifficulities = new ChildDifficulities(rSet.getLong("id"),
						rSet.getBoolean("reading"),
						rSet.getBoolean("mathematics"),
						rSet.getBoolean("language"),
						rSet.getBoolean("behavioral"),
						rSet.getString("applicant_id"));
				list.add(childDifficulities);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ChildDifficulities getChildDifficulitiesForApplicant(
			String applicantId) {
		ChildDifficulities childDifficulities = null;
		try {
			// JOptionPane.showMessageDialog(null, applicantId);
			String query = "select * from tbl_child_difficulities where applicant_id = '"
					+ applicantId + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			// JOptionPane.showMessageDialog(null, rSet.)
			if (!rSet.next()) {
				childDifficulities = new ChildDifficulities(0, false, false,
						false, false, applicantId);
				// JOptionPane.showMessageDialog(null, "set");
			} else {
				do {
					// JOptionPane.showMessageDialog(null, "inside result");
					childDifficulities = new ChildDifficulities(
							rSet.getLong("id"), rSet.getBoolean("reading"),
							rSet.getBoolean("mathematics"),
							rSet.getBoolean("language"),
							rSet.getBoolean("behavioral"),
							rSet.getString("applicant_id"));
				} while (rSet.next());
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return childDifficulities;
	}

	public static ChildDifficulities getChildDifficulities(long id) {
		ChildDifficulities childDifficulities = null;
		try {
			String query = "select * from tbl_child_difficulities where id ="
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				childDifficulities = new ChildDifficulities(rSet.getLong("id"),
						rSet.getBoolean("reading"),
						rSet.getBoolean("mathematics"),
						rSet.getBoolean("language"),
						rSet.getBoolean("behavioral"),
						rSet.getString("applicant_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return childDifficulities;
	}
}// end class
