/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Leki
 * 
 */
public class Teacher {
	private int id;
	private String firstName;
	private String middleName;
	private String lastName;
	private String email;
	private String mobile;
	private String nationality;
	private String passportNumber;
	private String shortname;

	

	/**
	 * 
	 */
	public Teacher() {
		super();
	}

	/**
	 * @param firstName
	 * @param middleName
	 * @param lastName
	 * @param email
	 * @param mobile
	 * @param nationality
	 * @param passportNumber
	 */
	public Teacher(String firstName, String middleName, String lastName,
			String email, String mobile, String nationality,
			String passportNumber) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.email = email;
		this.mobile = mobile;
		this.nationality = nationality;
		this.passportNumber = passportNumber;
	}



	public Teacher(int id, String firstName, String middleName,
			String lastName, String email, String mobile, String nationality,
			String passportNumber, String shortname) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.email = email;
		this.mobile = mobile;
		this.nationality = nationality;
		this.passportNumber = passportNumber;
		this.shortname = shortname;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName
	 *            the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}

	/**
	 * @param middleName
	 *            the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName
	 *            the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}

	/**
	 * @param mobile
	 *            the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	/**
	 * @return the nationality
	 */
	public String getNationality() {
		return nationality;
	}

	/**
	 * @param nationality
	 *            the nationality to set
	 */
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	/**
	 * @return the passportNumber
	 */
	public String getPassportNumber() {
		return passportNumber;
	}

	/**
	 * @param passportNumber
	 *            the passportNumber to set
	 */
	public void setPassportNumber(String passportNumber) {
		this.passportNumber = passportNumber;
	}
	public String getShortname() {
		return shortname;
	}

	public void setShortname(String shortname) {
		this.shortname = shortname;
	}
	
	public void addTeacher() {
		try {
			String command = "insert into tbl_teacher values('"+this.getId()+"','"
					+ this.getFirstName() + "','" + this.getMiddleName()
					+ "','" + this.getLastName() + "','" + this.getEmail()
					+ "','" + this.getMobile() + "','" + this.getNationality()
					+ "','" + this.getPassportNumber() + "','" + this.getShortname() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateTeacher(int id, String fName, String mName,
			String lName, String eMail, String mobile, String nationality,
			String passport, String shortname) {
		try {
			String command = "update tbl_teacher set first_name='" + fName
					+ "',middle_name='" + mName + "',last_name='" + lName
					+ "',email='" + eMail + "',mobile='" + mobile
					+ "',nationality='" + nationality + "',passport_number='"
					+ passport + "',short_name='" + shortname + "'where id=" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteTeacher(int id) {
		try {
			String command = "delete from tbl_teacher where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Teacher> getAllTeachers() {
		List<Teacher> list = new ArrayList<Teacher>();
		Teacher teacher = null;

		try {
			String query = "select * from tbl_teacher order by first_name,middle_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				teacher = new Teacher(rSet.getInt("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"), rSet.getString("email"),
						rSet.getString("mobile"),
						rSet.getString("nationality"),
						rSet.getString("passport_number"),
						rSet.getString("short_name"));
				list.add(teacher);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Teacher getTeacher(int id) {
		Teacher teacher = null;
		try {
			String query = "select * from tbl_teacher where id=" + id;// +"order by first_name,middle_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			
			while (rSet.next()) {
				teacher = new Teacher(rSet.getInt("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"), rSet.getString("email"),
						rSet.getString("mobile"),
						rSet.getString("nationality"),
						rSet.getString("passport_number"),
						rSet.getString("short_name"));								
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return teacher;
	}
	public static String getTeacherName(int id) {
		String teacher = null;
		try {
			String query = "select * from tbl_teacher where id=" + id;// +"order by first_name,middle_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				teacher =rSet.getString("first_name")+" "+rSet.getString("middle_name")+" "+rSet.getString("last_name");
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return teacher;
	}

}// end class
