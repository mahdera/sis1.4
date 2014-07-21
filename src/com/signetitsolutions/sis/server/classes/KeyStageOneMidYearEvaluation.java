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
public class KeyStageOneMidYearEvaluation {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private int literacyReadingEffort;
	private int literacyWritingEffort;
	private int literacySpeakingAndListeningEffort;
	private String literacyClassTeacherComments;
	private int numeracyEffort;
	private String numeracyClassTeacherComments;
	private int ipcScienceEffort;
	private int ipcHumanitiesEffort;
	private int ipcArtAndDesignEffort;
	private String ipcClassTeacherComments;
	private String classTeacherGeneralComments;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public KeyStageOneMidYearEvaluation() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param literacyReadingEffort
	 * @param literacyWritingEffort
	 * @param literacySpeakingAndListeningEffort
	 * @param literacyClassTeacherComments
	 * @param numeracyEffort
	 * @param numeracyClassTeacherComments
	 * @param ipcScienceEffort
	 * @param ipcHumanitiesEffort
	 * @param ipcArtAndDesignEffort
	 * @param ipcClassTeacherComments
	 * @param classTeacherGeneralComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public KeyStageOneMidYearEvaluation(int sectionId, String studentIdNumber,
			int literacyReadingEffort, int literacyWritingEffort,
			int literacySpeakingAndListeningEffort,
			String literacyClassTeacherComments, int numeracyEffort,
			String numeracyClassTeacherComments, int ipcScienceEffort,
			int ipcHumanitiesEffort, int ipcArtAndDesignEffort,
			String ipcClassTeacherComments, String classTeacherGeneralComments,
			Date dateCreated,int modifiedBy, Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.literacyReadingEffort = literacyReadingEffort;
		this.literacyWritingEffort = literacyWritingEffort;
		this.literacySpeakingAndListeningEffort = literacySpeakingAndListeningEffort;
		this.literacyClassTeacherComments = literacyClassTeacherComments;
		this.numeracyEffort = numeracyEffort;
		this.numeracyClassTeacherComments = numeracyClassTeacherComments;
		this.ipcScienceEffort = ipcScienceEffort;
		this.ipcHumanitiesEffort = ipcHumanitiesEffort;
		this.ipcArtAndDesignEffort = ipcArtAndDesignEffort;
		this.ipcClassTeacherComments = ipcClassTeacherComments;
		this.classTeacherGeneralComments = classTeacherGeneralComments;
		this.dateCreated = dateCreated;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param sectionId
	 * @param studentIdNumber
	 * @param literacyReadingEffort
	 * @param literacyWritingEffort
	 * @param literacySpeakingAndListeningEffort
	 * @param literacyClassTeacherComments
	 * @param numeracyEffort
	 * @param numeracyClassTeacherComments
	 * @param ipcScienceEffort
	 * @param ipcHumanitiesEffort
	 * @param ipcArtAndDesignEffort
	 * @param ipcClassTeacherComments
	 * @param classTeacherGeneralComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public KeyStageOneMidYearEvaluation(long id, int sectionId,
			String studentIdNumber, int literacyReadingEffort,
			int literacyWritingEffort, int literacySpeakingAndListeningEffort,
			String literacyClassTeacherComments, int numeracyEffort,
			String numeracyClassTeacherComments, int ipcScienceEffort,
			int ipcHumanitiesEffort, int ipcArtAndDesignEffort,
			String ipcClassTeacherComments, String classTeacherGeneralComments,
			Date dateCreated,int modifiedBy, Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.literacyReadingEffort = literacyReadingEffort;
		this.literacyWritingEffort = literacyWritingEffort;
		this.literacySpeakingAndListeningEffort = literacySpeakingAndListeningEffort;
		this.literacyClassTeacherComments = literacyClassTeacherComments;
		this.numeracyEffort = numeracyEffort;
		this.numeracyClassTeacherComments = numeracyClassTeacherComments;
		this.ipcScienceEffort = ipcScienceEffort;
		this.ipcHumanitiesEffort = ipcHumanitiesEffort;
		this.ipcArtAndDesignEffort = ipcArtAndDesignEffort;
		this.ipcClassTeacherComments = ipcClassTeacherComments;
		this.classTeacherGeneralComments = classTeacherGeneralComments;
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
	 * @return the literacyReadingEffort
	 */
	public int getLiteracyReadingEffort() {
		return literacyReadingEffort;
	}

	/**
	 * @param literacyReadingEffort
	 *            the literacyReadingEffort to set
	 */
	public void setLiteracyReadingEffort(int literacyReadingEffort) {
		this.literacyReadingEffort = literacyReadingEffort;
	}

	/**
	 * @return the literacyWritingEffort
	 */
	public int getLiteracyWritingEffort() {
		return literacyWritingEffort;
	}

	/**
	 * @param literacyWritingEffort
	 *            the literacyWritingEffort to set
	 */
	public void setLiteracyWritingEffort(int literacyWritingEffort) {
		this.literacyWritingEffort = literacyWritingEffort;
	}

	/**
	 * @return the literacySpeakingAndListeningEffort
	 */
	public int getLiteracySpeakingAndListeningEffort() {
		return literacySpeakingAndListeningEffort;
	}

	/**
	 * @param literacySpeakingAndListeningEffort
	 *            the literacySpeakingAndListeningEffort to set
	 */
	public void setLiteracySpeakingAndListeningEffort(
			int literacySpeakingAndListeningEffort) {
		this.literacySpeakingAndListeningEffort = literacySpeakingAndListeningEffort;
	}

	/**
	 * @return the literacyClassTeacherComments
	 */
	public String getLiteracyClassTeacherComments() {
		return literacyClassTeacherComments;
	}

	/**
	 * @param literacyClassTeacherComments
	 *            the literacyClassTeacherComments to set
	 */
	public void setLiteracyClassTeacherComments(String literacyClassTeacherComments) {
		this.literacyClassTeacherComments = literacyClassTeacherComments;
	}

	/**
	 * @return the numeracyEffort
	 */
	public int getNumeracyEffort() {
		return numeracyEffort;
	}

	/**
	 * @param numeracyEffort
	 *            the numeracyEffort to set
	 */
	public void setNumeracyEffort(int numeracyEffort) {
		this.numeracyEffort = numeracyEffort;
	}

	/**
	 * @return the numeracyClassTeacherComments
	 */
	public String getNumeracyClassTeacherComments() {
		return numeracyClassTeacherComments;
	}

	/**
	 * @param numeracyClassTeacherComments
	 *            the numeracyClassTeacherComments to set
	 */
	public void setNumeracyClassTeacherComments(
			String numeracyClassTeacherComments) {
		this.numeracyClassTeacherComments = numeracyClassTeacherComments;
	}

	/**
	 * @return the ipcScienceEffort
	 */
	public int getIpcScienceEffort() {
		return ipcScienceEffort;
	}

	/**
	 * @param ipcScienceEffort
	 *            the ipcScienceEffort to set
	 */
	public void setIpcScienceEffort(int ipcScienceEffort) {
		this.ipcScienceEffort = ipcScienceEffort;
	}

	/**
	 * @return the ipcHumanitiesEffort
	 */
	public int getIpcHumanitiesEffort() {
		return ipcHumanitiesEffort;
	}

	/**
	 * @param ipcHumanitiesEffort
	 *            the ipcHumanitiesEffort to set
	 */
	public void setIpcHumanitiesEffort(int ipcHumanitiesEffort) {
		this.ipcHumanitiesEffort = ipcHumanitiesEffort;
	}

	/**
	 * @return the ipcArtAndDesignEffort
	 */
	public int getIpcArtAndDesignEffort() {
		return ipcArtAndDesignEffort;
	}

	/**
	 * @param ipcArtAndDesignEffort
	 *            the ipcArtAndDesignEffort to set
	 */
	public void setIpcArtAndDesignEffort(int ipcArtAndDesignEffort) {
		this.ipcArtAndDesignEffort = ipcArtAndDesignEffort;
	}

	/**
	 * @return the ipcClassTeacherComments
	 */
	public String getIpcClassTeacherComments() {
		return ipcClassTeacherComments;
	}

	/**
	 * @param ipcClassTeacherComments
	 *            the ipcClassTeacherComments to set
	 */
	public void setIpcClassTeacherComments(String ipcClassTeacherComments) {
		this.ipcClassTeacherComments = ipcClassTeacherComments;
	}

	/**
	 * @return the classTeacherGeneralComments
	 */
	public String getClassTeacherGeneralComments() {
		return classTeacherGeneralComments;
	}

	/**
	 * @param classTeacherGeneralComments
	 *            the classTeacherGeneralComments to set
	 */
	public void setClassTeacherGeneralComments(
			String classTeacherGeneralComments) {
		this.classTeacherGeneralComments = classTeacherGeneralComments;
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
	
	

	/**
	 * @return the dateCreated
	 */
	public Date getDateCreated() {
		return dateCreated;
	}

	/**
	 * @param dateCreated the dateCreated to set
	 */
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_key_stage_one_mid_year_evaluation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setInt(4, this.getLiteracyReadingEffort());
			pStmt.setInt(5, this.getLiteracyWritingEffort());
			pStmt.setInt(6, this.getLiteracySpeakingAndListeningEffort());
			pStmt.setString(7, this.getLiteracyClassTeacherComments());
			pStmt.setInt(8, this.getNumeracyEffort());
			pStmt.setString(9, this.getNumeracyClassTeacherComments());
			pStmt.setInt(10, this.getIpcScienceEffort());
			pStmt.setInt(11, this.getIpcHumanitiesEffort());
			pStmt.setInt(12, this.getIpcArtAndDesignEffort());
			pStmt.setString(13, this.getIpcClassTeacherComments());
			pStmt.setString(14, this.getClassTeacherGeneralComments());
			pStmt.setDate(15, this.getDateCreated());
			pStmt.setInt(16, this.getModifiedBy());
			pStmt.setDate(17, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(KeyStageOneMidYearEvaluation keyStageOneMidYearEvaluation) {
		try {
			String sqlStr = "update tbl_key_stage_one_mid_year_evaluation set section_id = ?," +
					"student_id = ?, literacy_reading_effort = ?, literacy_writing_effort = ?," +
					"literacy_speaking_and_listening_effort = ?, literacy_class_teacher_comments = ?," +
					"numeracy_effort = ?, numeracy_class_teacher_comments = ?, ipc_science_effort = ?," +
					"ipc_humanities_effort = ?, ipc_art_and_design_effort = ?, ipc_class_teacher_comments = ?," +
					"class_teacher_general_comments = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, keyStageOneMidYearEvaluation.getSectionId());
			pStmt.setString(2, keyStageOneMidYearEvaluation.getStudentIdNumber());
			pStmt.setInt(3, keyStageOneMidYearEvaluation.getLiteracyReadingEffort());
			pStmt.setInt(4, keyStageOneMidYearEvaluation.getLiteracyWritingEffort());
			pStmt.setInt(5, keyStageOneMidYearEvaluation.getLiteracySpeakingAndListeningEffort());
			pStmt.setString(6, keyStageOneMidYearEvaluation.getLiteracyClassTeacherComments());
			pStmt.setInt(7, keyStageOneMidYearEvaluation.getNumeracyEffort());
			pStmt.setString(8, keyStageOneMidYearEvaluation.getNumeracyClassTeacherComments());
			pStmt.setInt(9, keyStageOneMidYearEvaluation.getIpcScienceEffort());
			pStmt.setInt(10, keyStageOneMidYearEvaluation.getIpcHumanitiesEffort());
			pStmt.setInt(11, keyStageOneMidYearEvaluation.getIpcArtAndDesignEffort());
			pStmt.setString(12, keyStageOneMidYearEvaluation.getIpcClassTeacherComments());
			pStmt.setString(13, keyStageOneMidYearEvaluation.getClassTeacherGeneralComments());
			pStmt.setInt(14, keyStageOneMidYearEvaluation.getModifiedBy());
			pStmt.setDate(15, keyStageOneMidYearEvaluation.getModificationDate());
			pStmt.setLong(16, keyStageOneMidYearEvaluation.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_key_stage_one_mid_year_evaluation where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<KeyStageOneMidYearEvaluation> getAllKeyStageOneMidYearEvaluations() {
		List<KeyStageOneMidYearEvaluation> list = new ArrayList<KeyStageOneMidYearEvaluation>();
		KeyStageOneMidYearEvaluation keyStageOneMidYearEvaluation = null;
		try {
			String query = "select * from tbl_key_stage_one_mid_year_evaluation order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageOneMidYearEvaluation = new KeyStageOneMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id"), 
						rSet.getInt("literacy_reading_effort"), rSet.getInt("literacy_writing_effort"), 
						rSet.getInt("literacy_speaking_and_listening_effort"), rSet.getString("literacy_class_teacher_comments"), 
						rSet.getInt("numeracy_effort"), rSet.getString("numeracy_class_teacher_comments"), 
						rSet.getInt("ipc_science_effort"), rSet.getInt("ipc_humanities_effort"), 
						rSet.getInt("ipc_art_and_design_effort"), rSet.getString("ipc_class_teacher_comments"), 
						rSet.getString("class_teacher_general_comments"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(keyStageOneMidYearEvaluation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static KeyStageOneMidYearEvaluation getKeyStageOneMidYearEvaluation(long id) {
		KeyStageOneMidYearEvaluation keyStageOneMidYearEvaluation = null;
		try {
			String query = "select * from tbl_key_stage_one_mid_year_evaluation where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageOneMidYearEvaluation = new KeyStageOneMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id"), 
						rSet.getInt("literacy_reading_effort"), rSet.getInt("literacy_writing_effort"), 
						rSet.getInt("literacy_speaking_and_listening_effort"), rSet.getString("literacy_class_teacher_comments"), 
						rSet.getInt("numeracy_effort"), rSet.getString("numeracy_class_teacher_comments"), 
						rSet.getInt("ipc_science_effort"), rSet.getInt("ipc_humanities_effort"), 
						rSet.getInt("ipc_art_and_design_effort"), rSet.getString("ipc_class_teacher_comments"), 
						rSet.getString("class_teacher_general_comments"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return keyStageOneMidYearEvaluation;
	}
	
	public static boolean resultAlreadySavedForThisStudentAndAcademicYear(String studentIdNumber,int academicYear){
		int cnt = 0;
		boolean recordExists = false;
		try{
			String query = "select count(*) as cnt from tbl_key_stage_one_mid_year_evaluation where student_id = '"+studentIdNumber+"' and " +
					"DATE_FORMAT(date_created, '%Y') = "+academicYear;			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				cnt = rSet.getInt("cnt");
				if(cnt != 0){
					recordExists = true;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return recordExists;
	}
	
	public static List<KeyStageOneMidYearEvaluation> getAllKeyStageOneMidYearEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<KeyStageOneMidYearEvaluation> list = new ArrayList<KeyStageOneMidYearEvaluation>();
		KeyStageOneMidYearEvaluation keyStageOneMidYearEvaluation = null;
		try{
			String query = "select * from tbl_key_stage_one_mid_year_evaluation where DATE_FORMAT(date_created, '%Y') = "+
		academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageOneMidYearEvaluation = new KeyStageOneMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id"), 
						rSet.getInt("literacy_reading_effort"), rSet.getInt("literacy_writing_effort"), 
						rSet.getInt("literacy_speaking_and_listening_effort"), rSet.getString("literacy_class_teacher_comments"), 
						rSet.getInt("numeracy_effort"), rSet.getString("numeracy_class_teacher_comments"), 
						rSet.getInt("ipc_science_effort"), rSet.getInt("ipc_humanities_effort"), 
						rSet.getInt("ipc_art_and_design_effort"), rSet.getString("ipc_class_teacher_comments"), 
						rSet.getString("class_teacher_general_comments"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(keyStageOneMidYearEvaluation);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
