package com.signetitsolutions.sis.server.classes;

import java.sql.Date;

public class Attendance {
	private String studentFirstName;
	private String studentMiddleName;
	private String studentLastName;
	private String studentSex;
	private String studentId;
	private int tardi;
	private int absent;
	private Date date;
	private int teacherId;

	/**
	 * @param studentFirstName
	 * @param studentMiddleName
	 */

	public Attendance(String studentFirstName, String studentMiddleName,
			String studentId) {
		super();
		this.studentFirstName = studentFirstName;
		this.studentMiddleName = studentMiddleName;
		this.studentId = studentId;
	}

	public Attendance(String studentFirstName, String studentMiddleName,
			String studentLastName, String studentSex, String studentId) {
		super();
		this.studentFirstName = studentFirstName;
		this.studentMiddleName = studentMiddleName;
		this.studentLastName = studentLastName;
		this.studentSex = studentSex;
		this.studentId = studentId;
	}

	public String getStudentLastName() {
		return studentLastName;
	}

	public void setStudentLastName(String studentLastName) {
		this.studentLastName = studentLastName;
	}

	public String getStudentSex() {
		return studentSex;
	}

	public void setStudentSex(String studentSex) {
		this.studentSex = studentSex;
	}

	/**
	 * @param studentFirstName
	 * @param studentMiddleName
	 * @param tardi
	 * @param absent
	 */
	public Attendance(String studentFirstName, String studentMiddleName,
			int tardi, int absent) {
		super();
		this.studentFirstName = studentFirstName;
		this.studentMiddleName = studentMiddleName;
		this.tardi = tardi;
		this.absent = absent;
	}

	/**
	 * @param studentFirstName
	 * @param studentMiddleName
	 * @param studentId
	 * @param tardi
	 * @param absent
	 */
	public Attendance(String studentFirstName, String studentMiddleName,
			String studentLastName, String studentSex, String studentId,
			int tardi, int absent) {
		super();
		this.studentFirstName = studentFirstName;
		this.studentMiddleName = studentMiddleName;
		this.studentLastName = studentLastName;
		this.studentSex = studentSex;
		this.studentId = studentId;
		this.tardi = tardi;
		this.absent = absent;
	}

	/**
	 * @param studentFirstName
	 * @param studentMiddleName
	 * @param studentId
	 * @param tardi
	 * @param absent
	 * @param date
	 * @param teacherId
	 */

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public int getTardi() {
		return tardi;
	}

	public void setTardi(int tardi) {
		this.tardi = tardi;
	}

	public int getAbsent() {
		return absent;
	}

	public void setAbsent(int absent) {
		this.absent = absent;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentFirstName() {
		return studentFirstName;
	}

	public void setStudentFirstName(String studentFirstName) {
		this.studentFirstName = studentFirstName;
	}

	public String getStudentMiddleName() {
		return studentMiddleName;
	}

	public void setStudentMiddleName(String studentMiddleName) {
		this.studentMiddleName = studentMiddleName;
	}

}
