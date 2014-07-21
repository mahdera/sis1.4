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
public class PhysicalEducationKeyStageOne {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private int teacherId;
	private int personalOrganizationEffort;
	private int individualSkillsEffort;
	private int teamWorkEffort;
	private String classTeacherComments;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public PhysicalEducationKeyStageOne() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param teacherId
	 * @param personalOrganizationEffort
	 * @param individualSkillsEffort
	 * @param teamWorkEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PhysicalEducationKeyStageOne(int sectionId, String studentIdNumber,
			int teacherId, int personalOrganizationEffort,
			int individualSkillsEffort, int teamWorkEffort,
			String classTeacherComments, Date dateCreated, int modifiedBy,
			Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.personalOrganizationEffort = personalOrganizationEffort;
		this.individualSkillsEffort = individualSkillsEffort;
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
	 * @param personalOrganizationEffort
	 * @param individualSkillsEffort
	 * @param teamWorkEffort
	 * @param classTeacherComments
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PhysicalEducationKeyStageOne(long id, int sectionId,
			String studentIdNumber, int teacherId,
			int personalOrganizationEffort, int individualSkillsEffort,
			int teamWorkEffort, String classTeacherComments, Date dateCreated,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.teacherId = teacherId;
		this.personalOrganizationEffort = personalOrganizationEffort;
		this.individualSkillsEffort = individualSkillsEffort;
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
			String sqlStr = "insert into tbl_physical_education_key_stage_one values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setInt(4, this.getTeacherId());
			pStmt.setInt(5, this.getPersonalOrganizationEffort());
			pStmt.setInt(6, this.getIndividualSkillsEffort());
			pStmt.setInt(7, this.getTeamWorkEffort());
			pStmt.setString(8, this.getClassTeacherComments());
			pStmt.setDate(9, this.getDateCreated());
			pStmt.setInt(10, this.getModifiedBy());
			pStmt.setDate(11, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(PhysicalEducationKeyStageOne physicalEducationKeyStageOne) {
		try {
			String sqlStr = "update tbl_physical_education_key_stage_one set section_id = ?," +
					"student_id_number = ?, teacher_id = ?, personal_organization_effort = ?," +
					"individual_skills_effort = ?, team_work_effort = ?, class_teacher_comments = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, physicalEducationKeyStageOne.getSectionId());
			pStmt.setString(2, physicalEducationKeyStageOne.getStudentIdNumber());
			pStmt.setInt(3, physicalEducationKeyStageOne.getTeacherId());
			pStmt.setInt(4, physicalEducationKeyStageOne.getPersonalOrganizationEffort());
			pStmt.setInt(5, physicalEducationKeyStageOne.getIndividualSkillsEffort());
			pStmt.setInt(6, physicalEducationKeyStageOne.getTeamWorkEffort());
			pStmt.setString(7, physicalEducationKeyStageOne.getClassTeacherComments());
			pStmt.setInt(8, physicalEducationKeyStageOne.getModifiedBy());
			pStmt.setDate(9, physicalEducationKeyStageOne.getModificationDate());
			pStmt.setLong(10, physicalEducationKeyStageOne.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try{
			String sqlStr = "delete from tbl_physical_education_key_stage_one where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PhysicalEducationKeyStageOne> getAllPhysicalEducationKeyStageOnes() {
		List<PhysicalEducationKeyStageOne> list = new ArrayList<PhysicalEducationKeyStageOne>();
		PhysicalEducationKeyStageOne physicalEducationKeyStageOne = null;
		try {
			String query = "select * from tbl_physical_education_key_stage_one order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				physicalEducationKeyStageOne = new PhysicalEducationKeyStageOne(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getInt("personal_organization_effort"), rSet.getInt("individual_skills_effort"), 
						rSet.getInt("team_work_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(physicalEducationKeyStageOne);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PhysicalEducationKeyStageOne getPhysicalEducationKeyStageOne(long id) {
		PhysicalEducationKeyStageOne physicalEducationKeyStageOne = null;
		try {
			String query = "select * from tbl_physical_education_key_stage_one where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				physicalEducationKeyStageOne = new PhysicalEducationKeyStageOne(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getInt("personal_organization_effort"), rSet.getInt("individual_skills_effort"), 
						rSet.getInt("team_work_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return physicalEducationKeyStageOne;
	}
	
	public static List<PhysicalEducationKeyStageOne> getAllPhysicalEducationKeyStageOneEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<PhysicalEducationKeyStageOne> list = new ArrayList<PhysicalEducationKeyStageOne>();
		PhysicalEducationKeyStageOne physicalEducationKeyStageOne = null;
		try {
			String query = "select * from tbl_physical_education_key_stage_one where DATE_FORMAT(date_created, '%Y') = "+academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				physicalEducationKeyStageOne = new PhysicalEducationKeyStageOne(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), rSet.getInt("teacher_id"), 
						rSet.getInt("personal_organization_effort"), rSet.getInt("individual_skills_effort"), 
						rSet.getInt("team_work_effort"), rSet.getString("class_teacher_comments"), 
						rSet.getDate("date_created"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(physicalEducationKeyStageOne);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
