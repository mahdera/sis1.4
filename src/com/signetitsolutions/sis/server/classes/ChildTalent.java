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
public class ChildTalent {
	private String id;
	private boolean reading;
	private boolean mathematics;
	private boolean language;
	private String applicantId;

	/**
	 * 
	 */
	public ChildTalent() {
		super();
	}

	/**
	 * @param reading
	 * @param mathematics
	 * @param language
	 * @param applicantId
	 */
	public ChildTalent(boolean reading, boolean mathematics, boolean language,
			String applicantId) {
		super();
		this.reading = reading;
		this.mathematics = mathematics;
		this.language = language;
		this.applicantId = applicantId;
	}

	/**
	 * @param id
	 * @param reading
	 * @param mathematics
	 * @param language
	 * @param applicantId
	 */
	public ChildTalent(String id, boolean reading, boolean mathematics,
			boolean language, String applicantId) {
		super();
		this.id = id;
		this.reading = reading;
		this.mathematics = mathematics;
		this.language = language;
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

	public void addChildTalent() {
		try {
			// JOptionPane.showMessageDialog(null,
			// "@talent " + this.getApplicantId());
			String command = "insert into tbl_child_talent(reading,mathematics,language,applicant_id)"
					+ " values("
					+ (this.isReading() == false ? 0 : 1)
					+ ","
					+ (this.isMathematics() == false ? 0 : 1)
					+ ","
					+ (this.isLanguage() == false ? 0 : 1)
					+ ",'"
					+ this.getApplicantId() + "')";
			
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateChildTalent(int tId, int tReading,
			int tMathematics, int tLanguage) {
		try {
			String command = "update tbl_child_talent set reading=" + tReading
					+ ",mathematics=" + tMathematics + ",language=" + tLanguage
					+ " where id=" + tId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteChildTalent(String id) {
		try {
			String command = "delete from tbl_child_talent where id =" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ChildTalent> getAllChildTalents() {
		List<ChildTalent> list = new ArrayList<ChildTalent>();
		ChildTalent childTalent = null;
		try {
			String query = "select * from tbl_child_talent";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				childTalent = new ChildTalent(rSet.getString("id"),
						rSet.getBoolean("reading"),
						rSet.getBoolean("mathematics"),
						rSet.getBoolean("language"),
						rSet.getString("applicant_id"));
				list.add(childTalent);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ChildTalent getChildTalent(String id) {
		ChildTalent childTalent = null;
		try {
			String query = "select * from tbl_child_talent where id=" + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				childTalent = new ChildTalent(rSet.getString("id"),
						rSet.getBoolean("reading"),
						rSet.getBoolean("mathematics"),
						rSet.getBoolean("language"),
						rSet.getString("applicant_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return childTalent;
	}

	public static ChildTalent getChildTalentsForApplicant(String applicantId) {
		ChildTalent childTalent = null;
		try {
			String query = "select * from tbl_child_talent where applicant_id = '"
					+ applicantId + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if (!rSet.next()) {
				childTalent = new ChildTalent("-1", false, false, false,
						applicantId);
				// JOptionPane.showMessageDialog(null, "set");
			} else {
				do {
					childTalent = new ChildTalent(rSet.getString("id"),
							rSet.getBoolean("reading"),
							rSet.getBoolean("mathematics"),
							rSet.getBoolean("language"),
							rSet.getString("applicant_id"));
				} while (rSet.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return childTalent;
	}
}// end class
