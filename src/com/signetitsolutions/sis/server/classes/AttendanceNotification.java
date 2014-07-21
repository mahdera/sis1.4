package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.swing.JOptionPane;

import com.mysql.jdbc.PreparedStatement;

public class AttendanceNotification {
	private int counter;
	private String firstName;
	private String middleName;
	private String lastName;
	private String Nationality;
	private String legalGuardian;
	private String phoneNo;
	private String studId;
	private String sex;
	private int tarditot;
	private int absenttot;
	private String reason;


	public AttendanceNotification(String firstName, String middleName,
			String lastName, String nationality, String legalGuardian,
			String phoneNo, String id, String sex, int tarditot, int absenttot) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		Nationality = nationality;
		this.legalGuardian = legalGuardian;
		this.phoneNo = phoneNo;
		this.studId = id;
		this.sex = sex;
		this.tarditot = tarditot;
		this.absenttot = absenttot;
	}

	
	
	public AttendanceNotification(String firstName,
			String middleName, String lastName, String nationality,
			String legalGuardian, String phoneNo, String studId, String sex,
			int tarditot, int absenttot, String reason) {
		super();
		
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		Nationality = nationality;
		this.legalGuardian = legalGuardian;
		this.phoneNo = phoneNo;
		this.studId = studId;
		this.sex = sex;
		this.tarditot = tarditot;
		this.absenttot = absenttot;
		this.reason = reason;
	}



	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getStudId() {
		return studId;
	}

	public void setStudId(String studId) {
		this.studId = studId;
	}

	public int getCounter() {
		return counter;
	}

	public void setCounter(int counter) {
		this.counter = counter;
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

	public String getNationality() {
		return Nationality;
	}

	public void setNationality(String nationality) {
		Nationality = nationality;
	}

	public String getLegalGuardian() {
		return legalGuardian;
	}

	public void setLegalGuardian(String legalGuardian) {
		this.legalGuardian = legalGuardian;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public AttendanceNotification() {
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public int getTarditot() {
		return tarditot;
	}

	public void setTarditot(int tarditot) {
		this.tarditot = tarditot;
	}

	public int getAbsenttot() {
		return absenttot;
	}

	public void setAbsenttot(int absenttot) {
		this.absenttot = absenttot;
	}
	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	public static int getLateCount(int section_id, String level,
			String session, String dateFrom, String dateTo, String stud) {
		int tarditot = 0;
		// dates=null;
		try {
			String sql = null;
			ResultSet rs = null;
			if (session.equalsIgnoreCase("Both")) {
				sql = "select count(g.tardi) as tarditot from tbl_attendance_grid g "
						+ "where g.section_id=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.tardi<>0 and g.statuses<>1 and g.student_id=? ";
				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);

				prs.setInt(1, section_id);
				prs.setString(2, dateFrom);
				prs.setString(3, dateTo);
				prs.setString(4, stud);

				rs = prs.executeQuery();
			} else {
				sql = "select count(g.tardi) as tarditot  from tbl_attendance_grid g "
						+ "where g.section_id=? and g.attendance_session=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.tardi<>0 and g.statuses<>1 and g.student_id=? ";
				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, session);
				prs.setString(3, dateFrom);
				prs.setString(4, dateTo);
				prs.setString(5, stud);
				rs = prs.executeQuery();
			}

			while (rs.next()) {
				tarditot = Integer.parseInt(rs.getString("tarditot"));
			}
			return tarditot;
		} catch (Exception s) {
			s.printStackTrace();
			return 0;
		}
	}

	public static int getLateCountForEdit(int section_id, String level,
			String session, String dateFrom, String dateTo, String stud) {
		int tarditot = 0;
		// dates=null;
		try {
			String sql = null;
			ResultSet rs = null;
			if (session.equalsIgnoreCase("Both")) {
				sql = "select count(g.tardi) as tarditot from tbl_attendance_grid g "
						+ "where g.section_id=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.tardi<>0 and g.statuses<>0 and g.student_id=? ";
				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);

				prs.setInt(1, section_id);
				prs.setString(2, dateFrom);
				prs.setString(3, dateTo);
				prs.setString(4, stud);

				rs = prs.executeQuery();
			} else {
				sql = "select count(g.tardi) as tarditot  from tbl_attendance_grid g "
						+ "where g.section_id=? and g.attendance_session=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.tardi<>0 and g.statuses<>0 and g.student_id=? ";
				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, session);
				prs.setString(3, dateFrom);
				prs.setString(4, dateTo);
				prs.setString(5, stud);
				rs = prs.executeQuery();
			}

			while (rs.next()) {
				tarditot = Integer.parseInt(rs.getString("tarditot"));
			}
			return tarditot;
		} catch (Exception s) {
			s.printStackTrace();
			return 0;
		}
	}
	
	public static int getAbsentCount(int section_id, String level,
			String session, String dateFrom, String dateTo, String stud) {
		int tarditot = 0;
		// dates=null;
		try {
			String sql = null;
			ResultSet rs = null;
			if (session.equalsIgnoreCase("Both")) {
				sql = "select count(g.absent) as absenttot from tbl_attendance_grid g "
						+ "where g.section_id=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.absent<>0 and g.statuses<>1 and g.student_id=? ";
				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);

				prs.setInt(1, section_id);
				prs.setString(2, dateFrom);
				prs.setString(3, dateTo);
				prs.setString(4, stud);

				rs = prs.executeQuery();
			} else {
				sql = "select count(g.absent) as absenttot  from tbl_attendance_grid g "
						+ "where g.section_id=? and g.attendance_session=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.absent<>0 and g.statuses<>1 and g.student_id=? ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, session);
				prs.setString(3, dateFrom);
				prs.setString(4, dateTo);
				prs.setString(5, stud);
				rs = prs.executeQuery();
			}

			while (rs.next()) {
				tarditot = Integer.parseInt(rs.getString("absenttot"));
			}
			return tarditot;
		} catch (Exception s) {
			s.printStackTrace();
			return 0;
		}
	}

	public static int getAbsentCountForEdit(int section_id, String level,
			String session, String dateFrom, String dateTo, String stud) {
		int tarditot = 0;
		// dates=null;
		try {
			String sql = null;
			ResultSet rs = null;
			if (session.equalsIgnoreCase("Both")) {
				sql = "select count(g.absent) as absenttot from tbl_attendance_grid g "
						+ "where g.section_id=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.absent<>0 and g.statuses<>0 and g.student_id=? ";
				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);

				prs.setInt(1, section_id);
				prs.setString(2, dateFrom);
				prs.setString(3, dateTo);
				prs.setString(4, stud);

				rs = prs.executeQuery();
			} else {
				sql = "select count(g.absent) as absenttot  from tbl_attendance_grid g "
						+ "where g.section_id=? and g.attendance_session=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.absent<>0 and g.statuses<>0 and g.student_id=? ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, session);
				prs.setString(3, dateFrom);
				prs.setString(4, dateTo);
				prs.setString(5, stud);
				rs = prs.executeQuery();
			}

			while (rs.next()) {
				tarditot = Integer.parseInt(rs.getString("absenttot"));
			}
			return tarditot;
		} catch (Exception s) {
			s.printStackTrace();
			return 0;
		}
	}
	
	public static ArrayList<String> getLateDates(int teacher_id,
			int section_id, String level, String session, String dateFrom,
			String dateTo, String stud) {
		ArrayList<String> dates = new ArrayList<String>();
		// dates=null;
		try {
			String sql = null;
			ResultSet rs = null;
			if (session.equalsIgnoreCase("Both")) {
				sql = "select g.date_taken from tbl_applicant_t t "
						+ "inner join tbl_attendance_grid g on t.id=g.student_id "
						+ "where g.section_id=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.tardi<>0 and g.statuses<>1 and g.student_id=? "
						+ "group by date_taken ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);

				prs.setInt(1, section_id);
				prs.setString(2, dateFrom);
				prs.setString(3, dateTo);
				prs.setString(4, stud);

				rs = prs.executeQuery();
			} else {
				sql = "select g.date_taken from tbl_applicant_t t "
						+ "inner join tbl_attendance_grid g on t.id=g.student_id "
						+ "where g.section_id=? and g.attendance_session=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.tardi<>0 and g.statuses<>1 and g.student_id=? "
						+ "group by date_taken ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, session);
				prs.setString(3, dateFrom);
				prs.setString(4, dateTo);
				prs.setString(5, stud);
				rs = prs.executeQuery();
			}

			while (rs.next()) {
				dates.add(rs.getString("date_taken"));
			}
			return dates;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}

	public static ArrayList<String> getLateDatesForEdit(int teacher_id,
			int section_id, String level, String session, String dateFrom,
			String dateTo, String stud) {
		ArrayList<String> dates = new ArrayList<String>();
		// dates=null;
		try {
			String sql = null;
			ResultSet rs = null;
			if (session.equalsIgnoreCase("Both")) {
				sql = "select g.date_taken from tbl_applicant_t t "
						+ "inner join tbl_attendance_grid g on t.id=g.student_id "
						+ "where g.section_id=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.tardi<>0 and g.statuses<>0 and g.student_id=? "
						+ "group by date_taken ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);

				prs.setInt(1, section_id);
				prs.setString(2, dateFrom);
				prs.setString(3, dateTo);
				prs.setString(4, stud);

				rs = prs.executeQuery();
			} else {
				sql = "select g.date_taken from tbl_applicant_t t "
						+ "inner join tbl_attendance_grid g on t.id=g.student_id "
						+ "where g.section_id=? and g.attendance_session=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.tardi<>0 and g.statuses<>0 and g.student_id=? "
						+ "group by date_taken ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, session);
				prs.setString(3, dateFrom);
				prs.setString(4, dateTo);
				prs.setString(5, stud);
				rs = prs.executeQuery();
			}

			while (rs.next()) {
				dates.add(rs.getString("date_taken"));
			}
			return dates;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}
	
	public static ArrayList<String> getAbsentDates(int teacher_id,
			int section_id, String level, String session, String dateFrom,
			String dateTo, String stud) {
		ArrayList<String> dates = new ArrayList<String>();
		// dates=null;
		try {
			// String
			// sql="select count(g.absent) as tot, g.date_taken from tbl_applicant_t t "+
			// "inner join tbl_attendance_grid g on t.id=g.student_id "+
			// "where g.teacher_id=? and "+
			// "g.section_id=? and g.attendance_session=? "+
			// "and g.absent<>0 and g.statuses<>1 and g.student_id=? "+
			// "group by date_taken having tot>=?";
			String sql = null;
			ResultSet rs = null;
			if (session.equalsIgnoreCase("Both")) {
				sql = "select g.date_taken from tbl_applicant_t t "
						+ "inner join tbl_attendance_grid g on t.id=g.student_id "
						+ "where g.section_id=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.absent<>0 and g.statuses<>1 and g.student_id=? "
						+ "group by date_taken ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, dateFrom);
				prs.setString(3, dateTo);
				prs.setString(4, stud);
				rs = prs.executeQuery();
			} else {
				sql = "select g.date_taken from tbl_applicant_t t "
						+ "inner join tbl_attendance_grid g on t.id=g.student_id "
						+ "where g.section_id=? and g.attendance_session=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.absent<>0 and g.statuses<>1 and g.student_id=? "
						+ "group by date_taken ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, session);
				prs.setString(3, dateFrom);
				prs.setString(4, dateTo);
				prs.setString(5, stud);
				rs = prs.executeQuery();
			}

			while (rs.next()) {
				dates.add(rs.getString("date_taken"));
			}
			return dates;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}
	
	public static ArrayList<String> getAbsentDatesForEdit(int teacher_id,
			int section_id, String level, String session, String dateFrom,
			String dateTo, String stud) {
		ArrayList<String> dates = new ArrayList<String>();
		// dates=null;
		try {
			// String
			// sql="select count(g.absent) as tot, g.date_taken from tbl_applicant_t t "+
			// "inner join tbl_attendance_grid g on t.id=g.student_id "+
			// "where g.teacher_id=? and "+
			// "g.section_id=? and g.attendance_session=? "+
			// "and g.absent<>0 and g.statuses<>1 and g.student_id=? "+
			// "group by date_taken having tot>=?";
			String sql = null;
			ResultSet rs = null;
			if (session.equalsIgnoreCase("Both")) {
				sql = "select g.date_taken from tbl_applicant_t t "
						+ "inner join tbl_attendance_grid g on t.id=g.student_id "
						+ "where g.section_id=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.absent<>0 and g.statuses<>0 and g.student_id=? "
						+ "group by date_taken ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, dateFrom);
				prs.setString(3, dateTo);
				prs.setString(4, stud);
				rs = prs.executeQuery();
			} else {
				sql = "select g.date_taken from tbl_applicant_t t "
						+ "inner join tbl_attendance_grid g on t.id=g.student_id "
						+ "where g.section_id=? and g.attendance_session=? and "
						+ "g.date_taken >= ? and g.date_taken <= ? "
						+ "and g.absent<>0 and g.statuses<>0 and g.student_id=? "
						+ "group by date_taken ";

				PreparedStatement prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				prs.setInt(1, section_id);
				prs.setString(2, session);
				prs.setString(3, dateFrom);
				prs.setString(4, dateTo);
				prs.setString(5, stud);
				rs = prs.executeQuery();
			}

			while (rs.next()) {
				dates.add(rs.getString("date_taken"));
			}
			return dates;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}
	
public static String getTelephone(String applicantId){
	String sql = null;
	ResultSet rs = null;
	String myReturn = null;
	
		sql = "select ad.office_telephone, ad.home_telephone, ad.mobile_telephone, ad.mobile_telephone2 " +
			  "from db_sis.tbl_child_parent p, db_sis.tbl_parent_address ad " +
			  "where p.parent_id = ad.parent_id and p.applicant_id=?";

		PreparedStatement prs;
		try {
			prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(sql);
				
			prs.setString(1, applicantId);		
			rs = prs.executeQuery();
			
			if (rs.next()) {
				myReturn = rs.getString("mobile_telephone");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return myReturn;
}
	public static List<AttendanceNotification> getAttendance(int teacher_id,
			int section_id, String level, String session, String dateFrom,
			String dateTo, String type) {

		try {
			ResultSet rs = null;

			if (type.equalsIgnoreCase("Both")) {
				if (session.equalsIgnoreCase("Both")) {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and "
							+ "g.date_taken >= ? and g.date_taken <= ? and "
							+ "((g.absent<>0 and statuses<>1) or (g.tardi<>0 and statuses<>1)) "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";

					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, dateFrom);
					prs.setString(3, dateTo);
					rs = prs.executeQuery();

				} else {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and g.attendance_session=? and "
							+ "g.date_taken >= ? and g.date_taken <= ? and "
							+ "((g.absent<>0 and statuses<>1) or (g.tardi<>0 and statuses<>1))"
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";

					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, session);
					prs.setString(3, dateFrom);
					prs.setString(4, dateTo);
					rs = prs.executeQuery();
				}
			} else if (type.equalsIgnoreCase("Late")) {
				if (session.equalsIgnoreCase("Both")) {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and "
							+ "g.absent<>1 and g.tardi<>0 and statuses<>1 and "
							+ "g.date_taken >= ? and g.date_taken <= ? "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";

					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, dateFrom);
					prs.setString(3, dateTo);
					rs = prs.executeQuery();

				} else {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and g.attendance_session=? and "
							+ "g.absent<>1 and g.tardi<>0 and statuses<>1 and "
							+ "g.date_taken >= ? and g.date_taken <= ? "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";
					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, session);
					prs.setString(3, dateFrom);
					prs.setString(4, dateTo);
					rs = prs.executeQuery();
				}
			} else if (type.equalsIgnoreCase("Absent")) {
				if (session.equalsIgnoreCase("Both")) {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and "
							+ "g.absent<>0 and g.tardi<>1 and statuses<>1 and "
							+ "g.date_taken >= ? and g.date_taken <= ? "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";
					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, dateFrom);
					prs.setString(3, dateTo);
					rs = prs.executeQuery();

				} else {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and g.attendance_session=? and "
							+ "g.absent<>0 and g.tardi<>1 and statuses<>1 and "
							+ "g.date_taken >= ? and g.date_taken <= ? "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";
					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, session);
					prs.setString(3, dateFrom);
					prs.setString(4, dateTo);
					rs = prs.executeQuery();
				}
			}  
   
			List<AttendanceNotification> ln = new ArrayList<AttendanceNotification>();

			while (rs.next()) {
				String mobile_telephone = AttendanceNotification.getTelephone(rs.getString("student_id"));
				AttendanceNotification an = new AttendanceNotification(
						rs.getString("first_name"),
						rs.getString("middle_name"), rs.getString("last_name"),
						rs.getString("nationality"), "Anonymous", mobile_telephone,
						rs.getString("student_id"), rs.getString("sex"),
						Integer.parseInt(rs.getString("tarditot")),
						Integer.parseInt(rs.getString("absenttot")));
				ln.add(an);
			}
			return ln;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}

	
	public static List<AttendanceNotification> getAttendanceForEdit(int teacher_id,
			int section_id, String level, String session, String dateFrom,
			String dateTo, String type) {

		try {
			ResultSet rs = null;

			if (type.equalsIgnoreCase("Both")) {
				if (session.equalsIgnoreCase("Both")) {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian, g.reason from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and "
							+ "g.date_taken >= ? and g.date_taken <= ? and "
							+ "((g.absent<>0 and statuses<>0) or (g.tardi<>0 and statuses<>0)) "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";

					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, dateFrom);
					prs.setString(3, dateTo);
					rs = prs.executeQuery();

				} else {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian, g.reason from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and g.attendance_session=? and "
							+ "g.date_taken >= ? and g.date_taken <= ? and "
							+ "((g.absent<>0 and statuses<>0) or (g.tardi<>0 and statuses<>0))"
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";

					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, session);
					prs.setString(3, dateFrom);
					prs.setString(4, dateTo);
					rs = prs.executeQuery();
				}
			} else if (type.equalsIgnoreCase("Late")) {
				if (session.equalsIgnoreCase("Both")) {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian, g.reason  from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and "
							+ "g.absent<>1 and g.tardi<>0 and statuses<>0 and "
							+ "g.date_taken >= ? and g.date_taken <= ? "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";

					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, dateFrom);
					prs.setString(3, dateTo);
					rs = prs.executeQuery();

				} else {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian, g.reason  from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and g.attendance_session=? and "
							+ "g.absent<>1 and g.tardi<>0 and statuses<>0 and "
							+ "g.date_taken >= ? and g.date_taken <= ? "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";
					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, session);
					prs.setString(3, dateFrom);
					prs.setString(4, dateTo);
					rs = prs.executeQuery();
				}
			} else if (type.equalsIgnoreCase("Absent")) {
				if (session.equalsIgnoreCase("Both")) {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian, g.reason  from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and "
							+ "g.absent<>0 and g.tardi<>1 and statuses<>0 and "
							+ "g.date_taken >= ? and g.date_taken <= ? "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";
					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, dateFrom);
					prs.setString(3, dateTo);
					rs = prs.executeQuery();

				} else {
					String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.tardi) as tarditot, count(g.absent) as absenttot, "
							+ "person_responsible_for_paying_fees as legalGuardian, g.reason  from tbl_applicant_t t "
							+ "inner join tbl_attendance_grid g on t.id=g.student_id "
							+ "where g.section_id=? and g.attendance_session=? and "
							+ "g.absent<>0 and g.tardi<>1 and statuses<>0 and "
							+ "g.date_taken >= ? and g.date_taken <= ? "
							+ "group by sex,g.student_id,first_name,middle_name,last_name,"
							+ "nationality,legalGuardian order by first_name";
					PreparedStatement prs = (PreparedStatement) DBConnection
							.getDatabaseConnection().prepareStatement(qry);

					prs.setInt(1, section_id);
					prs.setString(2, session);
					prs.setString(3, dateFrom);
					prs.setString(4, dateTo);
					rs = prs.executeQuery();
				}
			}  
   
			List<AttendanceNotification> ln = new ArrayList<AttendanceNotification>();

			while (rs.next()) {
				String mobile_telephone = AttendanceNotification.getTelephone(rs.getString("student_id"));
				AttendanceNotification an = new AttendanceNotification(
						rs.getString("first_name"),
						rs.getString("middle_name"), rs.getString("last_name"),
						rs.getString("nationality"), "Anonymous", mobile_telephone,
						rs.getString("student_id"), rs.getString("sex"),
						Integer.parseInt(rs.getString("tarditot")),
						Integer.parseInt(rs.getString("absenttot")), rs.getString("reason"));
				ln.add(an);
			}
			return ln;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}
	// the below method is used the retrieve the absent

	public static List<AttendanceNotification> getAttendanceAbsent(
			int teacher_id, int section_id, String level, String session,
			int treshold) {
		// JOptionPane.showMessageDialog(null, teacher_id+" "+
		// section_id+" "+ level+" "+ session+" "+ treshold);
		try {
			// String qry =
			// "select sex,t.id,first_name,middle_name,last_name,nationality, "
			// +
			// "person_responsible_for_paying_fees as legalGuardian from tbl_applicant_t t "
			// + "inner join tbl_attendance_grid g on t.id=g.student_id "
			// + "where g.teacher_id=3 and "
			// + "g.section_id=1 and g.attendance_session='Morning'";

			String qry = "select sex,g.student_id,first_name,middle_name,last_name,nationality, count(g.absent) as tot,"
					+ "person_responsible_for_paying_fees as legalGuardian from tbl_applicant_t t "
					+ "inner join tbl_attendance_grid g on t.id=g.student_id "
					+ "where g.section_id=? and "
					+ "g.attendance_session=? and g.absent<>0 and statuses<>1  "
					+ "group by sex,g.student_id,first_name,middle_name,last_name,"
					+ "nationality,legalGuardian having tot>=?";
			PreparedStatement prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(qry);
			// prs.setInt(1, teacher_id);
			prs.setInt(1, section_id);
			prs.setString(2, session);
			prs.setInt(3, treshold);
			ResultSet rs = prs.executeQuery();
			List<AttendanceNotification> ln = new ArrayList<AttendanceNotification>();

			while (rs.next()) {
				AttendanceNotification an = new AttendanceNotification(
						rs.getString("first_name"),
						rs.getString("middle_name"), rs.getString("last_name"),
						rs.getString("nationality"), "Anonymous", "56556",
						rs.getString("student_id"), rs.getString("sex"),
						Integer.parseInt(rs.getString("tarditot")),
						Integer.parseInt(rs.getString("absenttot")));
				ln.add(an);
			}
			return ln;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}

	public static void putReason(String reason, String id, int section,
			String session, String type, String isNew) {
		// JOptionPane.showMessageDialog(null,
		// reason+","+id+","+section+","+session+","+type);
		String qry = null;
		if(isNew.equalsIgnoreCase("Y")){
				if (type.equalsIgnoreCase("Late")) {// for tardi
					qry = "update tbl_attendance_grid set statuses=1,reason=? where tardi=1 "
							+ "and section_id=? and student_id=? and statuses<>1";
				} else if (type.equalsIgnoreCase("Absent")) {// for absent
					qry = "update tbl_attendance_grid set statuses=1,reason=? where absent=1 "
							+ "and section_id=? and student_id=? and statuses<>1";
				}else{
					qry = "update tbl_attendance_grid set statuses=1,reason=? where (absent=1 || tardi=1) "
							+ "and section_id=? and student_id=? and statuses<>1";
				}
		}else{
			if (type.equalsIgnoreCase("Late")) {// for tardi
				qry = "update tbl_attendance_grid set statuses=1,reason=? where tardi=1 "
						+ "and section_id=? and student_id=? and statuses<>0";
			} else if (type.equalsIgnoreCase("Absent")) {// for absent
				qry = "update tbl_attendance_grid set statuses=1,reason=? where absent=1 "
						+ "and section_id=? and student_id=? and statuses<>0";
			}else{
				qry = "update tbl_attendance_grid set statuses=1,reason=? where (absent=1 || tardi=1) "
						+ "and section_id=? and student_id=? and statuses<>0";
			}
		}
		try {
			
			PreparedStatement prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(qry);
			prs.setString(1, reason);
			prs.setInt(2, section);
			prs.setString(3, id);
			prs.executeUpdate();
		} catch (Exception s) {
			s.printStackTrace();
		}
	}
}
