package com.signetitsolutions.sis.server.classes;

public class SpecialCourseGrading {

	private String firstName;
	private String middleName;
	private String lastName;
	private int levelId;
	private int subjectId;
	private int teacherId;
	private String comment;
	private int evalCriteria;
	private String effort;
	private String achivment;

	/**
	 * 
	 */
	public SpecialCourseGrading() {
		super();
	}

	/**
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 * @param levelId
	 * @param subjectId
	 * @param teacherId
	 * @param comment
	 * @param evalCriteria
	 * @param effort
	 * @param achivment
	 */
	public SpecialCourseGrading(String firstName, String middleName,
			String lastName, int levelId, int subjectId, int teacherId,
			String comment, int evalCriteria, String effort, String achivment) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.levelId = levelId;
		this.subjectId = subjectId;
		this.teacherId = teacherId;
		this.comment = comment;
		this.evalCriteria = evalCriteria;
		this.effort = effort;
		this.achivment = achivment;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getLevelId() {
		return levelId;
	}

	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getEvalCriteria() {
		return evalCriteria;
	}

	public void setEvalCriteria(int evalCriteria) {
		this.evalCriteria = evalCriteria;
	}

	public String getEffort() {
		return effort;
	}

	public void setEffort(String effort) {
		this.effort = effort;
	}

	public String getAchivment() {
		return achivment;
	}

	public void setAchivment(String achivment) {
		this.achivment = achivment;
	}

}
