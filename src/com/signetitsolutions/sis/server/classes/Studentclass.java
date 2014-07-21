package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.swing.JOptionPane;

public class Studentclass {
	String Sid;
	int age;
	String SFname;
	String SMname;
	String SLname;
	String Sclass;
	String narration;
	Date SDOB;
	Date currentdate;

	public Studentclass(String sFname, String sMname, String sLname) {
		super();
		SFname = sFname;
		SMname = sMname;
		SLname = sLname;

	}

	public Studentclass(String sid, String sFname, String sMname,
			String sLname, Date sDOB, String sclass) {
		super();
		Sid = sid;
		SFname = sFname;
		SMname = sMname;
		SLname = sLname;
		Sclass = sclass;
		SDOB = sDOB;

	}

	public Studentclass() {
		Date d = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		String current = dateFormat.format(cal.getTime());
		this.currentdate = java.sql.Date.valueOf(current);
	}

	public Studentclass(int age) {
		this.age = age;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getCurrentdate() {
		return currentdate;
	}

	public void setCurrentdate(Date currentdate) {
		this.currentdate = currentdate;
	}

	public Studentclass(Date sDOB) {
		super();
		SDOB = sDOB;
	}

	public Studentclass(String sid, String narration) {
		super();
		Sid = sid;
		this.narration = narration;
	}

	public String getSid() {
		return Sid;
	}

	public void setSid(String sid) {
		Sid = sid;
	}

	public String getSFname() {
		return SFname;
	}

	public void setSFname(String sFname) {
		SFname = sFname;
	}

	public String getSMname() {
		return SMname;
	}

	public void setSMname(String sMname) {
		SMname = sMname;
	}

	public String getSLname() {
		return SLname;
	}

	public void setSLname(String sLname) {
		SLname = sLname;
	}

	public String getSclass() {
		return Sclass;
	}

	public void setSclass(String sclass) {
		Sclass = sclass;
	}

	public Date getSDOB() {
		return SDOB;
	}

	public void setSDOB(Date sDOB) {
		SDOB = sDOB;
	}

	public String getNarration() {
		return narration;
	}

	public void setNarration(String narration) {
		this.narration = narration;
	}

	// ////////////////////////////from
	public static List<Studentclass> getAllStudentbyclass(int id) {
		List<Studentclass> list = new ArrayList<Studentclass>();
		Studentclass h = null;
		// JOptionPane.showMessageDialog(null, id);
		try {
			String query = "SELECT distinct A.id,first_name,middle_name,last_name,date_of_birth,section_id FROM tbl_applicant_t A JOIN tbl_student S	ON A.id=S.applicant_id JOIN tbl_student_level_t SL ON SL.student_id=S.applicant_id where SL.section_id="
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Studentclass(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getDate("date_of_birth"),
						rSet.getString("section_id"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Studentclass> getselectedStudentbyclass(String sid) {
		List<Studentclass> list = new ArrayList<Studentclass>();
		Studentclass h = null;
		try {
			String query = "SELECT first_name,middle_name,last_name FROM tbl_applicant_t where id='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Studentclass(rSet.getString("first_name"),
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

	public static List<Studentclass> getDOB(String id) {
		List<Studentclass> list = new ArrayList<Studentclass>();
		Studentclass h = null;
		try {
			String query = "SELECT date_of_birth From tbl_applicant_t where id='"
					+ id + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Studentclass(rSet.getDate("date_of_birth"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	// /////////////////////////////////////display
	// age/////////////////////////////////////////////////////

	public static List<Studentclass> age(int sid) {
		List<Studentclass> list = new ArrayList<Studentclass>();
		Studentclass h = null;
		try {
			String query = "SELECT datediff( NOW( ) , date_of_birth ) AS age FROM tbl_applicant_t where id='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Studentclass(rSet.getDate("age"));
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