package com.signetitsolutions.sis.server.classes;

public class SubjectsTaken {
	private int id;
	private String grade;
	private String effort;
	private String cond;
	private String exam;

	/**
	 * @param id
	 * @param grade
	 * @param effort
	 * @param cond
	 * @param exam
	 */
	public SubjectsTaken(int id, String grade, String effort, String cond,
			String exam) {
		super();
		this.id = id;
		this.grade = grade;
		this.effort = effort;
		this.cond = cond;
		this.exam = exam;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
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

	public String getExam() {
		return exam;
	}

	public void setExam(String exam) {
		this.exam = exam;
	}

}
