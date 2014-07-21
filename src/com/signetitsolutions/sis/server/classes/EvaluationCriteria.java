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
public class EvaluationCriteria {
	private int id;
	private int subjectId;
	private int levelId;
	private String evaluationCriteriaName;

	/**
	 * @param subjectId
	 * @param levelId
	 * @param evaluationCriteriaName
	 */
	public EvaluationCriteria(int subjectId, int levelId,
			String evaluationCriteriaName) {
		super();
		this.subjectId = subjectId;
		this.levelId = levelId;
		this.evaluationCriteriaName = evaluationCriteriaName;
	}

	/**
	 * @param id
	 * @param subjectId
	 * @param levelId
	 * @param evaluationCriteriaName
	 */
	public EvaluationCriteria(int id, int subjectId, int levelId,
			String evaluationCriteriaName) {
		super();
		this.id = id;
		this.subjectId = subjectId;
		this.levelId = levelId;
		this.evaluationCriteriaName = evaluationCriteriaName;
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
	 * @return the subjectId
	 */
	public int getSubjectId() {
		return subjectId;
	}

	/**
	 * @param subjectId
	 *            the subjectId to set
	 */
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
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
	 * @return the evaluationCriteriaName
	 */
	public String getEvaluationCriteriaName() {
		return evaluationCriteriaName;
	}

	/**
	 * @param evaluationCriteriaName
	 *            the evaluationCriteriaName to set
	 */
	public void setEvaluationCriteriaName(String evaluationCriteriaName) {
		this.evaluationCriteriaName = evaluationCriteriaName;
	}

	public void addEvaluationCriteria() {
		try {
			String command = "insert into tbl_evaluation_criteria values(0,"
					+ this.getSubjectId() + "," + this.getLevelId() + ",'"
					+ this.getEvaluationCriteriaName() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateEvaluationCriteria(int id, int subject, int level,
			String criteriaName) {
		try {
			String command = "update tbl_evaluation_criteria set subject_id="
					+ subject + ",level_id=" + level
					+ ",evaluation_criteria_name='" + criteriaName
					+ "'where id=" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteEvaluationCriteria(int id) {
		try {
			String command = "delete from tbl_evaluation_criteria where id = "
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EvaluationCriteria> getAllEvaluationCriterias() {
		List<EvaluationCriteria> list = new ArrayList<EvaluationCriteria>();
		EvaluationCriteria eC = null;
		try {
			String query = "select * from tbl_evaluation_criteria";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				eC = new EvaluationCriteria(rSet.getInt("id"),
						rSet.getInt("subject_id"), rSet.getInt("level_id"),
						rSet.getString("evaluation_criteria_name"));
				list.add(eC);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<EvaluationCriteria> getAllEvaluationCriteriasForLevelAndSubject(
			int levelId, int subjectId) {
		List<EvaluationCriteria> list = new ArrayList<EvaluationCriteria>();
		EvaluationCriteria eC = null;
		try {
			String query = "select * from tbl_evaluation_criteria where level_id="
					+ levelId + " and subject_id=" + subjectId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				eC = new EvaluationCriteria(rSet.getInt("id"),
						rSet.getInt("subject_id"), rSet.getInt("level_id"),
						rSet.getString("evaluation_criteria_name"));
				list.add(eC);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EvaluationCriteria getEvaluationCriteria(int id) {
		EvaluationCriteria eC = null;
		try {
			String query = "select * from tbl_evaluation_criteria where id = "
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				eC = new EvaluationCriteria(rSet.getInt("id"),
						rSet.getInt("subject_id"), rSet.getInt("level_id"),
						rSet.getString("evaluation_criteria_name"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return eC;
	}

	public static int getHowManyEvaluationCriteriaDoesThisSubjectOfLevelHas(
			int subjectId, int levelId) {
		int howMany = 0;
		try {
			String query = "select count(*) as c from tbl_evaluation_criteria where subject_id="
					+ subjectId + " and level_id=" + levelId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				howMany = rSet.getInt("c");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return howMany;
	}
}// end class
