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
public class StudentEvaluation {
	private long id;
	private String studentId;
	private int teacherId;
	private int subjectId;
	private int evaluationCriteriaId;
	private String achievement;
	private String effort;
	private String teachersComment;
	private int academicYearId;
	private int termId;

	/**
	 * @param studentId
	 */
	public StudentEvaluation(String studentId) {
		super();
		this.studentId = studentId;
	}

	/**
	 * @param studentId
	 * @param teacherId
	 * @param subjectId
	 * @param evaluationCriteriaId
	 * @param achievement
	 * @param effort
	 * @param teachersComment
	 */
	public StudentEvaluation(String studentId, int teacherId, int subjectId,
			int evaluationCriteriaId, String achievement, String effort,
			String teachersComment, int academicYearId, int termId) {
		super();
		this.studentId = studentId;
		this.teacherId = teacherId;
		this.subjectId = subjectId;
		this.evaluationCriteriaId = evaluationCriteriaId;
		this.achievement = achievement;
		this.effort = effort;
		this.teachersComment = teachersComment;
		this.academicYearId = academicYearId;
		this.termId = termId;
	}

	/**
	 * @param id
	 * @param studentId
	 * @param teacherId
	 * @param subjectId
	 * @param evaluationCriteriaId
	 * @param achievement
	 * @param effort
	 * @param teachersComment
	 */
	public StudentEvaluation(long id, String studentId, int teacherId,
			int subjectId, int evaluationCriteriaId, String achievement,
			String effort, String teachersComment, int academicYearId,
			int termId) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.teacherId = teacherId;
		this.subjectId = subjectId;
		this.evaluationCriteriaId = evaluationCriteriaId;
		this.achievement = achievement;
		this.effort = effort;
		this.teachersComment = teachersComment;
		this.academicYearId = academicYearId;
		this.termId = termId;
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
	 * @return the studentId
	 */
	public String getStudentId() {
		return studentId;
	}

	/**
	 * @param studentId
	 *            the studentId to set
	 */
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	/**
	 * @return the teacherId
	 */
	public int getTeacherId() {
		return teacherId;
	}

	/**
	 * @param teacherId
	 *            the teacherId to set
	 */
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
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
	 * @return the evaluationCriteriaId
	 */
	public int getEvaluationCriteriaId() {
		return evaluationCriteriaId;
	}

	/**
	 * @param evaluationCriteriaId
	 *            the evaluationCriteriaId to set
	 */
	public void setEvaluationCriteriaId(int evaluationCriteriaId) {
		this.evaluationCriteriaId = evaluationCriteriaId;
	}

	/**
	 * @return the achievement
	 */
	public String getAchievement() {
		return achievement;
	}

	/**
	 * @param achievement
	 *            the achievement to set
	 */
	public void setAchievement(String achievement) {
		this.achievement = achievement;
	}

	/**
	 * @return the effort
	 */
	public String getEffort() {
		return effort;
	}

	/**
	 * @param effort
	 *            the effort to set
	 */
	public void setEffort(String effort) {
		this.effort = effort;
	}

	/**
	 * @return the teachersComment
	 */
	public String getTeachersComment() {
		return teachersComment;
	}

	/**
	 * @param teachersComment
	 *            the teachersComment to set
	 */
	public void setTeachersComment(String teachersComment) {
		this.teachersComment = teachersComment;
	}

	public int getAcademicYearId() {
		return academicYearId;
	}

	public void setAcademicYearId(int academicYearId) {
		this.academicYearId = academicYearId;
	}

	public int getTermId() {
		return termId;
	}

	public void setTermId(int termId) {
		this.termId = termId;
	}

	public void addStudentEvaluation() {
		try {
			String command = "insert into tbl_student_evaluation values(0,"
					+ this.getStudentId() + "," + this.getTeacherId() + ","
					+ this.getSubjectId() + ","
					+ this.getEvaluationCriteriaId() + ",'"
					+ this.getAchievement() + "','" + this.getEffort() + "','"
					+ this.getTeachersComment() + "',"
					+ this.getAcademicYearId() + "," + this.getTermId() + ")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateStudentEvaluation(int studentId, int subjectId,
			int teacherId, int termId, int academicYearId, int evalCriteria,
			String achievement, String effort, String teacherComment) {
		String command = "update tbl_student_evaluation set achievement='"
				+ achievement + "', effort='" + effort
				+ "', teachers_comments='" + teacherComment
				+ "' where student_id=" + studentId + " and subject_id="
				+ subjectId + " and teacher_id=" + teacherId + " and term_id="
				+ termId + " and academic_year_id=" + academicYearId
				+ " and evaluation_criteria_id=" + evalCriteria;
		try {
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteStudentEvaluation(long id) {
		try {
			String command = "delete from tbl_student_evaluation where id = "
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<StudentEvaluation> getAllStudentEvaluations() {
		List<StudentEvaluation> list = new ArrayList<StudentEvaluation>();
		StudentEvaluation stEvaluation = null;
		try {
			String query = "select * from tbl_student_evaluation";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				stEvaluation = new StudentEvaluation(
						rSet.getString("student_id"),
						rSet.getInt("teacher_id"), rSet.getInt("subject_id"),
						rSet.getInt("evaluation_criteria_id"),
						rSet.getString("achievement"),
						rSet.getString("effort"),
						rSet.getString("teachers_comment"),
						rSet.getInt("academic_year_id"), rSet.getInt("term_id"));
				list.add(stEvaluation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static StudentEvaluation getStudentEvaluation(long id) {
		StudentEvaluation stEvaluation = null;
		try {
			String query = "select * from tbl_student_evaluation where id = "
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				stEvaluation = new StudentEvaluation(
						rSet.getString("student_id"),
						rSet.getInt("teacher_id"), rSet.getInt("subject_id"),
						rSet.getInt("evaluation_criteria_id"),
						rSet.getString("achievement"),
						rSet.getString("effort"),
						rSet.getString("teachers_comment"),
						rSet.getInt("academic_year_id"), rSet.getInt("term_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return stEvaluation;
	}

	public static List<StudentEvaluation> getStudentsByLTAT(int teacherId,
			int academicYearId, int termId, int levelId, int subjectId) {
		String query = "select distinct(tbl_student_evaluation.student_id) id from tbl_student_evaluation,tbl_student_level where tbl_student_evaluation.student_id=tbl_student_level.student_id and teacher_id="
				+ teacherId
				+ " and academic_year_id="
				+ academicYearId
				+ " and term_id="
				+ termId
				+ " and level_id="
				+ levelId
				+ " and subject_id=" + subjectId;
		List<StudentEvaluation> studentEvaluation = new ArrayList<StudentEvaluation>();
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				StudentEvaluation se = new StudentEvaluation(
						rSet.getString("id"));
				studentEvaluation.add(se);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return studentEvaluation;
	}

	public static List<StudentEvaluation> getStudentBYIDAT(int studentId,
			int teacherId, int academicYearId, int termId, int subjectId) {
		String query = "select * from tbl_student_evaluation where teacher_id="
				+ teacherId + " and academic_year_id=" + academicYearId
				+ " and term_id=" + termId + " and subject_id=" + subjectId
				+ " and student_id=" + studentId;
		List<StudentEvaluation> studentEvaluation = new ArrayList<StudentEvaluation>();
		StudentEvaluation se = null;
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				se = new StudentEvaluation(rSet.getString("student_id"),
						rSet.getInt("teacher_id"), rSet.getInt("subject_id"),
						rSet.getInt("evaluation_criteria_id"),
						rSet.getString("achievement"),
						rSet.getString("effort"),
						rSet.getString("teachers_comments"),
						rSet.getInt("academic_year_id"), rSet.getInt("term_id"));
				studentEvaluation.add(se);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return studentEvaluation;
	}
}// end class
