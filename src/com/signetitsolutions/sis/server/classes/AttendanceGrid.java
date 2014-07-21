/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import com.mysql.jdbc.PreparedStatement;

/**
 * @author betse
 * 
 */
public class AttendanceGrid {
	private long id;
	private int teacherId;
	private int sectionId;
	private String sectionName;
	private String dateTaken;
	private String attendanceSession;
	private String studentId;
	private int tardi;
	private int absent;
	private String reason;
	

	public AttendanceGrid(int teacherId, int sectionId, String dateTaken,
			String attendanceSession, String studentId, int tardi, int absent) {
		super();
		this.teacherId = teacherId;
		this.sectionId = sectionId;
		this.dateTaken = dateTaken;
		this.attendanceSession = attendanceSession;
		this.studentId = studentId;
		this.tardi = tardi;
		this.absent = absent;
	}

	/**
	 * @param id
	 * @param teacherId
	 * @param sectionId
	 * @param dateTaken
	 * @param studentId
	 * @param tardi
	 * @param absent
	 */
	public AttendanceGrid(long id, int teacherId, int sectionId,
			String sectionName, String dateTaken, String studentId, int tardi,
			int absent) {
		super();
		this.id = id;
		this.teacherId = teacherId;
		this.sectionId = sectionId;
		this.setSectionName(sectionName);
		this.dateTaken = dateTaken;
		this.studentId = studentId;
		this.tardi = tardi;
		this.absent = absent;
	}

	public AttendanceGrid(long id, int teacherId, int sectionId,
			String dateTaken, String studentId, int tardi, int absent,
			String reason) {
		super();
		this.id = id;
		this.teacherId = teacherId;
		this.sectionId = sectionId;
		this.dateTaken = dateTaken;
		this.studentId = studentId;
		this.tardi = tardi;
		this.absent = absent;
		this.reason = reason;
	}

	public AttendanceGrid(long id, int teacherId, int sectionId,
			String dateTaken, String attendanceSession, String studentId,
			int tardi, int absent, String reason) {
		super();
		this.id = id;
		this.teacherId = teacherId;
		this.sectionId = sectionId;
		this.dateTaken = dateTaken;
		this.attendanceSession = attendanceSession;
		this.studentId = studentId;
		this.tardi = tardi;
		this.absent = absent;
		this.reason = reason;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public int getSectionId() {
		return sectionId;
	}

	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getSectionName() {
		return sectionName;
	}

	public String getDateTaken() {
		return dateTaken;
	}

	public void setDateTaken(String dateTaken) {
		this.dateTaken = dateTaken;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public int isTardi() {
		return tardi;
	}

	public void setTardi(int tardi) {
		this.tardi = tardi;
	}

	public int isAbsent() {
		return absent;
	}

	public void setAbsent(int absent) {
		this.absent = absent;
	}

	/**
	 * @return the attendanceSession
	 */
	public String getAttendanceSession() {
		return attendanceSession;
	}

	/**
	 * @param attendanceSession
	 *            the attendanceSession to set
	 */
	public void setAttendanceSession(String attendanceSession) {
		this.attendanceSession = attendanceSession;
	}

	/**
	 * @return the tardi
	 */
	public int getTardi() {
		return tardi;
	}

	/**
	 * @return the absent
	 */
	public int getAbsent() {
		return absent;
	}

	public void addAttendanceGrid() {
		try {
			// JOptionPane.showMessageDialog(null,
			// this.getTeacherId()+","+this.getSectionId()+",'"+this.getDateTaken()+"','"+this.getAttendanceSession()+"',"+this.getStudentId()+","+this.isTardi()+","+this.isAbsent());
			String command = "insert into tbl_attendance_grid(teacher_id,section_id,date_taken,attendance_session,student_id,tardi,absent,statuses) values(?,?,?,?,?,?,?,0)";
			try {
				PreparedStatement p = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(command);
				p.setInt(1, teacherId);
				p.setInt(2, sectionId);
				p.setString(3, dateTaken);
				p.setString(4, attendanceSession);
				p.setString(5, studentId);
				p.setInt(6, tardi);
				p.setInt(7, absent);
				p.execute();
			} catch (Exception s) {
				s.printStackTrace();
			}

			// DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateAttendanceGrid(int teacherId, String date,
			String attendanceSession, String studentId, int sectionId,
			int tardi, int absent) {
		try {
			String command = "update tbl_attendance_grid set tardi =" + tardi
					+ ",absent =" + absent + " where attendance_session='"
					+ attendanceSession + "' and section_id=" + sectionId
					+ " and date_taken='" + date + "' and student_id='"
					+ studentId + "'";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteAttendaceGrid(int id) {
		try {
			String command = "delete from tbl_attendance_grid where id =" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<AttendanceGrid> getAllAttendanceGrid() {
		List<AttendanceGrid> list = new ArrayList<AttendanceGrid>();
		AttendanceGrid attendaceGrid = null;
		try {
			String query = "select * from tbl_attendance_grid";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				// category = new
				// Category(rSet.getInt("id"),rSet.getString("category_name"),rSet.getInt("primary_secondary_id"));
				// list.add(category);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static boolean isTaken(int sectionId, Date date, int teacherId,
			String attendanceSession) {
		boolean myReturn = true;
		try {
	
			/*String cmd = "select * from tbl_attendance_grid where teacher_id="
					+ teacherId + " and section_id=" + sectionId
					+ " and date_taken='" + date + "' and attendance_session='"
					+ attendanceSession + "'";*/
			String cmd = "select * from tbl_attendance_grid where section_id=" + sectionId
					+ " and date_taken='" + date + "' and attendance_session='"
					+ attendanceSession + "'";
			ResultSet rs = DBConnection.readFromDatabase(cmd);
			if (rs.next()) {
				myReturn =  true;
			}else{
				myReturn =  false;
			}
		} catch (Exception s) {
			s.printStackTrace();			
		}
		return myReturn;
	}

	public static List<Attendance> getAllStudentsInSection(int sectionId,
			Date date, int teacherId, String attendanceSession) {
		List<Attendance> attendance = new ArrayList<Attendance>();
		// Attendance att = null;
		try {
			String query = "select first_name,middle_name,last_name,sex,t.id from tbl_applicant_t t "
					+ "inner join tbl_student_level_t s on s.student_id=t.id where s.section_id="
					+ sectionId
					+ " order by first_name asc,middle_name asc,last_name asc";
			// String query =
			// "select id ,first_name,middle_name from tbl_applicant_t,tbl_student_level,tbl_student s where tbl_applicant.id = tbl_student.applicant_id and tbl_student.id=tbl_student_level.student_id and section_id = "+sectionId+" and tbl_student.id not in(select student_id from tbl_attendance_grid where section_id="+sectionId+" and date_taken='"+date+"' and teacher_id="+teacherId+" and attendance_session='"+attendanceSession+"')";
			ResultSet rs = DBConnection.readFromDatabase(query);
			while (rs.next()) {
				Attendance att = new Attendance(rs.getString("first_name"),
						rs.getString("middle_name"), rs.getString("last_name"),
						rs.getString("sex"), rs.getString("id"));
				attendance.add(att);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return attendance;
	}

	public static List<Attendance> getAllStudentsInSectionAffterTA(int sectionId) {
		List<Attendance> attendance = new ArrayList<Attendance>();
		// Attendance att = null;
		try {
			String query = "select tbl_student.id studentId,first_name,middle_name,tardi,absent,teacher_id from tbl_applicant,tbl_student_level,tbl_student,tbl_attendance_grid where tbl_applicant.id = tbl_student.applicant_id and tbl_student.id=tbl_student_level.student_id and tbl_student.id = tbl_attendance_grid.id and tbl_attendance_grid.section_id ="
					+ sectionId;
			ResultSet rs = DBConnection.readFromDatabase(query);
			while (rs.next()) {
				Attendance att = new Attendance(rs.getString("first_name"),
						rs.getString("middle_name"), rs.getString("last_name"),
						rs.getString("sex"), rs.getString("studentId"),
						rs.getInt("tardi"), rs.getInt("absent"));
				attendance.add(att);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return attendance;
	}

	public static List<Attendance> getAttendanceByIDSForAttendance(
			int sectionId, int instructorId, String date,
			String attendanceSession) {
		List<Attendance> attendance = new ArrayList<Attendance>();
		// Attendance att = null;
		try {
			String query = "select distinct * from tbl_applicant_t,tbl_attendance_grid where tbl_applicant_t.id ="
					+ "tbl_attendance_grid.student_id and  tbl_attendance_grid.section_id ="
					+ sectionId
					+ " and tbl_attendance_grid.date_taken='"
					+ date
					+ "' and tbl_attendance_grid.attendance_session='"
					+ attendanceSession + "' order by first_name ASC";
			ResultSet rs = DBConnection.readFromDatabase(query);
			while (rs.next()) {
				Attendance att = new Attendance(rs.getString("first_name"),
						rs.getString("middle_name"), rs.getString("last_name"),
						rs.getString("sex"),
						rs.getString("tbl_attendance_grid.student_id"),
						rs.getInt("tardi"), rs.getInt("absent"));
				attendance.add(att);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return attendance;
	}

	public static List<Attendance> getAttendanceByIDS(int sectionId,
			int instructorId, String date, String attendanceSession) {
		List<Attendance> attendance = new ArrayList<Attendance>();
		// Attendance att = null;
		try {
			// String query =
			// "select * from tbl_applicant_t,tbl_student,tbl_attendance_grid where tbl_applicant_t.id = tbl_student.applicant_id and tbl_student.id=tbl_attendance_grid.student_id and  tbl_attendance_grid.section_id ="
			// + sectionId
			// + " and tbl_attendance_grid.teacher_id="
			// + instructorId
			// + " and tbl_attendance_grid.date_taken='"
			// + date
			// + "' and tbl_attendance_grid.attendance_session='"
			// + attendanceSession + "'";

			String query = "select distinct * from tbl_applicant_t,tbl_attendance_grid where tbl_applicant_t.id ="
					+ "tbl_attendance_grid.student_id and  tbl_attendance_grid.section_id ="
					+ sectionId
					+ " and tbl_attendance_grid.teacher_id="
					+ instructorId
					+ " and tbl_attendance_grid.date_taken='"
					+ date
					+ "' and tbl_attendance_grid.attendance_session='"
					+ attendanceSession + "' order by first_name ASC";
			ResultSet rs = DBConnection.readFromDatabase(query);
			while (rs.next()) {
				Attendance att = new Attendance(rs.getString("first_name"),
						rs.getString("middle_name"), rs.getString("last_name"),
						rs.getString("sex"),
						rs.getString("tbl_attendance_grid.student_id"),
						rs.getInt("tardi"), rs.getInt("absent"));
				attendance.add(att);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return attendance;
	}

	public static List<AttendanceGrid> getAllAttendanceGridsWithTheFollowingDateRange(
			String startDate, String endDate, String attendanceSession,
			String attendanceType, int sectionId) {
		List<AttendanceGrid> list = new ArrayList<AttendanceGrid>();
		AttendanceGrid attendanceGrid = null;
		try {
			
			String query = null;
			if (attendanceSession.equalsIgnoreCase("both")
					&& attendanceType.equalsIgnoreCase("both"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id "
						+ " and a.section_id ='"
						+ sectionId
						+ "' and a.date_taken "
						+ " between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "'"
						+ " and (a.tardi = 1 or a.absent = 1 )"
						+ " group by a.student_id";
			else if (attendanceSession.equalsIgnoreCase("both")
					&& attendanceType.equalsIgnoreCase("late"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id and a.section_id ="
						+ sectionId
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.tardi = 1 and a.absent = 0 group by a.student_id";
			else if (attendanceSession.equalsIgnoreCase("both")
					&& attendanceType.equalsIgnoreCase("absent"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id and a.section_id ="
						+ sectionId
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.tardi = 0 and a.absent = 1 group by a.student_id";
			else if (attendanceSession.equalsIgnoreCase("morning")
					&& attendanceType.equalsIgnoreCase("both"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id and a.section_id ="
						+ sectionId
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and (a.tardi = 1 or a.absent = 1 )"
						+ " and a.attendance_session = 'morning' group by a.student_id";
			else if (attendanceSession.equalsIgnoreCase("morning")
					&& attendanceType.equalsIgnoreCase("late"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id and a.section_id ="
						+ sectionId
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.attendance_session = 'morning' and a.tardi = 1 and a.absent = 0 group by a.student_id";
			else if (attendanceSession.equalsIgnoreCase("morning")
					&& attendanceType.equalsIgnoreCase("absent"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id and a.section_id ="
						+ sectionId
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.attendance_session = 'morning' and a.tardi = 0 and a.absent = 1 group by a.student_id";
			else if (attendanceSession.equalsIgnoreCase("afternoon")
					&& attendanceType.equalsIgnoreCase("both"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id and a.section_id ="
						+ sectionId
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and (a.tardi = 1 or a.absent = 1 )"
						+ " and a.attendance_session = 'afternoon' group by a.student_id";
			else if (attendanceSession.equalsIgnoreCase("afternoon")
					&& attendanceType.equalsIgnoreCase("late"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id and a.section_id ="
						+ sectionId
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.attendance_session = 'afternoon' and a.tardi = 1 and a.absent = 0 group by a.student_id";
			else if (attendanceSession.equalsIgnoreCase("afternoon")
					&& attendanceType.equalsIgnoreCase("absent"))
				query = "select * from tbl_attendance_grid a, tbl_section s where a.section_id=s.id and a.section_id ="
						+ sectionId
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.attendance_session = 'afternoon' and a.tardi = 0 and a.absent = 1 group by a.student_id";
			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				attendanceGrid = new AttendanceGrid(rSet.getLong("id"),
						rSet.getInt("teacher_id"), rSet.getInt("section_id"),
						rSet.getString("section_name"),
						rSet.getString("date_taken"),
						rSet.getString("student_id"), rSet.getInt("tardi"),
						rSet.getInt("absent"));
				list.add(attendanceGrid);
			}// end while loop		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	

	public static List<AttendanceGrid> getAllAttendanceGridsWithTheFollowingDateRangeForCoordinators(
			String startDate, String endDate, String attendanceSession,
			String attendanceType, int sectionIdFrom, int sectionIdTo) {

		List<AttendanceGrid> list = new ArrayList<AttendanceGrid>();
		AttendanceGrid attendanceGrid = null;
		try {

			String query = null;
			if (attendanceSession.equalsIgnoreCase("both")
					&& attendanceType.equalsIgnoreCase("both"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken "
						+ " between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "'"
						+ " and (a.tardi = 1 or a.absent = 1 ) " 
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			else if (attendanceSession.equalsIgnoreCase("both")
					&& attendanceType.equalsIgnoreCase("late"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.tardi = 1 and a.absent = 0 "
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			else if (attendanceSession.equalsIgnoreCase("both")
					&& attendanceType.equalsIgnoreCase("absent"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.tardi = 0 and a.absent = 1 "
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			else if (attendanceSession.equalsIgnoreCase("morning")
					&& attendanceType.equalsIgnoreCase("both"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and (a.tardi = 1 or a.absent = 1 )"
						+ " and a.attendance_session = 'morning' " 
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			else if (attendanceSession.equalsIgnoreCase("morning")
					&& attendanceType.equalsIgnoreCase("late"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.attendance_session = 'morning' and a.tardi = 1 and a.absent = 0 " 
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			else if (attendanceSession.equalsIgnoreCase("morning")
					&& attendanceType.equalsIgnoreCase("absent"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.attendance_session = 'morning' and a.tardi = 0 and a.absent = 1 "
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			else if (attendanceSession.equalsIgnoreCase("afternoon")
					&& attendanceType.equalsIgnoreCase("both"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and (a.tardi = 1 or a.absent = 1 )"
						+ " and a.attendance_session = 'afternoon' " 
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			else if (attendanceSession.equalsIgnoreCase("afternoon")
					&& attendanceType.equalsIgnoreCase("late"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.attendance_session = 'afternoon' and a.tardi = 1 and a.absent = 0 " 
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			else if (attendanceSession.equalsIgnoreCase("afternoon")
					&& attendanceType.equalsIgnoreCase("absent"))
				query = "select * from tbl_attendance_grid a, tbl_section s,tbl_applicant_t ap where a.section_id=s.id "
						+ " and s.level_id between '"
						+ sectionIdFrom
						+ "' and '"
						+ sectionIdTo
						+ "'"
						+ " and a.date_taken between '"
						+ startDate
						+ "' and '"
						+ endDate
						+ "' and a.attendance_session = 'afternoon' and a.tardi = 0 and a.absent = 1 " 
						+" and a.student_id=ap.id"
						+ " group by a.student_id order by a.section_id, first_name ASC";
			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				
				attendanceGrid = new AttendanceGrid(rSet.getLong("id"),
						rSet.getInt("teacher_id"), rSet.getInt("section_id"),
						rSet.getString("section_name"),
						rSet.getString("date_taken"),
						rSet.getString("student_id"), rSet.getInt("tardi"),
						rSet.getInt("absent"));
				list.add(attendanceGrid);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<AttendanceGrid> getAllAttendanceGridsForThisStudentDuringThisPeriod(
			String studentId, String startDate, String endDate) {
		List<AttendanceGrid> list = new ArrayList<AttendanceGrid>();
		AttendanceGrid attendanceGrid = null;
		try {
			String query = "select * from tbl_attendance_grid where student_id = '"
					+ studentId
					+ "' and date_taken between '"
					+ startDate
					+ "' and '" + endDate + "' and (tardi<>0 || absent<>0)";
			ResultSet rSet = DBConnection.readFromDatabase(query);
		
			while (rSet.next()) {
				attendanceGrid = new AttendanceGrid(rSet.getLong("id"),
						rSet.getInt("teacher_id"), rSet.getInt("section_id"),
						rSet.getString("date_taken"),rSet.getString("attendance_session"),
						rSet.getString("student_id"), rSet.getInt("tardi"),
						rSet.getInt("absent"), rSet.getString("reason"));
				list.add(attendanceGrid);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}


	public static int getTotalNumberOfDaysThisStudentWasLate(String studentId, String startDate, String endDate) {
		int numberOfDays = 0;
		try {
			String query = "select count(*) as num from tbl_attendance_grid where date_taken between  '"+startDate+"' and '"+endDate+"' and student_id = '"
					+ studentId + "' and tardi = 1";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				numberOfDays = rSet.getInt("num");
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return numberOfDays;
	}
	
	public static int getTotalNumberOfDaysThisStudentWasAbsent(
			String studentId, String startDate, String endDate) {
		int numberOfDays = 0;
		try {
			String query = "select count(*) as num from tbl_attendance_grid where date_taken between  '"+startDate+"' and '"+endDate+"' and student_id = '"
					+ studentId + "' and absent = 1";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				numberOfDays = rSet.getInt("num");
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return numberOfDays;
	}

}// end class
