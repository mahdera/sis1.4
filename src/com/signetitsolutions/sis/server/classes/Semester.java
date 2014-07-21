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
public class Semester {
	private int id;
	private String semesterName;
	private String description;

	/**
	 * 
	 */
	public Semester() {
		super();
	}

	/**
	 * @param semesterName
	 * @param description
	 */
	public Semester(String semesterName, String description) {
		super();
		this.semesterName = semesterName;
		this.description = description;
	}

	/**
	 * @param id
	 * @param semesterName
	 * @param description
	 */
	public Semester(int id, String semesterName, String description) {
		super();
		this.id = id;
		this.semesterName = semesterName;
		this.description = description;
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
	 * @return the semesterName
	 */
	public String getSemesterName() {
		return semesterName;
	}

	/**
	 * @param semesterName
	 *            the semesterName to set
	 */
	public void setSemesterName(String semesterName) {
		this.semesterName = semesterName;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	public static List<Semester> getAllSemesters() {
		List<Semester> list = new ArrayList<Semester>();
		Semester semester = null;
		try {
			String query = "select * from tbl_semester order by id";			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				semester = new Semester(rSet.getInt("id"),
						rSet.getString("semester_name"),
						rSet.getString("description"));
				list.add(semester);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	public static List<Semester> getAllTerm() {
		List<Semester> list = new ArrayList<Semester>();
		Semester semester = null;
		try {
			//String query = "select * from tbl_semester order by id";
			String query = "select * from tbl_term order by id";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				semester = new Semester(rSet.getInt("id"),
						rSet.getString("semester_name"),
						rSet.getString("description"));
				list.add(semester);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	public static Semester getSemester(int id) {
		Semester semester = null;
		try {
			String query = "select * from tbl_semester where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				semester = new Semester(rSet.getInt("id"),
						rSet.getString("semester_name"),
						rSet.getString("description"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return semester;
	}
}// end class
