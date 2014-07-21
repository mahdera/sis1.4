package com.signetitsolutions.sis.server.classes;

import java.util.List;

public class ApplicantDetail {
	private String id;
	private String firstName;
	private String middleName;
	private String lastName;
	private List<SubjectsTaken> subjectsTaken;

	/**
	 * 
	 */
	public ApplicantDetail() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public List<SubjectsTaken> getSubjectsTaken() {
		return subjectsTaken;
	}

	public void setSubjectsTaken(List<SubjectsTaken> subjectsTaken) {
		this.subjectsTaken = subjectsTaken;
	}

}
