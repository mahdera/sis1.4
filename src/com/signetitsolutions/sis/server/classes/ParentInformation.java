package com.signetitsolutions.sis.server.classes;

public class ParentInformation {
	private int id;
	private String firstName;
	private String lastName;

	private String officeTelephone;
	private String mobileTelephone;
	private String eMail;
	private String homeTelephone;

	/**
	 * @param id
	 * @param firstName
	 * @param lastName
	 * @param middleName
	 * @param officeTelephone
	 * @param mobileTelephone
	 * @param eMail
	 * @param homeTelephone
	 */
	public ParentInformation(int id, String firstName, String lastName,
			String officeTelephone, String mobileTelephone, String eMail,
			String homeTelephone) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.officeTelephone = officeTelephone;
		this.mobileTelephone = mobileTelephone;
		this.eMail = eMail;
		this.homeTelephone = homeTelephone;
	}

	/**
	 * @param id
	 * @param firstName
	 * @param lastName
	 * @param middleName
	 * @param officeTelephone
	 * @param mobileTelephone
	 * @param eMail
	 */
	public ParentInformation(int id, String firstName, String lastName,
			String officeTelephone, String mobileTelephone, String eMail) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.officeTelephone = officeTelephone;
		this.mobileTelephone = mobileTelephone;
		this.eMail = eMail;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getOfficeTelephone() {
		return officeTelephone;
	}

	public void setOfficeTelephone(String officeTelephone) {
		this.officeTelephone = officeTelephone;
	}

	public String getMobileTelephone() {
		return mobileTelephone;
	}

	public void setMobileTelephone(String mobileTelephone) {
		this.mobileTelephone = mobileTelephone;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getHomeTelephone() {
		return homeTelephone;
	}

	public void setHomeTelephone(String homeTelephone) {
		this.homeTelephone = homeTelephone;
	}

}
