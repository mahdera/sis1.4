/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

/**
 * @author Leki
 * 
 */
public class Student {
	private String id;
	private String applicantId;

	/**
	 * 
	 */
	public Student() {
		super();
	}

	/**
	 * @param applicantId
	 */
	public Student(String applicantId) {
		super();
		this.applicantId = applicantId;
	}

	/**
	 * @param id
	 * @param applicantId
	 */
	public Student(String id, String applicantId) {
		super();
		this.id = id;
		this.applicantId = applicantId;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the applicantId
	 */
	public String getApplicantId() {
		return applicantId;
	}

	/**
	 * @param applicantId
	 *            the applicantId to set
	 */
	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}

	public void addStudent() {
		try {
			String command = "insert into tbl_student(applicant_id) values('"
					+ this.getApplicantId() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateStudent(long id, long applicantId) {
		try {
			String command = "update tbl_student set applicant_id = '"
					+ applicantId + "' where id = '" + id + "'";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteStudent(long id) {
		try {
			String command = "delete from tbl_student where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Student> getAllStudents() {
		List<Student> list = new ArrayList<Student>();
		Student student = null;
		try {
			String query = "select * from tbl_student";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				student = new Student(rSet.getString("id"),
						rSet.getString("applicant_id"));
				list.add(student);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Student getStudent(String id) {		
		Student student = null;
		try {
			String query = "select * from tbl_applicant_t where id = '" + id
					+ "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				// student = new
				// Student(rSet.getString("id"),rSet.getString("applicant_id"));
				student = new Student(rSet.getString("id"),
						rSet.getString("id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return student;
	}
	
	public static Student getStudent(long id){
		Student student = null;
		try {
			String query = "select * from tbl_student where id = '" + id
					+ "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {				
				student = new Student(rSet.getString("id"),
						rSet.getString("id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return student;
	}

	public static Student getStudentUsingApplicantId(String applicantId) {
		Student student = null;
		try {
			String query = "select * from tbl_student where applicant_id = '"
					+ applicantId + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				student = new Student(rSet.getString("id"),
						rSet.getString("applicant_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return student;
	}
}// end class
