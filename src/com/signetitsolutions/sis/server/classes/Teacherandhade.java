package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Teacherandhade {
	private int id;
	private String fname;
	private String lname;
	private String mname;
	private String head;

	public Teacherandhade(int id, String fname, String lname, String mname) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.mname = mname;
	}

	public Teacherandhade(String fname, String lname, String mname) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.mname = mname;
	}

	public Teacherandhade(String head) {
		super();
		this.head = head;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public static List<Teacherandhade> getAllTeachernameandid() {
		List<Teacherandhade> list = new ArrayList<Teacherandhade>();
		Teacherandhade h = null;
		try {
			String query = "SELECT `id` ,`first_name` ,`middle_name` ,`last_name` FROM tbl_teacher ";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Teacherandhade(rSet.getInt("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Teacherandhade> getAllTeacher(String id) {
		List<Teacherandhade> list = new ArrayList<Teacherandhade>();
		Teacherandhade h = null;
		try {
			String query = "SELECT `first_name` ,`middle_name` ,`last_name` FROM tbl_teacher T JOIN tbl_teaches Ts ON T.id = Ts.teacher_id JOIN tbl_student_level_t A ON A.level_id = Ts.level_id JOIN tbl_student S ON S.id = A.student_id WHERE S.applicant_id='"
					+ id + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Teacherandhade(rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Teacherandhade> getdepartmenthade(String id) {
		List<Teacherandhade> list = new ArrayList<Teacherandhade>();
		Teacherandhade h = null;
		try {
			String query = "SELECT head FROM tbl_student_level_t sl JOIN tbl_student S ON S.id=sl.student_id JOIN tbl_level L ON sl.level_id=L.id JOIN tbl_category C ON L.category_id=C.id JOIN tbl_primary_secondary ps ON C.primary_secondary_id=ps.id WHERE S.applicant_id = '"
					+ id + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Teacherandhade(rSet.getString("head"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

}
