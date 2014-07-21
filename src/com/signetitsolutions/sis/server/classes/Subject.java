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
public class Subject {
	private int id;
	private String subjectName;
	private String description;

	/**
	 * 
	 */
	public Subject() {
		super();
	}

	/**
	 * @param subjectName
	 * @param description
	 */
	public Subject(String subjectName, String description) {
		super();
		this.subjectName = subjectName;
		this.description = description;
	}

	/**
	 * @param id
	 * @param subjectName
	 * @param description
	 */
	public Subject(int id, String subjectName, String description) {
		super();
		this.id = id;
		this.subjectName = subjectName;
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
	 * @return the subjectName
	 */
	public String getSubjectName() {
		return subjectName;
	}

	/**
	 * @param subjectName
	 *            the subjectName to set
	 */
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
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

	public void addSubject() {
		try {
			String command = "insert into tbl_subject values(0,'"
					+ this.getSubjectName() + "','" + this.getDescription()
					+ "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateSubject(int id, String subjectName,
			String description) {
		try {
			String command = "update tbl_subject set subject_name='"
					+ subjectName + "', description='" + description
					+ "' where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteSubject(int id) {
		try {
			String command = "delete from tbl_subject where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Subject> getAllSubjects() {
		List<Subject> list = new ArrayList<Subject>();
		Subject subject = null;
		try {
			String query = "select * from tbl_subject order by subject_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				subject = new Subject(rSet.getInt("id"),
						rSet.getString("subject_name"),
						rSet.getString("description"));
				list.add(subject);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Subject getSubject(int id) {
		Subject subject = null;
		try {
			String query = "select * from tbl_subject where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				subject = new Subject(rSet.getInt("id"),
						rSet.getString("subject_name"),
						rSet.getString("description"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return subject;
	}
}// end class
