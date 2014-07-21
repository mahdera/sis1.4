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
public class AmharicKeyStageTwo {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private int teacherId;
	private String speakingAndListeningAchievement;
	private int speakingAndListeningEffort;
	private String readingAchievement;
	private int readingEffort;
	private String writingAchievement;
	private int writingEffort;
	private String classTeacherComments;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public AmharicKeyStageTwo() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param teacherId
	 * @param speakingAndListeningAchievement
	 * @param speakingAndListeningEffort
	 * @param readingAchievement
	 * @param readingEffort
	 * @param writingAchievement
	 * @param writingEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public AmharicKeyStageTwo(int sectionId, String studentIdNumber,
			int teacherId, String speakingAndListeningAchievement,
			int speakingAndListeningEffort, String readingAchievement,
			int readingEffort, String writingAchievement, int writingEffort,
			String classTeacherComments, Date dateCreated, int modifiedBy,
			Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.speakingAndListeningAchievement = speakingAndListeningAchievement;
		this.speakingAndListeningEffort = speakingAndListeningEffort;
		this.readingAchievement = readingAchievement;
		this.readingEffort = readingEffort;
		this.writingAchievement = writingAchievement;
		this.writingEffort = writingEffort;
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
	 * @param speakingAndListeningAchievement
	 * @param speakingAndListeningEffort
	 * @param readingAchievement
	 * @param readingEffort
	 * @param writingAchievement
	 * @param writingEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public AmharicKeyStageTwo(long id, int sectionId, String studentIdNumber,
			int teacherId, String speakingAndListeningAchievement,
			int speakingAndListeningEffort, String readingAchievement,
			int readingEffort, String writingAchievement, int writingEffort,
			String classTeacherComments, Date dateCreated, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.speakingAndListeningAchievement = speakingAndListeningAchievement;
		this.speakingAndListeningEffort = speakingAndListeningEffort;
		this.readingAchievement = readingAchievement;
		this.readingEffort = readingEffort;
		this.writingAchievement = writingAchievement;
		this.writingEffort = writingEffort;
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
	 * @return the speakingAndListeningAchievement
	 */
	public String getSpeakingAndListeningAchievement() {
		return speakingAndListeningAchievement;
	}

	/**
	 * @param speakingAndListeningAchievement
	 *            the speakingAndListeningAchievement to set
	 */
	public void setSpeakingAndListeningAchievement(
			String speakingAndListeningAchievement) {
		this.speakingAndListeningAchievement = speakingAndListeningAchievement;
	}

	/**
	 * @return the speakingAndListeningEffort
	 */
	public int getSpeakingAndListeningEffort() {
		return speakingAndListeningEffort;
	}

	/**
	 * @param speakingAndListeningEffort
	 *            the speakingAndListeningEffort to set
	 */
	public void setSpeakingAndListeningEffort(int speakingAndListeningEffort) {
		this.speakingAndListeningEffort = speakingAndListeningEffort;
	}

	/**
	 * @return the readingAchievement
	 */
	public String getReadingAchievement() {
		return readingAchievement;
	}

	/**
	 * @param readingAchievement
	 *            the readingAchievement to set
	 */
	public void setReadingAchievement(String readingAchievement) {
		this.readingAchievement = readingAchievement;
	}

	/**
	 * @return the readingEffort
	 */
	public int getReadingEffort() {
		return readingEffort;
	}

	/**
	 * @param readingEffort
	 *            the readingEffort to set
	 */
	public void setReadingEffort(int readingEffort) {
		this.readingEffort = readingEffort;
	}

	/**
	 * @return the writingAchievement
	 */
	public String getWritingAchievement() {
		return writingAchievement;
	}

	/**
	 * @param writingAchievement
	 *            the writingAchievement to set
	 */
	public void setWritingAchievement(String writingAchievement) {
		this.writingAchievement = writingAchievement;
	}

	/**
	 * @return the writingEffort
	 */
	public int getWritingEffort() {
		return writingEffort;
	}

	/**
	 * @param writingEffort
	 *            the writingEffort to set
	 */
	public void setWritingEffort(int writingEffort) {
		this.writingEffort = writingEffort;
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
			String sqlStr = "insert into tbl_amharic_key_stage_two values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setInt(4, this.getTeacherId());
			pStmt.setString(5, this.getSpeakingAndListeningAchievement());
			pStmt.setInt(6, this.getSpeakingAndListeningEffort());
			pStmt.setString(7, this.getReadingAchievement());
			pStmt.setInt(8, this.getReadingEffort());
			pStmt.setString(9, this.getWritingAchievement());
			pStmt.setInt(10, this.getWritingEffort());
			pStmt.setString(11, this.getClassTeacherComments());
			pStmt.setDate(12, this.getDateCreated());
			pStmt.setInt(13, this.getModifiedBy());
			pStmt.setDate(14, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(AmharicKeyStageTwo amharicKeyStageTwo) {
		try {
			String sqlStr = "update tbl_amharic_key_stage_two set section_id = ?, student_id_number = ?," +
					"teacher_id = ?, speaking_and_listening_achievement = ?, speaking_and_listening_effort = ?," +
					"reading_achievement = ?, reading_effort = ?, writing_achievement = ?, writing_effort = ?," +
					"class_teacher_comments = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, amharicKeyStageTwo.getSectionId());
			pStmt.setString(2, amharicKeyStageTwo.getStudentIdNumber());
			pStmt.setInt(3, amharicKeyStageTwo.getTeacherId());
			pStmt.setString(4, amharicKeyStageTwo.getSpeakingAndListeningAchievement());
			pStmt.setInt(5, amharicKeyStageTwo.getSpeakingAndListeningEffort());
			pStmt.setString(6, amharicKeyStageTwo.getReadingAchievement());
			pStmt.setInt(7, amharicKeyStageTwo.getReadingEffort());
			pStmt.setString(8, amharicKeyStageTwo.getWritingAchievement());
			pStmt.setInt(9, amharicKeyStageTwo.getWritingEffort());
			pStmt.setString(10, amharicKeyStageTwo.getClassTeacherComments());
			pStmt.setInt(11, amharicKeyStageTwo.getModifiedBy());
			pStmt.setDate(12, amharicKeyStageTwo.getModificationDate());
			pStmt.setLong(13, amharicKeyStageTwo.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_amharic_key_stage_two where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<AmharicKeyStageTwo> getAllAmharicKeyStageTwos() {
		List<AmharicKeyStageTwo> list = new ArrayList<AmharicKeyStageTwo>();
		AmharicKeyStageTwo amharicKeyStageTwo = null;
		try {
			String query = "select * from tbl_amharic_key_stage_two order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				amharicKeyStageTwo = new AmharicKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("speaking_and_listening_achievement"), rSet.getInt("speaking_and_listening_effort"), 
						rSet.getString("reading_achievement"), rSet.getInt("reading_effort"), 
						rSet.getString("writing_achievement"), rSet.getInt("writing_effort"), 
						rSet.getString("class_teacher_comments"), rSet.getDate("date_created"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(amharicKeyStageTwo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static AmharicKeyStageTwo getAmharicKeyStageTwo(long id) {
		AmharicKeyStageTwo amharicKeyStageTwo = null;
		try {
			String query = "select * from tbl_amharic_key_stage_two where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				amharicKeyStageTwo = new AmharicKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("speaking_and_listening_achievement"), rSet.getInt("speaking_and_listening_effort"), 
						rSet.getString("reading_achievement"), rSet.getInt("reading_effort"), 
						rSet.getString("writing_achievement"), rSet.getInt("writing_effort"), 
						rSet.getString("class_teacher_comments"), rSet.getDate("date_created"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return amharicKeyStageTwo;
	}
	
	public static List<AmharicKeyStageTwo> getAllKeyStageTwoAmharicEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<AmharicKeyStageTwo> list = new ArrayList<AmharicKeyStageTwo>();
		AmharicKeyStageTwo amharicKeyStageTwo = null;
		try{
			String query = "select * from tbl_amharic_key_stage_two where DATE_FORMAT(date_created, '%Y') = "+
		academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				amharicKeyStageTwo = new AmharicKeyStageTwo(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("speaking_and_listening_achievement"), rSet.getInt("speaking_and_listening_effort"), 
						rSet.getString("reading_achievement"), rSet.getInt("reading_effort"), 
						rSet.getString("writing_achievement"), rSet.getInt("writing_effort"), 
						rSet.getString("class_teacher_comments"), rSet.getDate("date_created"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(amharicKeyStageTwo);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
