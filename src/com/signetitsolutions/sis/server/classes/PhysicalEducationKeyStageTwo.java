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
public class PhysicalEducationKeyStageTwo {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private int teacherId;
	private String personalOrganizationAchievement;
	private int personalOrganizationEffort;
	private String individualSkillsAchievement;
	private int individualSkillsEffort;
	private String teamWorkAchievement;
	private int teamWorkEffort;
	private String classTeacherComments;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public PhysicalEducationKeyStageTwo() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param teacherId
	 * @param personalOrganizationAchievement
	 * @param personalOrganizationEffort
	 * @param individualSkillsAchievement
	 * @param individualSkillsEffort
	 * @param teamWorkAchievement
	 * @param teamWorkEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PhysicalEducationKeyStageTwo(int sectionId, String studentIdNumber,
			int teacherId, String personalOrganizationAchievement,
			int personalOrganizationEffort, String individualSkillsAchievement,
			int individualSkillsEffort, String teamWorkAchievement,
			int teamWorkEffort, String classTeacherComments, Date dateCreated,
			int modifiedBy, Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.personalOrganizationAchievement = personalOrganizationAchievement;
		this.personalOrganizationEffort = personalOrganizationEffort;
		this.individualSkillsAchievement = individualSkillsAchievement;
		this.individualSkillsEffort = individualSkillsEffort;
		this.teamWorkAchievement = teamWorkAchievement;
		this.teamWorkEffort = teamWorkEffort;
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
	 * @param personalOrganizationAchievement
	 * @param personalOrganizationEffort
	 * @param individualSkillsAchievement
	 * @param individualSkillsEffort
	 * @param teamWorkAchievement
	 * @param teamWorkEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PhysicalEducationKeyStageTwo(long id, int sectionId,
			String studentIdNumber, int teacherId,
			String personalOrganizationAchievement,
			int personalOrganizationEffort, String individualSkillsAchievement,
			int individualSkillsEffort, String teamWorkAchievement,
			int teamWorkEffort, String classTeacherComments, Date dateCreated,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.personalOrganizationAchievement = personalOrganizationAchievement;
		this.personalOrganizationEffort = personalOrganizationEffort;
		this.individualSkillsAchievement = individualSkillsAchievement;
		this.individualSkillsEffort = individualSkillsEffort;
		this.teamWorkAchievement = teamWorkAchievement;
		this.teamWorkEffort = teamWorkEffort;
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
	 * @return the personalOrganizationAchievement
	 */
	public String getPersonalOrganizationAchievement() {
		return personalOrganizationAchievement;
	}

	/**
	 * @param personalOrganizationAchievement
	 *            the personalOrganizationAchievement to set
	 */
	public void setPersonalOrganizationAchievement(
			String personalOrganizationAchievement) {
		this.personalOrganizationAchievement = personalOrganizationAchievement;
	}

	/**
	 * @return the personalOrganizationEffort
	 */
	public int getPersonalOrganizationEffort() {
		return personalOrganizationEffort;
	}

	/**
	 * @param personalOrganizationEffort
	 *            the personalOrganizationEffort to set
	 */
	public void setPersonalOrganizationEffort(int personalOrganizationEffort) {
		this.personalOrganizationEffort = personalOrganizationEffort;
	}

	/**
	 * @return the individualSkillsAchievement
	 */
	public String getIndividualSkillsAchievement() {
		return individualSkillsAchievement;
	}

	/**
	 * @param individualSkillsAchievement
	 *            the individualSkillsAchievement to set
	 */
	public void setIndividualSkillsAchievement(
			String individualSkillsAchievement) {
		this.individualSkillsAchievement = individualSkillsAchievement;
	}

	/**
	 * @return the individualSkillsEffort
	 */
	public int getIndividualSkillsEffort() {
		return individualSkillsEffort;
	}

	/**
	 * @param individualSkillsEffort
	 *            the individualSkillsEffort to set
	 */
	public void setIndividualSkillsEffort(int individualSkillsEffort) {
		this.individualSkillsEffort = individualSkillsEffort;
	}

	/**
	 * @return the teamWorkAchievement
	 */
	public String getTeamWorkAchievement() {
		return teamWorkAchievement;
	}

	/**
	 * @param teamWorkAchievement
	 *            the teamWorkAchievement to set
	 */
	public void setTeamWorkAchievement(String teamWorkAchievement) {
		this.teamWorkAchievement = teamWorkAchievement;
	}

	/**
	 * @return the teamWorkEffort
	 */
	public int getTeamWorkEffort() {
		return teamWorkEffort;
	}

	/**
	 * @param teamWorkEffort
	 *            the teamWorkEffort to set
	 */
	public void setTeamWorkEffort(int teamWorkEffort) {
		this.teamWorkEffort = teamWorkEffort;
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
			String sqlStr = "insert into tbl_physical_education_key_stage_two values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setInt(4, this.getTeacherId());
			pStmt.setString(5, this.getPersonalOrganizationAchievement());
			pStmt.setInt(6, this.getPersonalOrganizationEffort());
			pStmt.setString(7, this.getIndividualSkillsAchievement());
			pStmt.setInt(8, this.getIndividualSkillsEffort());
			pStmt.setString(9, this.getTeamWorkAchievement());
			pStmt.setInt(10, this.getTeamWorkEffort());
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

	public static void update(PhysicalEducationKeyStageTwo physicalEducationKeyStageTwo) {
		try {
			String sqlStr = "update tbl_physical_education_key_stage_two set section_id = ?," +
					"student_id_number = ?, teacher_id = ?, personal_organization_achievement = ?," +
					"personal_organization_effort = ?, individual_skills_achievement = ?," +
					"individual_skills_effort = ?, team_work_achievement = ?, team_work_effort = ?," +
					"class_teacher_comments = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, physicalEducationKeyStageTwo.getSectionId());
			pStmt.setString(2, physicalEducationKeyStageTwo.getStudentIdNumber());
			pStmt.setInt(3, physicalEducationKeyStageTwo.getTeacherId());
			pStmt.setString(4, physicalEducationKeyStageTwo.getPersonalOrganizationAchievement());
			pStmt.setInt(5, physicalEducationKeyStageTwo.getPersonalOrganizationEffort());
			pStmt.setString(6, physicalEducationKeyStageTwo.getIndividualSkillsAchievement());
			pStmt.setInt(7, physicalEducationKeyStageTwo.getIndividualSkillsEffort());
			pStmt.setString(8, physicalEducationKeyStageTwo.getTeamWorkAchievement());
			pStmt.setInt(9, physicalEducationKeyStageTwo.getTeamWorkEffort());
			pStmt.setString(10, physicalEducationKeyStageTwo.getClassTeacherComments());
			pStmt.setInt(11, physicalEducationKeyStageTwo.getModifiedBy());
			pStmt.setDate(12, physicalEducationKeyStageTwo.getModificationDate());
			pStmt.setLong(13, physicalEducationKeyStageTwo.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_physical_education_key_stage_two where id = "+id;
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PhysicalEducationKeyStageTwo> getAllPhysicalEducationKeyStageTwos() {
		List<PhysicalEducationKeyStageTwo> list = new ArrayList<PhysicalEducationKeyStageTwo>();
		PhysicalEducationKeyStageTwo physicalEducationKeyStageTwo = null;
		try {
			String query = "select * from tbl_physical_education_key_stage_two order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				physicalEducationKeyStageTwo = new PhysicalEducationKeyStageTwo(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("personal_organization_achievement"), rSet.getInt("personal_organization_effort"), 
						rSet.getString("individual_skills_achievement"), rSet.getInt("individual_skills_effort"), 
						rSet.getString("team_work_achievement"), rSet.getInt("team_work_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(physicalEducationKeyStageTwo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PhysicalEducationKeyStageTwo getPhysicalEducationKeyStageTwo(long id) {
		PhysicalEducationKeyStageTwo physicalEducationKeyStageTwo = null;
		try {
			String query = "select * from tbl_physical_education_key_stage_two where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				physicalEducationKeyStageTwo = new PhysicalEducationKeyStageTwo(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("personal_organization_achievement"), rSet.getInt("personal_organization_effort"), 
						rSet.getString("individual_skills_achievement"), rSet.getInt("individual_skills_effort"), 
						rSet.getString("team_work_achievement"), rSet.getInt("team_work_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return physicalEducationKeyStageTwo;
	}
	
	public static List<PhysicalEducationKeyStageTwo> getAllPhysicalEducationKeyStageTwoEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<PhysicalEducationKeyStageTwo> list = new ArrayList<PhysicalEducationKeyStageTwo>();
		PhysicalEducationKeyStageTwo physicalEducationKeyStageTwo = null;
		try {
			String query = "select * from tbl_physical_education_key_stage_two where DATE_FORMAT(date_created,'%Y') = "+academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				physicalEducationKeyStageTwo = new PhysicalEducationKeyStageTwo(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getString("personal_organization_achievement"), rSet.getInt("personal_organization_effort"), 
						rSet.getString("individual_skills_achievement"), rSet.getInt("individual_skills_effort"), 
						rSet.getString("team_work_achievement"), rSet.getInt("team_work_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(physicalEducationKeyStageTwo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
