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
public class AdmissionAgeRule {
	private int id;
	private int levelId;
	private int lowerBoundary;
	private int upperBoundary;

	/**
	 * 
	 */
	public AdmissionAgeRule() {
		super();
	}

	/**
	 * @param year
	 * @param lowerBoundary
	 * @param upperBoundary
	 */
	public AdmissionAgeRule(int levelId, int lowerBoundary, int upperBoundary) {
		super();
		this.levelId = levelId;
		this.lowerBoundary = lowerBoundary;
		this.upperBoundary = upperBoundary;
	}

	/**
	 * @param id
	 * @param year
	 * @param lowerBoundary
	 * @param upperBoundary
	 */
	public AdmissionAgeRule(int id, int levelId, int lowerBoundary,
			int upperBoundary) {
		super();
		this.id = id;
		this.levelId = levelId;
		this.lowerBoundary = lowerBoundary;
		this.upperBoundary = upperBoundary;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
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
	 * @return the lowerBoundary
	 */
	public int getLowerBoundary() {
		return lowerBoundary;
	}

	/**
	 * @param lowerBoundary
	 *            the lowerBoundary to set
	 */
	public void setLowerBoundary(int lowerBoundary) {
		this.lowerBoundary = lowerBoundary;
	}

	/**
	 * @return the upperBoundary
	 */
	public int getUpperBoundary() {
		return upperBoundary;
	}

	/**
	 * @param upperBoundary
	 *            the upperBoundary to set
	 */
	public void setUpperBoundary(int upperBoundary) {
		this.upperBoundary = upperBoundary;
	}

	public void addAdmissionAgeRule() {
		try {
			String command = "insert into tbl_admission_age_rule values(0,"
					+ this.getLevelId() + "," + this.getLowerBoundary() + ","
					+ this.getUpperBoundary() + ")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateAdmissionAgeRule(int admissionAgeRuleId,
			int levelId, int lowerBoundary, int upperBoundary) {
		try {
			String command = "update tbl_admission_age_rule set level_id="
					+ levelId + ", lower_boundary = " + lowerBoundary
					+ ", upper_boundary=" + upperBoundary + " where id = "
					+ admissionAgeRuleId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteAdmissionAgeRule(int id) {
		try {
			String command = "delete from tbl_admission_age_rule where id="
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<AdmissionAgeRule> getAllAdmissionAgeRules() {
		List<AdmissionAgeRule> list = new ArrayList<AdmissionAgeRule>();
		AdmissionAgeRule admissionAgeRule = null;
		try {
			String query = "select * from tbl_admission_age_rule order by lower_boundary";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				admissionAgeRule = new AdmissionAgeRule(rSet.getInt("id"),
						rSet.getInt("level_id"), rSet.getInt("lower_boundary"),
						rSet.getInt("upper_boundary"));
				list.add(admissionAgeRule);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static AdmissionAgeRule getAdmissionAgeRule(int id) {
		AdmissionAgeRule admissionAgeRule = null;
		try {
			String query = "select * from tbl_admission_age_rule where id ="
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				admissionAgeRule = new AdmissionAgeRule(rSet.getInt("id"),
						rSet.getInt("level_id"), rSet.getInt("lower_boundary"),
						rSet.getInt("upper_boundary"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return admissionAgeRule;
	}

	public static AdmissionAgeRule getAdmissionAgeRuleForThisLevel(int levelId) {
		AdmissionAgeRule admissionAgeRule = null;
		try {
			String query = "select * from tbl_admission_age_rule where level_id ="
					+ levelId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				admissionAgeRule = new AdmissionAgeRule(rSet.getInt("id"),
						rSet.getInt("level_id"), rSet.getInt("lower_boundary"),
						rSet.getInt("upper_boundary"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return admissionAgeRule;
	}
}// end class
