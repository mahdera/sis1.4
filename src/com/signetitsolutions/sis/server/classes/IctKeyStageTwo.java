/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Mahder on macbook Pro
 * 
 */
public class IctKeyStageTwo {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private int teacherId;
	private String learningAndApplicationOfSkillsAchievement;
	private int learningAndApplicationOfSkillsEffort;
	private String evaluationSkillsAchievement;
	private int evaluationSkillsEffort;
	private String classTeacherComments;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public IctKeyStageTwo() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param teacherId
	 * @param learningAndApplicationOfSkillsAchievement
	 * @param learningAndApplicationOfSkillsEffort
	 * @param evaluationSkillsAchievement
	 * @param evaluationSkillsEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public IctKeyStageTwo(int sectionId, String studentIdNumber, int teacherId,
			String learningAndApplicationOfSkillsAchievement,
			int learningAndApplicationOfSkillsEffort,
			String evaluationSkillsAchievement, int evaluationSkillsEffort,
			String classTeacherComments, Date dateCreated, int modifiedBy,
			Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.learningAndApplicationOfSkillsAchievement = learningAndApplicationOfSkillsAchievement;
		this.learningAndApplicationOfSkillsEffort = learningAndApplicationOfSkillsEffort;
		this.evaluationSkillsAchievement = evaluationSkillsAchievement;
		this.evaluationSkillsEffort = evaluationSkillsEffort;
		this.classTeacherComments = classTeacherComments;
		this.dateCreated = dateCreated;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param sectionId
	 * @param studentIdNumber
	 * @param teacherId
	 * @param learningAndApplicationOfSkillsAchievement
	 * @param learningAndApplicationOfSkillsEffort
	 * @param evaluationSkillsAchievement
	 * @param evaluationSkillsEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public IctKeyStageTwo(long id, int sectionId, String studentIdNumber,
			int teacherId, String learningAndApplicationOfSkillsAchievement,
			int learningAndApplicationOfSkillsEffort,
			String evaluationSkillsAchievement, int evaluationSkillsEffort,
			String classTeacherComments, Date dateCreated, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.learningAndApplicationOfSkillsAchievement = learningAndApplicationOfSkillsAchievement;
		this.learningAndApplicationOfSkillsEffort = learningAndApplicationOfSkillsEffort;
		this.evaluationSkillsAchievement = evaluationSkillsAchievement;
		this.evaluationSkillsEffort = evaluationSkillsEffort;
		this.classTeacherComments = classTeacherComments;
		this.dateCreated = dateCreated;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
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
	 * @return the sectionId
	 */
	public int getSectionId() {
		return sectionId;
	}

	/**
	 * @param sectionId
	 *            the sectionId to set
	 */
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}

	/**
	 * @return the studentIdNumber
	 */
	public String getStudentIdNumber() {
		return studentIdNumber;
	}

	/**
	 * @param studentIdNumber
	 *            the studentIdNumber to set
	 */
	public void setStudentIdNumber(String studentIdNumber) {
		this.studentIdNumber = studentIdNumber;
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
	 * @return the learningAndApplicationOfSkillsAchievement
	 */
	public String getLearningAndApplicationOfSkillsAchievement() {
		return learningAndApplicationOfSkillsAchievement;
	}

	/**
	 * @param learningAndApplicationOfSkillsAchievement
	 *            the learningAndApplicationOfSkillsAchievement to set
	 */
	public void setLearningAndApplicationOfSkillsAchievement(
			String learningAndApplicationOfSkillsAchievement) {
		this.learningAndApplicationOfSkillsAchievement = learningAndApplicationOfSkillsAchievement;
	}

	/**
	 * @return the learningAndApplicationOfSkillsEffort
	 */
	public int getLearningAndApplicationOfSkillsEffort() {
		return learningAndApplicationOfSkillsEffort;
	}

	/**
	 * @param learningAndApplicationOfSkillsEffort
	 *            the learningAndApplicationOfSkillsEffort to set
	 */
	public void setLearningAndApplicationOfSkillsEffort(
			int learningAndApplicationOfSkillsEffort) {
		this.learningAndApplicationOfSkillsEffort = learningAndApplicationOfSkillsEffort;
	}

	/**
	 * @return the evaluationSkillsAchievement
	 */
	public String getEvaluationSkillsAchievement() {
		return evaluationSkillsAchievement;
	}

	/**
	 * @param evaluationSkillsAchievement
	 *            the evaluationSkillsAchievement to set
	 */
	public void setEvaluationSkillsAchievement(
			String evaluationSkillsAchievement) {
		this.evaluationSkillsAchievement = evaluationSkillsAchievement;
	}

	/**
	 * @return the evaluationSkillsEffort
	 */
	public int getEvaluationSkillsEffort() {
		return evaluationSkillsEffort;
	}

	/**
	 * @param evaluationSkillsEffort
	 *            the evaluationSkillsEffort to set
	 */
	public void setEvaluationSkillsEffort(int evaluationSkillsEffort) {
		this.evaluationSkillsEffort = evaluationSkillsEffort;
	}

	/**
	 * @return the classTeacherComments
	 */
	public String getClassTeacherComments() {
		return classTeacherComments;
	}

	/**
	 * @param classTeacherComments
	 *            the classTeacherComments to set
	 */
	public void setClassTeacherComments(String classTeacherComments) {
		this.classTeacherComments = classTeacherComments;
	}

	/**
	 * @return the dateCreated
	 */
	public Date getDateCreated() {
		return dateCreated;
	}

	/**
	 * @param dateCreated
	 *            the dateCreated to set
	 */
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	/**
	 * @return the modifiedBy
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}

	/**
	 * @param modifiedBy
	 *            the modifiedBy to set
	 */
	public void setModifiedBy(int modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	/**
	 * @return the modificationDate
	 */
	public Date getModificationDate() {
		return modificationDate;
	}

	/**
	 * @param modificationDate
	 *            the modificationDate to set
	 */
	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_ict_key_stage_two values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setInt(4, this.getTeacherId());
			pStmt.setString(5, this.getLearningAndApplicationOfSkillsAchievement());
			pStmt.setInt(6, this.getLearningAndApplicationOfSkillsEffort());
			pStmt.setString(7, this.getEvaluationSkillsAchievement());
			pStmt.setInt(8, this.getEvaluationSkillsEffort());
			pStmt.setString(9, this.getClassTeacherComments());
			pStmt.setDate(10, this.getDateCreated());
			pStmt.setInt(11, this.getModifiedBy());
			pStmt.setDate(12, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(IctKeyStageTwo ictKeyStageTwo) {
		try {
			String sqlStr = "update tbl_ict_key_stage_two set section_id = ?, student_id_number = ?," +
					"teacher_id = ?, learning_and_application_of_skills_achievement = ?," +
					"learning_and_application_of_skills_effort = ?, evaluation_skills_achievement = ?," +
					"evaluation_skills_effort = ?, class_teacher_comments = ?, modified_by = ?," +
					"modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, ictKeyStageTwo.getSectionId());
			pStmt.setString(2, ictKeyStageTwo.getStudentIdNumber());
			pStmt.setInt(3, ictKeyStageTwo.getTeacherId());
			pStmt.setString(4, ictKeyStageTwo.getLearningAndApplicationOfSkillsAchievement());
			pStmt.setInt(5, ictKeyStageTwo.getLearningAndApplicationOfSkillsEffort());
			pStmt.setString(6, ictKeyStageTwo.getEvaluationSkillsAchievement());
			pStmt.setInt(7, ictKeyStageTwo.getEvaluationSkillsEffort());
			pStmt.setString(8, ictKeyStageTwo.getClassTeacherComments());
			pStmt.setInt(9, ictKeyStageTwo.getModifiedBy());
			pStmt.setDate(10, ictKeyStageTwo.getModificationDate());
			pStmt.setLong(11, ictKeyStageTwo.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_ict_key_stage_two where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<IctKeyStageTwo> getAllIctKeyStageTwos() {
		List<IctKeyStageTwo> list = new ArrayList<IctKeyStageTwo>();
		IctKeyStageTwo ictKeyStageTwo = null;
		try {
			String query = "select * from tbl_ict_key_stage_two order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				ictKeyStageTwo = new IctKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("learning_and_application_of_skills_achievement"), 
						rSet.getInt("learning_and_application_of_skills_effort"), rSet.getString("evaluation_skills_achievement"), 
						rSet.getInt("evaluation_skills_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(ictKeyStageTwo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static IctKeyStageTwo getIctKeyStageTwo(long id) {
		IctKeyStageTwo ictKeyStageTwo = null;
		try {
			String query = "select * from tbl_ict_key_stage_two where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				ictKeyStageTwo = new IctKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("learning_and_application_of_skills_achievement"), 
						rSet.getInt("learning_and_application_of_skills_effort"), rSet.getString("evaluation_skills_achievement"), 
						rSet.getInt("evaluation_skills_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return ictKeyStageTwo;
	}
	
	public static List<IctKeyStageTwo> getAllIctKeyStageTwoEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<IctKeyStageTwo> list = new ArrayList<IctKeyStageTwo>();
		IctKeyStageTwo ictKeyStageTwo = null;
		try {
			String query = "select * from tbl_ict_key_stage_two where section_id = "+sectionId+" and 	DATE_FORMAT(date_created, '%Y') = "+academicYear;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				ictKeyStageTwo = new IctKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("learning_and_application_of_skills_achievement"), 
						rSet.getInt("learning_and_application_of_skills_effort"), rSet.getString("evaluation_skills_achievement"), 
						rSet.getInt("evaluation_skills_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(ictKeyStageTwo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
