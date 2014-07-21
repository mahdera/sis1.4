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
public class MusicKeyStageTwo {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private int teacherId;
	private String performingAchievement;
	private int performingEffort;
	private String creativeAndListeningSkillsAchievement;
	private int creativeAndListeningSkillsEffort;
	private String classTeacherComments;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public MusicKeyStageTwo() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param teacherId
	 * @param performingAchievement
	 * @param performingEffort
	 * @param creativeAndListeningSkillsAchievement
	 * @param creativeAndListeningSkillsEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public MusicKeyStageTwo(int sectionId, String studentIdNumber,
			int teacherId, String performingAchievement, int performingEffort,
			String creativeAndListeningSkillsAchievement,
			int creativeAndListeningSkillsEffort, String classTeacherComments,
			Date dateCreated, int modifiedBy, Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.performingAchievement = performingAchievement;
		this.performingEffort = performingEffort;
		this.creativeAndListeningSkillsAchievement = creativeAndListeningSkillsAchievement;
		this.creativeAndListeningSkillsEffort = creativeAndListeningSkillsEffort;
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
	 * @param performingAchievement
	 * @param performingEffort
	 * @param creativeAndListeningSkillsAchievement
	 * @param creativeAndListeningSkillsEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public MusicKeyStageTwo(long id, int sectionId, String studentIdNumber,
			int teacherId, String performingAchievement, int performingEffort,
			String creativeAndListeningSkillsAchievement,
			int creativeAndListeningSkillsEffort, String classTeacherComments,
			Date dateCreated, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.performingAchievement = performingAchievement;
		this.performingEffort = performingEffort;
		this.creativeAndListeningSkillsAchievement = creativeAndListeningSkillsAchievement;
		this.creativeAndListeningSkillsEffort = creativeAndListeningSkillsEffort;
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
	 * @return the performingAchievement
	 */
	public String getPerformingAchievement() {
		return performingAchievement;
	}

	/**
	 * @param performingAchievement
	 *            the performingAchievement to set
	 */
	public void setPerformingAchievement(String performingAchievement) {
		this.performingAchievement = performingAchievement;
	}

	/**
	 * @return the performingEffort
	 */
	public int getPerformingEffort() {
		return performingEffort;
	}

	/**
	 * @param performingEffort
	 *            the performingEffort to set
	 */
	public void setPerformingEffort(int performingEffort) {
		this.performingEffort = performingEffort;
	}

	/**
	 * @return the creativeAndListeningSkillsAchievement
	 */
	public String getCreativeAndListeningSkillsAchievement() {
		return creativeAndListeningSkillsAchievement;
	}

	/**
	 * @param creativeAndListeningSkillsAchievement
	 *            the creativeAndListeningSkillsAchievement to set
	 */
	public void setCreativeAndListeningSkillsAchievement(
			String creativeAndListeningSkillsAchievement) {
		this.creativeAndListeningSkillsAchievement = creativeAndListeningSkillsAchievement;
	}

	/**
	 * @return the creativeAndListeningSkillsEffort
	 */
	public int getCreativeAndListeningSkillsEffort() {
		return creativeAndListeningSkillsEffort;
	}

	/**
	 * @param creativeAndListeningSkillsEffort
	 *            the creativeAndListeningSkillsEffort to set
	 */
	public void setCreativeAndListeningSkillsEffort(
			int creativeAndListeningSkillsEffort) {
		this.creativeAndListeningSkillsEffort = creativeAndListeningSkillsEffort;
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
			String sqlStr = "insert into tbl_music_key_stage_two values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setInt(4, this.getTeacherId());
			pStmt.setString(5, this.getPerformingAchievement());
			pStmt.setInt(6, this.getPerformingEffort());
			pStmt.setString(7, this.getCreativeAndListeningSkillsAchievement());
			pStmt.setInt(8, this.getCreativeAndListeningSkillsEffort());
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

	public static void update(MusicKeyStageTwo musicKeyStageTwo) {
		try {
			String sqlStr = "update tbl_music_key_stage_two set section_id = ?, student_id_number = ?," +
					"teacher_id = ?, performing_achievement = ?, performing_effort = ?," +
					"creative_and_listening_skills_achievement = ?, creative_and_listening_skills_effort = ?," +
					"class_teacher_comments = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, musicKeyStageTwo.getSectionId());
			pStmt.setString(2, musicKeyStageTwo.getStudentIdNumber());
			pStmt.setInt(3, musicKeyStageTwo.getTeacherId());
			pStmt.setString(4, musicKeyStageTwo.getPerformingAchievement());
			pStmt.setInt(5, musicKeyStageTwo.getPerformingEffort());
			pStmt.setString(6, musicKeyStageTwo.getCreativeAndListeningSkillsAchievement());
			pStmt.setInt(7, musicKeyStageTwo.getCreativeAndListeningSkillsEffort());
			pStmt.setString(8, musicKeyStageTwo.getClassTeacherComments());
			pStmt.setInt(9, musicKeyStageTwo.getModifiedBy());
			pStmt.setDate(10, musicKeyStageTwo.getModificationDate());
			pStmt.setLong(11, musicKeyStageTwo.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_music_key_stage_two where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<MusicKeyStageTwo> getAllKeyStageTwos() {
		List<MusicKeyStageTwo> list = new ArrayList<MusicKeyStageTwo>();
		MusicKeyStageTwo musicKeyStageTwo = null;
		try {
			String query = "select * from tbl_music_key_stage_two order by modificaiton_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				musicKeyStageTwo = new MusicKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("performing_achievement"), rSet.getInt("performing_effort"), 
						rSet.getString("creative_and_listening_skills_achievement"), 
						rSet.getInt("creative_and_listening_skills_effort"), 
						rSet.getString("class_teacher_comments"), rSet.getDate("date_created"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(musicKeyStageTwo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static MusicKeyStageTwo getMusicKeyStageTwo(long id) {
		MusicKeyStageTwo musicKeyStageTwo = null;
		try {
			String query = "select * from tbl_music_key_stage_two where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				musicKeyStageTwo = new MusicKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("performing_achievement"), rSet.getInt("performing_effort"), 
						rSet.getString("creative_and_listening_skills_achievement"), 
						rSet.getInt("creative_and_listening_skills_effort"), 
						rSet.getString("class_teacher_comments"), rSet.getDate("date_created"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return musicKeyStageTwo;
	}
	
	public static List<MusicKeyStageTwo> getAllMusicKeyStageTwoEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<MusicKeyStageTwo> list = new ArrayList<MusicKeyStageTwo>();
		MusicKeyStageTwo musicKeyStageTwo = null;
		try{
			String query = "select * from tbl_music_key_stage_two where DATE_FORMAT(date_created, '%Y') = "+
		academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				musicKeyStageTwo = new MusicKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("performing_achievement"), rSet.getInt("performing_effort"), 
						rSet.getString("creative_and_listening_skills_achievement"), 
						rSet.getInt("creative_and_listening_skills_effort"), 
						rSet.getString("class_teacher_comments"), rSet.getDate("date_created"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(musicKeyStageTwo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
