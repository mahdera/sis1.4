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
public class KeyStageTwoMidYearEvaluation {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private String literacyAchievement;
	private int literacyEffort;
	private String literacyClassTeacherComments;
	private String numeracyAchievement;
	private int numeracyEffort;
	private String numeracyClassTeacherComments;
	private String ipcAchievement;
	private int ipcEffort;
	private String ipcClassTeacherComments;
	private String scienceAchievement;
	private int scienceEffort;
	private String scienceClassTeacherComments;
	private String classTeacherGeneralComments;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public KeyStageTwoMidYearEvaluation() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param literacyAchievement
	 * @param literacyEffort
	 * @param literacyClassTeacherComments
	 * @param numeracyAchievement
	 * @param numeracyEffort
	 * @param numeracyClassTeacherComments
	 * @param ipcAchievement
	 * @param ipcEffort
	 * @param ipcClassTeacherComments
	 * @param scienceAchievement
	 * @param scienceEffort
	 * @param scienceClassTeacherComments
	 * @param classTeacherGeneralComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public KeyStageTwoMidYearEvaluation(int sectionId, String studentIdNumber,
			String literacyAchievement, int literacyEffort,
			String literacyClassTeacherComments, String numeracyAchievement,
			int numeracyEffort, String numeracyClassTeacherComments,
			String ipcAchievement, int ipcEffort,
			String ipcClassTeacherComments, String scienceAchievement,
			int scienceEffort, String scienceClassTeacherComments,
			String classTeacherGeneralComments,Date dateCreated, int modifiedBy,
			Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.literacyAchievement = literacyAchievement;
		this.literacyEffort = literacyEffort;
		this.literacyClassTeacherComments = literacyClassTeacherComments;
		this.numeracyAchievement = numeracyAchievement;
		this.numeracyEffort = numeracyEffort;
		this.numeracyClassTeacherComments = numeracyClassTeacherComments;
		this.ipcAchievement = ipcAchievement;
		this.ipcEffort = ipcEffort;
		this.ipcClassTeacherComments = ipcClassTeacherComments;
		this.scienceAchievement = scienceAchievement;
		this.scienceEffort = scienceEffort;
		this.scienceClassTeacherComments = scienceClassTeacherComments;
		this.classTeacherGeneralComments = classTeacherGeneralComments;
		this.dateCreated = dateCreated;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param sectionId
	 * @param studentIdNumber
	 * @param literacyAchievement
	 * @param literacyEffort
	 * @param literacyClassTeacherComments
	 * @param numeracyAchievement
	 * @param numeracyEffort
	 * @param numeracyClassTeacherComments
	 * @param ipcAchievement
	 * @param ipcEffort
	 * @param ipcClassTeacherComments
	 * @param scienceAchievement
	 * @param scienceEffort
	 * @param scienceClassTeacherComments
	 * @param classTeacherGeneralComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public KeyStageTwoMidYearEvaluation(long id, int sectionId,
			String studentIdNumber, String literacyAchievement,
			int literacyEffort, String literacyClassTeacherComments,
			String numeracyAchievement, int numeracyEffort,
			String numeracyClassTeacherComments, String ipcAchievement,
			int ipcEffort, String ipcClassTeacherComments,
			String scienceAchievement, int scienceEffort,
			String scienceClassTeacherComments,
			String classTeacherGeneralComments,Date dateCreated, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.literacyAchievement = literacyAchievement;
		this.literacyEffort = literacyEffort;
		this.literacyClassTeacherComments = literacyClassTeacherComments;
		this.numeracyAchievement = numeracyAchievement;
		this.numeracyEffort = numeracyEffort;
		this.numeracyClassTeacherComments = numeracyClassTeacherComments;
		this.ipcAchievement = ipcAchievement;
		this.ipcEffort = ipcEffort;
		this.ipcClassTeacherComments = ipcClassTeacherComments;
		this.scienceAchievement = scienceAchievement;
		this.scienceEffort = scienceEffort;
		this.scienceClassTeacherComments = scienceClassTeacherComments;
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
	 * @return the literacyAchievement
	 */
	public String getLiteracyAchievement() {
		return literacyAchievement;
	}

	/**
	 * @param literacyAchievement
	 *            the literacyAchievement to set
	 */
	public void setLiteracyAchievement(String literacyAchievement) {
		this.literacyAchievement = literacyAchievement;
	}

	/**
	 * @return the literacyEffort
	 */
	public int getLiteracyEffort() {
		return literacyEffort;
	}

	/**
	 * @param literacyEffort
	 *            the literacyEffort to set
	 */
	public void setLiteracyEffort(int literacyEffort) {
		this.literacyEffort = literacyEffort;
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
	public void setLiteracyClassTeacherComments(
			String literacyClassTeacherComments) {
		this.literacyClassTeacherComments = literacyClassTeacherComments;
	}

	/**
	 * @return the numeracyAchievement
	 */
	public String getNumeracyAchievement() {
		return numeracyAchievement;
	}

	/**
	 * @param numeracyAchievement
	 *            the numeracyAchievement to set
	 */
	public void setNumeracyAchievement(String numeracyAchievement) {
		this.numeracyAchievement = numeracyAchievement;
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
	 * @return the ipcAchievement
	 */
	public String getIpcAchievement() {
		return ipcAchievement;
	}

	/**
	 * @param ipcAchievement
	 *            the ipcAchievement to set
	 */
	public void setIpcAchievement(String ipcAchievement) {
		this.ipcAchievement = ipcAchievement;
	}

	/**
	 * @return the ipcEffort
	 */
	public int getIpcEffort() {
		return ipcEffort;
	}

	/**
	 * @param ipcEffort
	 *            the ipcEffort to set
	 */
	public void setIpcEffort(int ipcEffort) {
		this.ipcEffort = ipcEffort;
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
	 * @return the scienceAchievement
	 */
	public String getScienceAchievement() {
		return scienceAchievement;
	}

	/**
	 * @param scienceAchievement
	 *            the scienceAchievement to set
	 */
	public void setScienceAchievement(String scienceAchievement) {
		this.scienceAchievement = scienceAchievement;
	}

	/**
	 * @return the scienceEffort
	 */
	public int getScienceEffort() {
		return scienceEffort;
	}

	/**
	 * @param scienceEffort
	 *            the scienceEffort to set
	 */
	public void setScienceEffort(int scienceEffort) {
		this.scienceEffort = scienceEffort;
	}

	/**
	 * @return the scienceClassTeacherComments
	 */
	public String getScienceClassTeacherComments() {
		return scienceClassTeacherComments;
	}

	/**
	 * @param scienceClassTeacherComments
	 *            the scienceClassTeacherComments to set
	 */
	public void setScienceClassTeacherComments(
			String scienceClassTeacherComments) {
		this.scienceClassTeacherComments = scienceClassTeacherComments;
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
			String sqlStr = "insert into tbl_key_stage_two_mid_year_evaluation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setString(4, this.getLiteracyAchievement());
			pStmt.setInt(5, this.getLiteracyEffort());
			pStmt.setString(6, this.getLiteracyClassTeacherComments());
			pStmt.setString(7, this.getNumeracyAchievement());
			pStmt.setInt(8, this.getNumeracyEffort());
			pStmt.setString(9, this.getNumeracyClassTeacherComments());
			pStmt.setString(10, this.getIpcAchievement());
			pStmt.setInt(11, this.getIpcEffort());
			pStmt.setString(12, this.getIpcClassTeacherComments());
			pStmt.setString(13, this.getScienceAchievement());
			pStmt.setInt(14, this.getScienceEffort());
			pStmt.setString(15, this.getScienceClassTeacherComments());
			pStmt.setString(16, this.getClassTeacherGeneralComments());
			pStmt.setDate(17, this.getDateCreated());
			pStmt.setInt(18, this.getModifiedBy());
			pStmt.setDate(19, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(KeyStageTwoMidYearEvaluation keyStageTwoMidYearEvaluation) {
		try {
			String sqlStr = "update tbl_key_stage_two_mid_year_evaluation set section_id = ?," +
					"student_id_number = ?, literacy_achievement = ?, literacy_effort = ?," +
					"literacy_class_teacher_comments = ?, numeracy_achievement = ?," +
					"numeracy_effort = ?, numeracy_class_teacher_comments = ?," +
					"ipc_achievement = ?, ipc_effort = ?, ipc_class_teacher_comments = ?," +
					"science_achievement = ?, science_effort = ?, science_class_teacher_comments = ?," +
					"class_teacher_general_comments = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, keyStageTwoMidYearEvaluation.getSectionId());
			pStmt.setString(2, keyStageTwoMidYearEvaluation.getStudentIdNumber());
			pStmt.setString(3, keyStageTwoMidYearEvaluation.getLiteracyAchievement());
			pStmt.setInt(4, keyStageTwoMidYearEvaluation.getLiteracyEffort());
			pStmt.setString(5, keyStageTwoMidYearEvaluation.getLiteracyClassTeacherComments());
			pStmt.setString(6, keyStageTwoMidYearEvaluation.getNumeracyAchievement());
			pStmt.setInt(7, keyStageTwoMidYearEvaluation.getNumeracyEffort());
			pStmt.setString(8, keyStageTwoMidYearEvaluation.getNumeracyClassTeacherComments());
			pStmt.setString(9, keyStageTwoMidYearEvaluation.getIpcAchievement());
			pStmt.setInt(10, keyStageTwoMidYearEvaluation.getIpcEffort());
			pStmt.setString(11, keyStageTwoMidYearEvaluation.getIpcClassTeacherComments());
			pStmt.setString(12, keyStageTwoMidYearEvaluation.getScienceAchievement());
			pStmt.setInt(13, keyStageTwoMidYearEvaluation.getScienceEffort());
			pStmt.setString(14, keyStageTwoMidYearEvaluation.getScienceClassTeacherComments());
			pStmt.setString(15, keyStageTwoMidYearEvaluation.getClassTeacherGeneralComments());
			pStmt.setInt(16, keyStageTwoMidYearEvaluation.getModifiedBy());
			pStmt.setDate(17, keyStageTwoMidYearEvaluation.getModificationDate());
			pStmt.setLong(18, keyStageTwoMidYearEvaluation.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_key_stage_two_mid_year_evaluation where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<KeyStageTwoMidYearEvaluation> getAllKeyStageTwoMidYearEvaluations() {
		List<KeyStageTwoMidYearEvaluation> list = new ArrayList<KeyStageTwoMidYearEvaluation>();
		KeyStageTwoMidYearEvaluation keyStageTwoMidYearEvaluation = null;
		try {
			String query = "select * from tbl_key_stage_two_mid_year_evaluation order by modificaiton_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageTwoMidYearEvaluation = new KeyStageTwoMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("literacy_achievement"), rSet.getInt("literacy_effort"), 
						rSet.getString("literacy_class_teacher_comments"), rSet.getString("numeracy_achievement"), 
						rSet.getInt("numeracy_effort"), rSet.getString("numeracy_class_teacher_comments"), 
						rSet.getString("ipc_achievement"), rSet.getInt("ipc_effort"), 
						rSet.getString("ipc_class_teacher_comments"), rSet.getString("science_achievement"), 
						rSet.getInt("science_effort"), rSet.getString("science_class_teacher_comments"), 
						rSet.getString("class_teacher_general_comments"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(keyStageTwoMidYearEvaluation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static KeyStageTwoMidYearEvaluation getKeyStageTwoMidYearEvaluation(long id) {
		KeyStageTwoMidYearEvaluation keyStageTwoMidYearEvaluation = null;
		try {
			String query = "select * from tbl_key_stage_two_mid_year_evaluation where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageTwoMidYearEvaluation = new KeyStageTwoMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("literacy_achievement"), rSet.getInt("literacy_effort"), 
						rSet.getString("literacy_class_teacher_comments"), rSet.getString("numeracy_achievement"), 
						rSet.getInt("numeracy_effort"), rSet.getString("numeracy_class_teacher_comments"), 
						rSet.getString("ipc_achievement"), rSet.getInt("ipc_effort"), 
						rSet.getString("ipc_class_teacher_comments"), rSet.getString("science_achievement"), 
						rSet.getInt("science_effort"), rSet.getString("science_class_teacher_comments"), 
						rSet.getString("class_teacher_general_comments"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return keyStageTwoMidYearEvaluation;
	}
	
	public static boolean resultAlreadySavedForThisStudentAndAcademicYear(String studentIdNumber,int academicYear){
		int cnt = 0;
		boolean recordExists = false;
		try{
			String query = "select count(*) as cnt from tbl_key_stage_two_mid_year_evaluation where student_id_number = '"+studentIdNumber+"' and " +
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
	
	public static List<KeyStageTwoMidYearEvaluation> getAllKeyStageTwoMidYearEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<KeyStageTwoMidYearEvaluation> list = new ArrayList<KeyStageTwoMidYearEvaluation>();
		KeyStageTwoMidYearEvaluation keyStageTwoMidYearEvaluation = null;
		try{
			String query = "select * from tbl_key_stage_two_mid_year_evaluation where DATE_FORMAT(date_created, '%Y') = "+
		academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageTwoMidYearEvaluation = new KeyStageTwoMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("literacy_achievement"), rSet.getInt("literacy_effort"), 
						rSet.getString("literacy_class_teacher_comments"), rSet.getString("numeracy_achievement"), 
						rSet.getInt("numeracy_effort"), rSet.getString("numeracy_class_teacher_comments"), 
						rSet.getString("ipc_achievement"), rSet.getInt("ipc_effort"), 
						rSet.getString("ipc_class_teacher_comments"), rSet.getString("science_achievement"), 
						rSet.getInt("science_effort"), rSet.getString("science_class_teacher_comments"), 
						rSet.getString("class_teacher_general_comments"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(keyStageTwoMidYearEvaluation);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
