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
public class ReceptionMidYearEvaluation {
	private long id;
	private int sectionId;
	private String studentIdNumber;
	private String receptionMidYearComment;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public ReceptionMidYearEvaluation() {
	}

	/**
	 * @param sectionId
	 * @param studentIdNumber
	 * @param receptionMidYearComment
	 */
	public ReceptionMidYearEvaluation(int sectionId, String studentIdNumber,
			String receptionMidYearComment, Date dateCreated,int modifiedBy, Date modificationDate) {
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.receptionMidYearComment = receptionMidYearComment;
		this.dateCreated = dateCreated;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param sectionId
	 * @param studentIdNumber
	 * @param nurseryMidYearComment
	 */
	public ReceptionMidYearEvaluation(long id, int sectionId,
			String studentIdNumber, String receptionMidYearComment,Date dateCreated,
			int modifiedBy,Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentIdNumber = studentIdNumber;
		this.receptionMidYearComment = receptionMidYearComment;
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
	 * @return the nurseryMidYearComment
	 */
	public String getReceptionMidYearComment() {
		return receptionMidYearComment;
	}

	/**
	 * @param nurseryMidYearComment
	 *            the nurseryMidYearComment to set
	 */
	public void setReceptionMidYearComment(String receptionMidYearComment) {
		this.receptionMidYearComment = receptionMidYearComment;
	}
	
	

	/**
	 * @return the modifiedBy
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}

	/**
	 * @param modifiedBy the modifiedBy to set
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
	 * @param modificationDate the modificationDate to set
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
			String sqlStr = "insert into tbl_reception_mid_year_evaluation values(?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentIdNumber());
			pStmt.setString(4, this.getReceptionMidYearComment());
			pStmt.setDate(5, this.getDateCreated());
			pStmt.setInt(6, this.getModifiedBy());
			pStmt.setDate(7, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(ReceptionMidYearEvaluation receptionMidYearEvaluation) {
		try {
			String sqlStr = "update tbl_reception_mid_year_evaluation set section_id = ?," +
					"student_id_number = ?, reception_mid_year_comment = ?, modified_by = ?," +
					"modification_date = ? where id = ? ";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, receptionMidYearEvaluation.getSectionId());
			pStmt.setString(2, receptionMidYearEvaluation.getStudentIdNumber());
			pStmt.setString(3, receptionMidYearEvaluation.getReceptionMidYearComment());
			pStmt.setInt(4, receptionMidYearEvaluation.getModifiedBy());
			pStmt.setDate(5, receptionMidYearEvaluation.getModificationDate());
			pStmt.setLong(6, receptionMidYearEvaluation.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_reception_mid_year_evaluation where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ReceptionMidYearEvaluation> getAllReceptionMidYearEvaluations() {
		List<ReceptionMidYearEvaluation> list = new ArrayList<ReceptionMidYearEvaluation>();
		ReceptionMidYearEvaluation receptionMidYearEvaluation = null;
		try {
			String query = "select * from tbl_reception_mid_year_evaluation order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				receptionMidYearEvaluation = new ReceptionMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("reception_mid_year_comment"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(receptionMidYearEvaluation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ReceptionMidYearEvaluation getReceptionMidYearEvaluation(long id) {
		ReceptionMidYearEvaluation receptionMidYearEvaluation = null;
		try {
			String query = "select * from tbl_reception_mid_year_evaluation where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				receptionMidYearEvaluation = new ReceptionMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("reception_mid_year_comment"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return receptionMidYearEvaluation;
	}
	
	public static boolean resultAlreadySavedForThisStudentAndAcademicYear(String studentIdNumber,int academicYear){
		int cnt = 0;
		boolean recordExists = false;
		try{
			String query = "select count(*) as cnt from tbl_reception_mid_year_evaluation where student_id_number = '"+studentIdNumber+"' and " +
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
	
	public static List<ReceptionMidYearEvaluation> getAllReceptionMidYearEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<ReceptionMidYearEvaluation> list = new ArrayList<ReceptionMidYearEvaluation>();
		ReceptionMidYearEvaluation receptionMidYearEvaluation = null;
		try{
			String query = "select * from tbl_reception_mid_year_evaluation where DATE_FORMAT(date_created, '%Y') = "+
		academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				receptionMidYearEvaluation = new ReceptionMidYearEvaluation(rSet.getLong("id"), 
						rSet.getInt("section_id"), rSet.getString("student_id_number"), 
						rSet.getString("reception_mid_year_comment"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date")); 
				list.add(receptionMidYearEvaluation);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}//end class
