package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AttendanceTakesBy {
	String id;
	String first_name; 
	String middle_name; 
	String last_name;
	String section_id;
	String section_name;
	String date_taken;
	String attendance_session;
	String taken;
	
	
	
	public AttendanceTakesBy() {
		super();
	}

	public AttendanceTakesBy(String id, String first_name, String middle_name,
			String last_name, String section_id, String section_name,
			String date_taken, String attendance_session, String taken) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.middle_name = middle_name;
		this.last_name = last_name;
		this.section_id = section_id;
		this.section_name = section_name;
		this.date_taken = date_taken;
		this.attendance_session = attendance_session;
		this.taken = taken;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getMiddle_name() {
		return middle_name;
	}

	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getSection_id() {
		return section_id;
	}

	public void setSection_id(String section_id) {
		this.section_id = section_id;
	}

	public String getSection_name() {
		return section_name;
	}

	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}

	public String getDate_taken() {
		return date_taken;
	}

	public void setDate_taken(String date_taken) {
		this.date_taken = date_taken;
	}

	public String getAttendance_session() {
		return attendance_session;
	}

	public void setAttendance_session(String attendance_session) {
		this.attendance_session = attendance_session;
	}

	public String getTaken() {
		return taken;
	}

	public void setTaken(String taken) {
		this.taken = taken;
	}

	public static boolean isTaken(String supervisor_id, String section_id, String date_taken, String attendance_session){
		boolean myReturn = false;
		try {
			//String query = "select * from db_sis.tbl_attendance_grid where id=" + id;// +"order by first_name,middle_name,last_name";
			String query = null;
			     query = "select * from db_sis.tbl_attendance_grid where  teacher_id = '"+ supervisor_id +"' and section_id='"+ section_id +"' " +
					"and date_taken='"+ date_taken +"' and attendance_session= '"+ attendance_session +"'";
			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				myReturn = true;
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return myReturn;
	}
	
	public static List<AttendanceTakesBy> getAttendanceTakesByReport(int sectionIdFrom, int sectionIdTo) {

		List<AttendanceTakesBy> list = new ArrayList<AttendanceTakesBy>();
		AttendanceTakesBy attendanceTakesBy = null;
		try {
			String query = null;
			query ="select distinct t.id as teacher_id, sec.id as section_id, t.first_name, t.middle_name, t.last_name, sec.section_name " +
					"from db_sis.tbl_teacher t, db_sis.tbl_class_supervision su, db_sis.tbl_section sec " +
					"where t.id = su.supervisor_id and su.from_level_or_section = sec.id and su.type='teacher' " +
					"and sec.level_id between '"+sectionIdFrom+"' and '"+sectionIdTo+"'  order by sec.level_id, sec.id, t.first_name ASC";
				
			System.out.println("query 1 ==== "+query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				attendanceTakesBy = new AttendanceTakesBy(
						rSet.getString("teacher_id"),
						rSet.getString("first_name"),						
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getString("section_id"),
						rSet.getString("section_name"),
						"","",""
						); 
				
				list.add(attendanceTakesBy);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	public static List<AttendanceTakesBy> getAttendanceDateAndSession(String teacherId, String sectionId, String startDate, String endDate, String attendanceSession){
		List<AttendanceTakesBy> list = new ArrayList<AttendanceTakesBy>();
		AttendanceTakesBy attendanceDateAndSession = null;
		try {
		
			String query = null;
         if(attendanceSession.equalsIgnoreCase("both")){
			query="select distinct date_taken, attendance_session from db_sis.tbl_attendance_grid " +
				  "where teacher_id = '"+ teacherId +"' and section_id = '"+ sectionId +"' " +
				  "and date_taken between '"+ startDate +"' and '"+ endDate +"'";
         }else if(attendanceSession.equalsIgnoreCase("Morning")){
        	 query="select distinct date_taken, attendance_session from db_sis.tbl_attendance_grid " +
   				  "where teacher_id = '"+ teacherId +"' and section_id = '"+ sectionId +"' " +
   				  "and date_taken between '"+ startDate +"' and '"+ endDate +"' and attendance_session = 'Morning'";
         }else if(attendanceSession.equalsIgnoreCase("Afternoon")){
        	 query="select distinct date_taken, attendance_session from db_sis.tbl_attendance_grid " +
   				  "where teacher_id = '"+ teacherId +"' and section_id = '"+ sectionId +"' " +
   				  "and date_taken between '"+ startDate +"' and '"+ endDate +"' and attendance_session = 'Afternoon'";
         }
        // System.out.println("query 2 ==== "+query);
			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				attendanceDateAndSession = new AttendanceTakesBy("","","","","","",						
						rSet.getString("date_taken"),
						rSet.getString("attendance_session"),
						""
						);
				
				list.add(attendanceDateAndSession);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}
