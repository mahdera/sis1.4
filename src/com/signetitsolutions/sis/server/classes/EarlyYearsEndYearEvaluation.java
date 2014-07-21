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
public class EarlyYearsEndYearEvaluation {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private String personalSocialEmotionalDevelopment;
	private String communicationAndLanguage;
	private String physicalDevelopment;
	private String literacy;
	private String mathematics;
	private String understandingTheWorld;
	private String expressiveArtsAndDesign;
	private String generalComments;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public EarlyYearsEndYearEvaluation() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param personalSocialEmotionalDevelopment
	 * @param communicationAndLanguage
	 * @param physicalDevelopment
	 * @param literacy
	 * @param mathematics
	 * @param understandingTheWorld
	 * @param expressiveArtsAndDesign
	 * @param generalComments
	 * @param dateCreated
	 * @param modifiedby
	 * @param modificationDate
	 */
	public EarlyYearsEndYearEvaluation(int sectionId, String studentIdNumber,
			String personalSocialEmotionalDevelopment,
			String communicationAndLanguage, String physicalDevelopment,
			String literacy, String mathematics, String understandingTheWorld,
			String expressiveArtsAndDesign, String generalComments,Date dateCreated,
			int modifiedBy, Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.personalSocialEmotionalDevelopment = personalSocialEmotionalDevelopment;
		this.communicationAndLanguage = communicationAndLanguage;
		this.physicalDevelopment = physicalDevelopment;
		this.literacy = literacy;
		this.mathematics = mathematics;
		this.understandingTheWorld = understandingTheWorld;
		this.expressiveArtsAndDesign = expressiveArtsAndDesign;
		this.generalComments = generalComments;
		this.dateCreated = dateCreated;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param sectionId
	 * @param studentIdNumber
	 * @param personalSocialEmotionalDevelopment
	 * @param communicationAndLanguage
	 * @param physicalDevelopment
	 * @param literacy
	 * @param mathematics
	 * @param understandingTheWorld
	 * @param expressiveArtsAndDesign
	 * @param generalComments
	 * @param dateCreated
	 * @param modifiedby
	 * @param modificationDate
	 */
	public EarlyYearsEndYearEvaluation(long id, int sectionId,
			String studentIdNumber, String personalSocialEmotionalDevelopment,
			String communicationAndLanguage, String physicalDevelopment,
			String literacy, String mathematics, String understandingTheWorld,
			String expressiveArtsAndDesign, String generalComments,Date dateCreated,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.personalSocialEmotionalDevelopment = personalSocialEmotionalDevelopment;
		this.communicationAndLanguage = communicationAndLanguage;
		this.physicalDevelopment = physicalDevelopment;
		this.literacy = literacy;
		this.mathematics = mathematics;
		this.understandingTheWorld = understandingTheWorld;
		this.expressiveArtsAndDesign = expressiveArtsAndDesign;
		this.generalComments = generalComments;
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
	 * @return the personalSocialEmotionalDevelopment
	 */
	public String getPersonalSocialEmotionalDevelopment() {
		return personalSocialEmotionalDevelopment;
	}

	/**
	 * @param personalSocialEmotionalDevelopment
	 *            the personalSocialEmotionalDevelopment to set
	 */
	public void setPersonalSocialEmotionalDevelopment(
			String personalSocialEmotionalDevelopment) {
		this.personalSocialEmotionalDevelopment = personalSocialEmotionalDevelopment;
	}

	/**
	 * @return the communicationAndLanguage
	 */
	public String getCommunicationAndLanguage() {
		return communicationAndLanguage;
	}

	/**
	 * @param communicationAndLanguage
	 *            the communicationAndLanguage to set
	 */
	public void setCommunicationAndLanguage(String communicationAndLanguage) {
		this.communicationAndLanguage = communicationAndLanguage;
	}

	/**
	 * @return the physicalDevelopment
	 */
	public String getPhysicalDevelopment() {
		return physicalDevelopment;
	}

	/**
	 * @param physicalDevelopment
	 *            the physicalDevelopment to set
	 */
	public void setPhysicalDevelopment(String physicalDevelopment) {
		this.physicalDevelopment = physicalDevelopment;
	}

	/**
	 * @return the literacy
	 */
	public String getLiteracy() {
		return literacy;
	}

	/**
	 * @param literacy
	 *            the literacy to set
	 */
	public void setLiteracy(String literacy) {
		this.literacy = literacy;
	}

	/**
	 * @return the mathematics
	 */
	public String getMathematics() {
		return mathematics;
	}

	/**
	 * @param mathematics
	 *            the mathematics to set
	 */
	public void setMathematics(String mathematics) {
		this.mathematics = mathematics;
	}

	/**
	 * @return the understandingTheWorld
	 */
	public String getUnderstandingTheWorld() {
		return understandingTheWorld;
	}

	/**
	 * @param understandingTheWorld
	 *            the understandingTheWorld to set
	 */
	public void setUnderstandingTheWorld(String understandingTheWorld) {
		this.understandingTheWorld = understandingTheWorld;
	}

	/**
	 * @return the expressiveArtsAndDesign
	 */
	public String getExpressiveArtsAndDesign() {
		return expressiveArtsAndDesign;
	}

	/**
	 * @param expressiveArtsAndDesign
	 *            the expressiveArtsAndDesign to set
	 */
	public void setExpressiveArtsAndDesign(String expressiveArtsAndDesign) {
		this.expressiveArtsAndDesign = expressiveArtsAndDesign;
	}

	/**
	 * @return the generalComments
	 */
	public String getGeneralComments() {
		return generalComments;
	}

	/**
	 * @param generalComments
	 *            the generalComments to set
	 */
	public void setGeneralComments(String generalComments) {
		this.generalComments = generalComments;
	}

	/**
	 * @return the modifiedby
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}

	/**
	 * @param modifiedby
	 *            the modifiedby to set
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
			String sqlStr = "insert into tbl_early_years_end_year_evaluation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setString(4, this.getPersonalSocialEmotionalDevelopment());
			pStmt.setString(5, this.getCommunicationAndLanguage());
			pStmt.setString(6, this.getPhysicalDevelopment());
			pStmt.setString(7, this.getLiteracy());
			pStmt.setString(8, this.getMathematics());
			pStmt.setString(9, this.getUnderstandingTheWorld());
			pStmt.setString(10, this.getExpressiveArtsAndDesign());
			pStmt.setString(11, this.getGeneralComments());
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

	public static void update(EarlyYearsEndYearEvaluation earlyYearsEndYearEvaluation) {
		try {
			String sqlStr = "update tbl_early_years_end_year_evaluation set section_id = ?," +
					"student_id_number = ?, personal_social_emotional_development	 = ?," +
					"communication_and_language = ?, physical_development = ?," +
					"literacy = ?, mathematics = ?, understanding_the_world = ?," +
					"expressive_arts_and_design = ?, general_comments = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, earlyYearsEndYearEvaluation.getSectionId());
			pStmt.setString(2, earlyYearsEndYearEvaluation.getStudentIdNumber());
			pStmt.setString(3, earlyYearsEndYearEvaluation.getPersonalSocialEmotionalDevelopment());
			pStmt.setString(4, earlyYearsEndYearEvaluation.getCommunicationAndLanguage());
			pStmt.setString(5, earlyYearsEndYearEvaluation.getPhysicalDevelopment());
			pStmt.setString(6, earlyYearsEndYearEvaluation.getLiteracy());
			pStmt.setString(7, earlyYearsEndYearEvaluation.getMathematics());
			pStmt.setString(8, earlyYearsEndYearEvaluation.getUnderstandingTheWorld());
			pStmt.setString(9, earlyYearsEndYearEvaluation.getExpressiveArtsAndDesign());
			pStmt.setString(10, earlyYearsEndYearEvaluation.getGeneralComments());
			pStmt.setInt(11, earlyYearsEndYearEvaluation.getModifiedBy());
			pStmt.setDate(12, earlyYearsEndYearEvaluation.getModificationDate());
			pStmt.setLong(13, earlyYearsEndYearEvaluation.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_early_years_end_year_evaluation where id = "+id;
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EarlyYearsEndYearEvaluation> getAllEarlyYearsEndYearEvaluations() {
		List<EarlyYearsEndYearEvaluation> list = new ArrayList<EarlyYearsEndYearEvaluation>();
		EarlyYearsEndYearEvaluation earlyYearsEndYearEvaluation = null;
		try {
			String query = "select * from tbl_early_years_end_year_evaluation order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				earlyYearsEndYearEvaluation = new EarlyYearsEndYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("personal_social_emotional_development"), rSet.getString("communication_and_language"), 
						rSet.getString("physical_development"), rSet.getString("literacy"), 
						rSet.getString("mathematics"), rSet.getString("understanding_the_world"), 
						rSet.getString("expressive_arts_and_design"), rSet.getString("general_comments"), 
						rSet.getDate("date_created"),rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(earlyYearsEndYearEvaluation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EarlyYearsEndYearEvaluation getEarlyYearsEndYearEvaluation(	long id) {
		EarlyYearsEndYearEvaluation earlyYearsEndYearEvaluation = null;
		try {
			String query = "select * from tbl_early_years_end_year_evaluation where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				earlyYearsEndYearEvaluation = new EarlyYearsEndYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("personal_social_emotional_development"), rSet.getString("communication_and_language"), 
						rSet.getString("physical_development"), rSet.getString("literacy"), 
						rSet.getString("mathematics"), rSet.getString("understanding_the_world"), 
						rSet.getString("expressive_arts_and_design"), rSet.getString("general_comments"), 
						rSet.getDate("date_created"),rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return earlyYearsEndYearEvaluation;
	}
	
	public static boolean resultAlreadySavedForThisStudentAndAcademicYear(String studentIdNumber,int academicYear){
		int cnt = 0;
		boolean recordExists = false;
		try{
			String query = "select count(*) as cnt from tbl_early_years_end_year_evaluation where student_id_number = '"+studentIdNumber+"' and " +
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
	
	public static List<EarlyYearsEndYearEvaluation> getAllEearlyYearsEndYearEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<EarlyYearsEndYearEvaluation> list = new ArrayList<EarlyYearsEndYearEvaluation>();
		EarlyYearsEndYearEvaluation earlyYearsEndYearEvaluation = null;
		try{
			String query = "select * from tbl_early_years_end_year_evaluation where DATE_FORMAT(date_created, '%Y') = "+
		academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				earlyYearsEndYearEvaluation = new EarlyYearsEndYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("personal_social_emotional_development"), rSet.getString("communication_and_language"), 
						rSet.getString("physical_development"), rSet.getString("literacy"), 
						rSet.getString("mathematics"), rSet.getString("understanding_the_world"), 
						rSet.getString("expressive_arts_and_design"), rSet.getString("general_comments"), 
						rSet.getDate("date_created"),rSet.getInt("modified_by"), rSet.getDate("modification_date")); 
				list.add(earlyYearsEndYearEvaluation);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
