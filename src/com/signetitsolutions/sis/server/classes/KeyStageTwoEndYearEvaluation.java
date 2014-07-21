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
public class KeyStageTwoEndYearEvaluation {
	private long id;
	private int sectionId;
	private String studentId;
	private String literacyReadingAchievement;
	private int literacyReadingEffort;
	private String literacyWritingAchievement;
	private int literacyWritingEffort;
	private String literacySpeakingAndListeningAchievement;
	private int literacySpeakingAndListeningEffort;
	private String literacyClassTeacherComments;
	private String numeracyNumberAndCalculationAchievement;
	private int numeracyNumberAndCalcualtionEffort;
	private String numeracyShapeSpaceAndMeasureAchievement;
	private int numeracyShapeSpaceAndMeasureEffort;
	private String numeracyDataHandlingAchievement;
	private int numeracyDataHandlingEffort;
	private String numeracyProblemSolvingAchievement;
	private int numeracyProblemSolvingEffort;
	private String numeracyClassTeacherComments;
	private String ipcScienceAchievement;
	private int ipcScienceEffort;
	private String ipcHumanitiesAchievement;
	private int ipcHumanitiesEffort;
	private String ipcArtAndDesignAchievement;
	private int ipcArtAndDesignEffort;
	private String ipcClassTeacherComments;
	private String classTeacherGeneralComments;
	private String suggestedTargestForthcomingYear;
	private Date dateCreated;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public KeyStageTwoEndYearEvaluation() {
	}

	

	

	

	/**
	 * @param sectionId
	 * @param studentId
	 * @param literacyReadingAchievement
	 * @param literacyReadingEffort
	 * @param literacyWritingAchievement
	 * @param literacyWritingEffort
	 * @param literacySpeakingAndListeningAchievement
	 * @param literacySpeakingAndListeningEffort
	 * @param literacyClassTeacherComments
	 * @param numeracyNumberAndCalculationAchievement
	 * @param numeracyNumberAndCalcualtionEffort
	 * @param numeracyShapeSpaceAndMeasureAchievement
	 * @param numeracyShapeSpaceAndMeasureEffort
	 * @param numeracyDataHandlingAchievement
	 * @param numeracyDataHandlingEffort
	 * @param numeracyProblemSolvingAchievement
	 * @param numeracyProblemSolvingEffort
	 * @param numeracyClassTeacherComments
	 * @param ipcScienceAchievement
	 * @param ipcScienceEffort
	 * @param ipcHumanitiesAchievement
	 * @param ipcHumanitiesEffort
	 * @param ipcArtAndDesignAchievement
	 * @param ipcArtAndDesignEffort
	 * @param ipcClassTeacherComments
	 * @param classTeacherGeneralComments
	 * @param suggestedTargestForthcomingYear
	 * @param dateCreated
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public KeyStageTwoEndYearEvaluation(int sectionId, String studentId,
			String literacyReadingAchievement, int literacyReadingEffort,
			String literacyWritingAchievement, int literacyWritingEffort,
			String literacySpeakingAndListeningAchievement,
			int literacySpeakingAndListeningEffort,
			String literacyClassTeacherComments,
			String numeracyNumberAndCalculationAchievement,
			int numeracyNumberAndCalcualtionEffort,
			String numeracyShapeSpaceAndMeasureAchievement,
			int numeracyShapeSpaceAndMeasureEffort,
			String numeracyDataHandlingAchievement,
			int numeracyDataHandlingEffort,
			String numeracyProblemSolvingAchievement,
			int numeracyProblemSolvingEffort,
			String numeracyClassTeacherComments, String ipcScienceAchievement,
			int ipcScienceEffort, String ipcHumanitiesAchievement,
			int ipcHumanitiesEffort, String ipcArtAndDesignAchievement,
			int ipcArtAndDesignEffort, String ipcClassTeacherComments,
			String classTeacherGeneralComments,
			String suggestedTargestForthcomingYear, Date dateCreated,
			int modifiedBy, Date modificationDate) {
		this.sectionId = sectionId;
		this.studentId = studentId;
		this.literacyReadingAchievement = literacyReadingAchievement;
		this.literacyReadingEffort = literacyReadingEffort;
		this.literacyWritingAchievement = literacyWritingAchievement;
		this.literacyWritingEffort = literacyWritingEffort;
		this.literacySpeakingAndListeningAchievement = literacySpeakingAndListeningAchievement;
		this.literacySpeakingAndListeningEffort = literacySpeakingAndListeningEffort;
		this.literacyClassTeacherComments = literacyClassTeacherComments;
		this.numeracyNumberAndCalculationAchievement = numeracyNumberAndCalculationAchievement;
		this.numeracyNumberAndCalcualtionEffort = numeracyNumberAndCalcualtionEffort;
		this.numeracyShapeSpaceAndMeasureAchievement = numeracyShapeSpaceAndMeasureAchievement;
		this.numeracyShapeSpaceAndMeasureEffort = numeracyShapeSpaceAndMeasureEffort;
		this.numeracyDataHandlingAchievement = numeracyDataHandlingAchievement;
		this.numeracyDataHandlingEffort = numeracyDataHandlingEffort;
		this.numeracyProblemSolvingAchievement = numeracyProblemSolvingAchievement;
		this.numeracyProblemSolvingEffort = numeracyProblemSolvingEffort;
		this.numeracyClassTeacherComments = numeracyClassTeacherComments;
		this.ipcScienceAchievement = ipcScienceAchievement;
		this.ipcScienceEffort = ipcScienceEffort;
		this.ipcHumanitiesAchievement = ipcHumanitiesAchievement;
		this.ipcHumanitiesEffort = ipcHumanitiesEffort;
		this.ipcArtAndDesignAchievement = ipcArtAndDesignAchievement;
		this.ipcArtAndDesignEffort = ipcArtAndDesignEffort;
		this.ipcClassTeacherComments = ipcClassTeacherComments;
		this.classTeacherGeneralComments = classTeacherGeneralComments;
		this.suggestedTargestForthcomingYear = suggestedTargestForthcomingYear;
		this.dateCreated = dateCreated;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}



	/**
	 * @param id
	 * @param sectionId
	 * @param studentId
	 * @param literacyReadingAchievement
	 * @param literacyReadingEffort
	 * @param literacyWritingAchievement
	 * @param literacyWritingEffort
	 * @param literacySpeakingAndListeningAchievement
	 * @param literacySpeakingAndListeningEffort
	 * @param literacyClassTeacherComments
	 * @param numeracyNumberAndCalculationAchievement
	 * @param numeracyNumberAndCalcualtionEffort
	 * @param numeracyShapeSpaceAndMeasureAchievement
	 * @param numeracyShapeSpaceAndMeasureEffort
	 * @param numeracyDataHandlingAchievement
	 * @param numeracyDataHandlingEffort
	 * @param numeracyProblemSolvingAchievement
	 * @param numeracyProblemSolvingEffort
	 * @param numeracyClassTeacherComments
	 * @param ipcScienceAchievement
	 * @param ipcScienceEffort
	 * @param ipcHumanitiesAchievement
	 * @param ipcHumanitiesEffort
	 * @param ipcArtAndDesignAchievement
	 * @param ipcArtAndDesignEffort
	 * @param ipcClassTeacherComments
	 * @param classTeacherGeneralComments
	 * @param suggestedTargestForthcomingYear
	 * @param dateCreated	 
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public KeyStageTwoEndYearEvaluation(long id, int sectionId, String studentId,
			String literacyReadingAchievement, int literacyReadingEffort,
			String literacyWritingAchievement, int literacyWritingEffort,
			String literacySpeakingAndListeningAchievement,
			int literacySpeakingAndListeningEffort,
			String literacyClassTeacherComments,
			String numeracyNumberAndCalculationAchievement,
			int numeracyNumberAndCalcualtionEffort,
			String numeracyShapeSpaceAndMeasureAchievement,
			int numeracyShapeSpaceAndMeasureEffort,
			String numeracyDataHandlingAchievement,
			int numeracyDataHandlingEffort,
			String numeracyProblemSolvingAchievement,
			int numeracyProblemSolvingEffort,
			String numeracyClassTeacherComments, String ipcScienceAchievement,
			int ipcScienceEffort, String ipcHumanitiesAchievement,
			int ipcHumanitiesEffort, String ipcArtAndDesignAchievement,
			int ipcArtAndDesignEffort, String ipcClassTeacherComments,
			String classTeacherGeneralComments,
			String suggestedTargestForthcomingYear, Date dateCreated,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.sectionId = sectionId;
		this.studentId = studentId;
		this.literacyReadingAchievement = literacyReadingAchievement;
		this.literacyReadingEffort = literacyReadingEffort;
		this.literacyWritingAchievement = literacyWritingAchievement;
		this.literacyWritingEffort = literacyWritingEffort;
		this.literacySpeakingAndListeningAchievement = literacySpeakingAndListeningAchievement;
		this.literacySpeakingAndListeningEffort = literacySpeakingAndListeningEffort;
		this.literacyClassTeacherComments = literacyClassTeacherComments;
		this.numeracyNumberAndCalculationAchievement = numeracyNumberAndCalculationAchievement;
		this.numeracyNumberAndCalcualtionEffort = numeracyNumberAndCalcualtionEffort;
		this.numeracyShapeSpaceAndMeasureAchievement = numeracyShapeSpaceAndMeasureAchievement;
		this.numeracyShapeSpaceAndMeasureEffort = numeracyShapeSpaceAndMeasureEffort;
		this.numeracyDataHandlingAchievement = numeracyDataHandlingAchievement;
		this.numeracyDataHandlingEffort = numeracyDataHandlingEffort;
		this.numeracyProblemSolvingAchievement = numeracyProblemSolvingAchievement;
		this.numeracyProblemSolvingEffort = numeracyProblemSolvingEffort;
		this.numeracyClassTeacherComments = numeracyClassTeacherComments;
		this.ipcScienceAchievement = ipcScienceAchievement;
		this.ipcScienceEffort = ipcScienceEffort;
		this.ipcHumanitiesAchievement = ipcHumanitiesAchievement;
		this.ipcHumanitiesEffort = ipcHumanitiesEffort;
		this.ipcArtAndDesignAchievement = ipcArtAndDesignAchievement;
		this.ipcArtAndDesignEffort = ipcArtAndDesignEffort;
		this.ipcClassTeacherComments = ipcClassTeacherComments;
		this.classTeacherGeneralComments = classTeacherGeneralComments;
		this.suggestedTargestForthcomingYear = suggestedTargestForthcomingYear;
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
	 * @param id the id to set
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
	 * @param sectionId the sectionId to set
	 */
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}



	/**
	 * @return the studentId
	 */
	public String getStudentId() {
		return studentId;
	}



	/**
	 * @param studentId the studentId to set
	 */
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}



	/**
	 * @return the literacyReadingAchievement
	 */
	public String getLiteracyReadingAchievement() {
		return literacyReadingAchievement;
	}



	/**
	 * @param literacyReadingAchievement the literacyReadingAchievement to set
	 */
	public void setLiteracyReadingAchievement(String literacyReadingAchievement) {
		this.literacyReadingAchievement = literacyReadingAchievement;
	}



	/**
	 * @return the literacyReadingEffort
	 */
	public int getLiteracyReadingEffort() {
		return literacyReadingEffort;
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







	/**
	 * @param literacyReadingEffort the literacyReadingEffort to set
	 */
	public void setLiteracyReadingEffort(int literacyReadingEffort) {
		this.literacyReadingEffort = literacyReadingEffort;
	}



	/**
	 * @return the literacyWritingAchievement
	 */
	public String getLiteracyWritingAchievement() {
		return literacyWritingAchievement;
	}



	/**
	 * @param literacyWritingAchievement the literacyWritingAchievement to set
	 */
	public void setLiteracyWritingAchievement(String literacyWritingAchievement) {
		this.literacyWritingAchievement = literacyWritingAchievement;
	}



	/**
	 * @return the literacyWritingEffort
	 */
	public int getLiteracyWritingEffort() {
		return literacyWritingEffort;
	}



	/**
	 * @param literacyWritingEffort the literacyWritingEffort to set
	 */
	public void setLiteracyWritingEffort(int literacyWritingEffort) {
		this.literacyWritingEffort = literacyWritingEffort;
	}



	/**
	 * @return the literacySpeakingAndListeningAchievement
	 */
	public String getLiteracySpeakingAndListeningAchievement() {
		return literacySpeakingAndListeningAchievement;
	}



	/**
	 * @param literacySpeakingAndListeningAchievement the literacySpeakingAndListeningAchievement to set
	 */
	public void setLiteracySpeakingAndListeningAchievement(
			String literacySpeakingAndListeningAchievement) {
		this.literacySpeakingAndListeningAchievement = literacySpeakingAndListeningAchievement;
	}



	/**
	 * @return the literacySpeakingAndListeningEffort
	 */
	public int getLiteracySpeakingAndListeningEffort() {
		return literacySpeakingAndListeningEffort;
	}



	/**
	 * @param literacySpeakingAndListeningEffort the literacySpeakingAndListeningEffort to set
	 */
	public void setLiteracySpeakingAndListeningEffort(
			int literacySpeakingAndListeningEffort) {
		this.literacySpeakingAndListeningEffort = literacySpeakingAndListeningEffort;
	}



	/**
	 * @return the numeracyNumberAndCalculationAchievement
	 */
	public String getNumeracyNumberAndCalculationAchievement() {
		return numeracyNumberAndCalculationAchievement;
	}



	/**
	 * @param numeracyNumberAndCalculationAchievement the numeracyNumberAndCalculationAchievement to set
	 */
	public void setNumeracyNumberAndCalculationAchievement(
			String numeracyNumberAndCalculationAchievement) {
		this.numeracyNumberAndCalculationAchievement = numeracyNumberAndCalculationAchievement;
	}



	/**
	 * @return the numeracyNumberAndCalcualtionEffort
	 */
	public int getNumeracyNumberAndCalcualtionEffort() {
		return numeracyNumberAndCalcualtionEffort;
	}



	/**
	 * @param numeracyNumberAndCalcualtionEffort the numeracyNumberAndCalcualtionEffort to set
	 */
	public void setNumeracyNumberAndCalcualtionEffort(
			int numeracyNumberAndCalcualtionEffort) {
		this.numeracyNumberAndCalcualtionEffort = numeracyNumberAndCalcualtionEffort;
	}



	/**
	 * @return the numeracyShapeSpaceAndMeasureAchievement
	 */
	public String getNumeracyShapeSpaceAndMeasureAchievement() {
		return numeracyShapeSpaceAndMeasureAchievement;
	}



	/**
	 * @param numeracyShapeSpaceAndMeasureAchievement the numeracyShapeSpaceAndMeasureAchievement to set
	 */
	public void setNumeracyShapeSpaceAndMeasureAchievement(
			String numeracyShapeSpaceAndMeasureAchievement) {
		this.numeracyShapeSpaceAndMeasureAchievement = numeracyShapeSpaceAndMeasureAchievement;
	}



	/**
	 * @return the numeracyShapeSpaceAndMeasureEffort
	 */
	public int getNumeracyShapeSpaceAndMeasureEffort() {
		return numeracyShapeSpaceAndMeasureEffort;
	}



	/**
	 * @param numeracyShapeSpaceAndMeasureEffort the numeracyShapeSpaceAndMeasureEffort to set
	 */
	public void setNumeracyShapeSpaceAndMeasureEffort(
			int numeracyShapeSpaceAndMeasureEffort) {
		this.numeracyShapeSpaceAndMeasureEffort = numeracyShapeSpaceAndMeasureEffort;
	}



	/**
	 * @return the numeracyDataHandlingAchievement
	 */
	public String getNumeracyDataHandlingAchievement() {
		return numeracyDataHandlingAchievement;
	}



	/**
	 * @param numeracyDataHandlingAchievement the numeracyDataHandlingAchievement to set
	 */
	public void setNumeracyDataHandlingAchievement(
			String numeracyDataHandlingAchievement) {
		this.numeracyDataHandlingAchievement = numeracyDataHandlingAchievement;
	}



	/**
	 * @return the numeracyDataHandlingEffort
	 */
	public int getNumeracyDataHandlingEffort() {
		return numeracyDataHandlingEffort;
	}



	/**
	 * @param numeracyDataHandlingEffort the numeracyDataHandlingEffort to set
	 */
	public void setNumeracyDataHandlingEffort(int numeracyDataHandlingEffort) {
		this.numeracyDataHandlingEffort = numeracyDataHandlingEffort;
	}



	/**
	 * @return the numeracyProblemSolvingAchievement
	 */
	public String getNumeracyProblemSolvingAchievement() {
		return numeracyProblemSolvingAchievement;
	}



	/**
	 * @param numeracyProblemSolvingAchievement the numeracyProblemSolvingAchievement to set
	 */
	public void setNumeracyProblemSolvingAchievement(
			String numeracyProblemSolvingAchievement) {
		this.numeracyProblemSolvingAchievement = numeracyProblemSolvingAchievement;
	}



	/**
	 * @return the numeracyProblemSolvingEffort
	 */
	public int getNumeracyProblemSolvingEffort() {
		return numeracyProblemSolvingEffort;
	}



	/**
	 * @param numeracyProblemSolvingEffort the numeracyProblemSolvingEffort to set
	 */
	public void setNumeracyProblemSolvingEffort(int numeracyProblemSolvingEffort) {
		this.numeracyProblemSolvingEffort = numeracyProblemSolvingEffort;
	}



	/**
	 * @return the ipcScienceAchievement
	 */
	public String getIpcScienceAchievement() {
		return ipcScienceAchievement;
	}



	/**
	 * @param ipcScienceAchievement the ipcScienceAchievement to set
	 */
	public void setIpcScienceAchievement(String ipcScienceAchievement) {
		this.ipcScienceAchievement = ipcScienceAchievement;
	}



	/**
	 * @return the ipcScienceEffort
	 */
	public int getIpcScienceEffort() {
		return ipcScienceEffort;
	}



	/**
	 * @param ipcScienceEffort the ipcScienceEffort to set
	 */
	public void setIpcScienceEffort(int ipcScienceEffort) {
		this.ipcScienceEffort = ipcScienceEffort;
	}



	/**
	 * @return the ipcHumanitiesAchievement
	 */
	public String getIpcHumanitiesAchievement() {
		return ipcHumanitiesAchievement;
	}



	/**
	 * @param ipcHumanitiesAchievement the ipcHumanitiesAchievement to set
	 */
	public void setIpcHumanitiesAchievement(String ipcHumanitiesAchievement) {
		this.ipcHumanitiesAchievement = ipcHumanitiesAchievement;
	}



	/**
	 * @return the ipcHumanitiesEffort
	 */
	public int getIpcHumanitiesEffort() {
		return ipcHumanitiesEffort;
	}



	/**
	 * @param ipcHumanitiesEffort the ipcHumanitiesEffort to set
	 */
	public void setIpcHumanitiesEffort(int ipcHumanitiesEffort) {
		this.ipcHumanitiesEffort = ipcHumanitiesEffort;
	}



	/**
	 * @return the ipcArtAndDesignAchievement
	 */
	public String getIpcArtAndDesignAchievement() {
		return ipcArtAndDesignAchievement;
	}



	/**
	 * @param ipcArtAndDesignAchievement the ipcArtAndDesignAchievement to set
	 */
	public void setIpcArtAndDesignAchievement(String ipcArtAndDesignAchievement) {
		this.ipcArtAndDesignAchievement = ipcArtAndDesignAchievement;
	}



	/**
	 * @return the ipcArtAndDesignEffort
	 */
	public int getIpcArtAndDesignEffort() {
		return ipcArtAndDesignEffort;
	}



	/**
	 * @param ipcArtAndDesignEffort the ipcArtAndDesignEffort to set
	 */
	public void setIpcArtAndDesignEffort(int ipcArtAndDesignEffort) {
		this.ipcArtAndDesignEffort = ipcArtAndDesignEffort;
	}



	/**
	 * @return the classTeacherGeneralComments
	 */
	public String getClassTeacherGeneralComments() {
		return classTeacherGeneralComments;
	}



	/**
	 * @param classTeacherGeneralComments the classTeacherGeneralComments to set
	 */
	public void setClassTeacherGeneralComments(String classTeacherGeneralComments) {
		this.classTeacherGeneralComments = classTeacherGeneralComments;
	}



	/**
	 * @return the suggestedTargestForthcomingYear
	 */
	public String getSuggestedTargestForthcomingYear() {
		return suggestedTargestForthcomingYear;
	}



	/**
	 * @param suggestedTargestForthcomingYear the suggestedTargestForthcomingYear to set
	 */
	public void setSuggestedTargestForthcomingYear(
			String suggestedTargestForthcomingYear) {
		this.suggestedTargestForthcomingYear = suggestedTargestForthcomingYear;
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
	 * @return the literacyClassTeacherComments
	 */
	public String getLiteracyClassTeacherComments() {
		return literacyClassTeacherComments;
	}







	/**
	 * @param literacyClassTeacherComments the literacyClassTeacherComments to set
	 */
	public void setLiteracyClassTeacherComments(String literacyClassTeacherComments) {
		this.literacyClassTeacherComments = literacyClassTeacherComments;
	}







	/**
	 * @return the numeracyClassTeacherComments
	 */
	public String getNumeracyClassTeacherComments() {
		return numeracyClassTeacherComments;
	}







	/**
	 * @param numeracyClassTeacherComments the numeracyClassTeacherComments to set
	 */
	public void setNumeracyClassTeacherComments(String numeracyClassTeacherComments) {
		this.numeracyClassTeacherComments = numeracyClassTeacherComments;
	}







	/**
	 * @return the ipcClassTeacherComments
	 */
	public String getIpcClassTeacherComments() {
		return ipcClassTeacherComments;
	}







	/**
	 * @param ipcClassTeacherComments the ipcClassTeacherComments to set
	 */
	public void setIpcClassTeacherComments(String ipcClassTeacherComments) {
		this.ipcClassTeacherComments = ipcClassTeacherComments;
	}







	public void save() {
		try {
			String sqlStr = "insert into tbl_key_stage_two_end_year_evaluation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getSectionId());
			pStmt.setString(3, this.getStudentId());
			pStmt.setString(4, this.getLiteracyReadingAchievement());
			pStmt.setInt(5, this.getLiteracyReadingEffort());
			pStmt.setString(6, this.getLiteracyWritingAchievement());
			pStmt.setInt(7, this.getLiteracyWritingEffort());
			pStmt.setString(8, this.getLiteracySpeakingAndListeningAchievement());
			pStmt.setInt(9, this.getLiteracySpeakingAndListeningEffort());
			pStmt.setString(10, this.getLiteracyClassTeacherComments());
			pStmt.setString(11, this.getNumeracyNumberAndCalculationAchievement());
			pStmt.setInt(12, this.getNumeracyNumberAndCalcualtionEffort());
			pStmt.setString(13, this.getNumeracyShapeSpaceAndMeasureAchievement());
			pStmt.setInt(14, this.getNumeracyShapeSpaceAndMeasureEffort());
			pStmt.setString(15, this.getNumeracyDataHandlingAchievement());
			pStmt.setInt(16, this.getNumeracyDataHandlingEffort());
			pStmt.setString(17, this.getNumeracyProblemSolvingAchievement());
			pStmt.setInt(18, this.getNumeracyProblemSolvingEffort());
			pStmt.setString(19, this.getNumeracyClassTeacherComments());
			pStmt.setString(20, this.getIpcScienceAchievement());
			pStmt.setInt(21, this.getIpcScienceEffort());
			pStmt.setString(22, this.getIpcHumanitiesAchievement());
			pStmt.setInt(23, this.getIpcHumanitiesEffort());
			pStmt.setString(24, this.getIpcArtAndDesignAchievement());
			pStmt.setInt(25, this.getIpcArtAndDesignEffort());
			pStmt.setString(26, this.getIpcClassTeacherComments());
			pStmt.setString(27, this.getClassTeacherGeneralComments());
			pStmt.setString(28, this.getSuggestedTargestForthcomingYear());
			pStmt.setDate(29, this.getDateCreated());
			pStmt.setInt(30, this.getModifiedBy());
			pStmt.setDate(31, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(KeyStageTwoEndYearEvaluation keyStageTwoEndYearEvaluation) {
		try {
			String sqlStr = "update tbl_key_stage_two_end_year_evaluation set section_id = ?," +
					"student_id = ?, literacy_reading_achievement = ?, literacy_reading_effort = ?," +
					"literacy_writing_achievement = ?, literacy_writing_effort = ?," +
					"literacy_speaking_and_listening_achievement = ?, " +
					"literacy_speaking_and_listening_effort = ?, " +
					"literacy_class_teacher_comments = ?," +
					"numeracy_number_and_calculation_achievement = ?," +
					"numeracy_number_and_calculation_effort = ?," +
					"numeracy_shape_space_and_measures_achievement = ?," +
					"numeracy_shape_space_and_measures_effort = ?," +
					"numeracy_data_handling_achievement = ?," +
					"numeracy_data_handling_effort = ?, " +
					"numeracy_problem_solving_achievement = ?," +
					"numeracy_problem_solving_effort = ?, " +
					"numeracy_class_teacher_comments = ?," +
					"ipc_science_achievement = ?," +
					"ipc_science_effort = ?, ipc_humanities_achievement = ?," +
					"ipc_humanities_effort = ?, ipc_art_and_design_achievement = ?," +
					"ipc_art_and_design_effort = ?," +
					"ipc_class_teacher_comments = ?," +
					"class_teacher_general_comments = ?," +
					"suggested_targets_forthcoming_year = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, keyStageTwoEndYearEvaluation.getSectionId());
			pStmt.setString(2, keyStageTwoEndYearEvaluation.getStudentId());
			pStmt.setString(3, keyStageTwoEndYearEvaluation.getLiteracyReadingAchievement());
			pStmt.setInt(4, keyStageTwoEndYearEvaluation.getLiteracyReadingEffort());
			pStmt.setString(5, keyStageTwoEndYearEvaluation.getLiteracyWritingAchievement());
			pStmt.setInt(6, keyStageTwoEndYearEvaluation.getLiteracyWritingEffort());
			pStmt.setString(7, keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningAchievement());
			pStmt.setInt(8, keyStageTwoEndYearEvaluation.getLiteracySpeakingAndListeningEffort());
			pStmt.setString(9, keyStageTwoEndYearEvaluation.getLiteracyClassTeacherComments());
			pStmt.setString(10, keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalculationAchievement());
			pStmt.setInt(11, keyStageTwoEndYearEvaluation.getNumeracyNumberAndCalcualtionEffort());
			pStmt.setString(12, keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureAchievement());
			pStmt.setInt(13, keyStageTwoEndYearEvaluation.getNumeracyShapeSpaceAndMeasureEffort());
			pStmt.setString(14, keyStageTwoEndYearEvaluation.getNumeracyDataHandlingAchievement());
			pStmt.setInt(15, keyStageTwoEndYearEvaluation.getNumeracyDataHandlingEffort());
			pStmt.setString(16, keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingAchievement());
			pStmt.setInt(17, keyStageTwoEndYearEvaluation.getNumeracyProblemSolvingEffort());
			pStmt.setString(18, keyStageTwoEndYearEvaluation.getNumeracyClassTeacherComments());
			pStmt.setString(19, keyStageTwoEndYearEvaluation.getIpcScienceAchievement());
			pStmt.setInt(20, keyStageTwoEndYearEvaluation.getIpcScienceEffort());
			pStmt.setString(21, keyStageTwoEndYearEvaluation.getIpcHumanitiesAchievement());
			pStmt.setInt(22, keyStageTwoEndYearEvaluation.getIpcHumanitiesEffort());
			pStmt.setString(23, keyStageTwoEndYearEvaluation.getIpcArtAndDesignAchievement());
			pStmt.setInt(24, keyStageTwoEndYearEvaluation.getIpcArtAndDesignEffort());
			pStmt.setString(25, keyStageTwoEndYearEvaluation.getIpcClassTeacherComments());
			pStmt.setString(26, keyStageTwoEndYearEvaluation.getClassTeacherGeneralComments());
			pStmt.setString(27, keyStageTwoEndYearEvaluation.getSuggestedTargestForthcomingYear());			
			pStmt.setInt(28, keyStageTwoEndYearEvaluation.getModifiedBy());
			pStmt.setDate(29, keyStageTwoEndYearEvaluation.getModificationDate());
			pStmt.setLong(30, keyStageTwoEndYearEvaluation.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_key_stage_two_end_year_evaluation where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<KeyStageTwoEndYearEvaluation> getAllKeyStageTwoEndYearEvaluations() {
		List<KeyStageTwoEndYearEvaluation> list = new ArrayList<KeyStageTwoEndYearEvaluation>();
		KeyStageTwoEndYearEvaluation keyStageTwoEndYearEvaluation = null;
		try {
			String query = "select * from tbl_key_stage_two_end_year_evaluation order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageTwoEndYearEvaluation = new KeyStageTwoEndYearEvaluation(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id"), rSet.getString("literacy_reading_achievement"), 
						rSet.getInt("literacy_reading_effort"), rSet.getString("literacy_writing_achievement"), 
						rSet.getInt("literacy_writing_effort"), 
						rSet.getString("literacy_speaking_and_listening_achievement"), 
						rSet.getInt("literacy_speaking_and_listening_effort"), 
						rSet.getString("literacy_class_teacher_comments"),
						rSet.getString("numeracy_number_and_calculation_achievement"), 
						rSet.getInt("numeracy_number_and_calculation_effort"), 
						rSet.getString("numeracy_shape_space_and_measures_achievement"), 
						rSet.getInt("numeracy_shape_space_and_measures_effort"), 
						rSet.getString("numeracy_data_handling_achievement"), 
						rSet.getInt("numeracy_data_handling_effort"), 
						rSet.getString("numeracy_problem_solving_achievement"), 
						rSet.getInt("numeracy_problem_solving_effort"),
						rSet.getString("numeracy_class_teacher_comments"),
						rSet.getString("ipc_science_achievement"), 
						rSet.getInt("ipc_science_effort"), rSet.getString("ipc_humanities_achievement"), 
						rSet.getInt("ipc_humanities_effort"), rSet.getString("ipc_art_and_design_achievement"), 
						rSet.getInt("ipc_art_and_design_effort"),
						rSet.getString("ipc_class_teacher_comments"),
						rSet.getString("class_teacher_general_comments"), 
						rSet.getString("suggested_targets_forthcoming_year"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(keyStageTwoEndYearEvaluation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static KeyStageTwoEndYearEvaluation getKeyStageTwoEndYearEvaluation(long id) {
		KeyStageTwoEndYearEvaluation keyStageTwoEndYearEvaluation = null;
		try {
			String query = "select * from tbl_key_stage_two_end_year_evaluation where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageTwoEndYearEvaluation = new KeyStageTwoEndYearEvaluation(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id"), rSet.getString("literacy_reading_achievement"), 
						rSet.getInt("literacy_reading_effort"), rSet.getString("literacy_writing_achievement"), 
						rSet.getInt("literacy_writing_effort"), 
						rSet.getString("literacy_speaking_and_listening_achievement"), 
						rSet.getInt("literacy_speaking_and_listening_effort"), 
						rSet.getString("literacy_class_teacher_comments"),
						rSet.getString("numeracy_number_and_calculation_achievement"), 
						rSet.getInt("numeracy_number_and_calculation_effort"), 
						rSet.getString("numeracy_shape_space_and_measures_achievement"), 
						rSet.getInt("numeracy_shape_space_and_measures_effort"), 
						rSet.getString("numeracy_data_handling_achievement"), 
						rSet.getInt("numeracy_data_handling_effort"), 
						rSet.getString("numeracy_problem_solving_achievement"), 
						rSet.getInt("numeracy_problem_solving_effort"),
						rSet.getString("numeracy_class_teacher_comments"),
						rSet.getString("ipc_science_achievement"), 
						rSet.getInt("ipc_science_effort"), rSet.getString("ipc_humanities_achievement"), 
						rSet.getInt("ipc_humanities_effort"), rSet.getString("ipc_art_and_design_achievement"), 
						rSet.getInt("ipc_art_and_design_effort"),
						rSet.getString("ipc_class_teacher_comments"),
						rSet.getString("class_teacher_general_comments"), 
						rSet.getString("suggested_targets_forthcoming_year"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));		
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return keyStageTwoEndYearEvaluation;
	}
	
	public static boolean resultAlreadySavedForThisStudentAndAcademicYear(String studentIdNumber,int academicYear){
		int cnt = 0;
		boolean recordExists = false;
		try{
			String query = "select count(*) as cnt from tbl_key_stage_two_end_year_evaluation where student_id = '"+studentIdNumber+"' and " +
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
	
	public static List<KeyStageTwoEndYearEvaluation> getAllKeyStageTwoEndYearEvaluationsForThisSectionAndAcademicYear(int sectionId, int academicYear){
		List<KeyStageTwoEndYearEvaluation> list = new ArrayList<KeyStageTwoEndYearEvaluation>();
		KeyStageTwoEndYearEvaluation keyStageTwoEndYearEvaluation = null;
		try{
			String query = "select * from tbl_key_stage_two_end_year_evaluation where DATE_FORMAT(date_created, '%Y') = "+
		academicYear+" and section_id = "+sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				keyStageTwoEndYearEvaluation = new KeyStageTwoEndYearEvaluation(rSet.getLong("id"), rSet.getInt("section_id"), 
						rSet.getString("student_id"), rSet.getString("literacy_reading_achievement"), 
						rSet.getInt("literacy_reading_effort"), rSet.getString("literacy_writing_achievement"), 
						rSet.getInt("literacy_writing_effort"), 
						rSet.getString("literacy_speaking_and_listening_achievement"), 
						rSet.getInt("literacy_speaking_and_listening_effort"), 
						rSet.getString("literacy_class_teacher_comments"),
						rSet.getString("numeracy_number_and_calculation_achievement"), 
						rSet.getInt("numeracy_number_and_calculation_effort"), 
						rSet.getString("numeracy_shape_space_and_measures_achievement"), 
						rSet.getInt("numeracy_shape_space_and_measures_effort"), 
						rSet.getString("numeracy_data_handling_achievement"), 
						rSet.getInt("numeracy_data_handling_effort"), 
						rSet.getString("numeracy_problem_solving_achievement"), 
						rSet.getInt("numeracy_problem_solving_effort"),
						rSet.getString("numeracy_class_teacher_comments"),
						rSet.getString("ipc_science_achievement"), 
						rSet.getInt("ipc_science_effort"), rSet.getString("ipc_humanities_achievement"), 
						rSet.getInt("ipc_humanities_effort"), rSet.getString("ipc_art_and_design_achievement"), 
						rSet.getInt("ipc_art_and_design_effort"),
						rSet.getString("ipc_class_teacher_comments"),
						rSet.getString("class_teacher_general_comments"), 
						rSet.getString("suggested_targets_forthcoming_year"), rSet.getDate("date_created"),
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(keyStageTwoEndYearEvaluation);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}//end class
