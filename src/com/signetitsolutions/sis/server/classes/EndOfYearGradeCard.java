package com.signetitsolutions.sis.server.classes;

public class EndOfYearGradeCard {
	private int teacherId;
	private String grade;
	private String effort;
	private String cond;
	private int subjectId;
	private String firstName;
	private String middleName;
	private String lastName;
	private String dateOfBirth;

		
	public EndOfYearGradeCard(int teacherId, String grade, String effort,
			String cond, int subjectId, String firstName, String middleName,
			String lastName, String dateOfBirth) {
		super();
		this.teacherId = teacherId;
		this.grade = grade;
		this.effort = effort;
		this.cond = cond;
		this.subjectId = subjectId;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
	}



	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public String getGrade() {
		return grade;
	}

	public void setGradeCard(String grade) {
		this.grade = grade;
	}

	public String getEffort() {
		return effort;
	}

	public void setEffort(String effort) {
		this.effort = effort;
	}

	public String getCond() {
		return cond;
	}

	public void setCond(String cond) {
		this.cond = cond;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
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

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
}
