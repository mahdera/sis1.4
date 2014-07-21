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
public class Teaches {
	private long id;
	private int teacherId;
	private int subjectId;
	private int sectionId;
	private int semesterId;
	private int academicYearId;

	/**
	 * @param teacherId
	 * @param subjectId
	 * @param levelId
	 */
	public Teaches(int teacherId, int subjectId, int sectionId, int semesterId,
			int academicYearId) {
		super();
		this.teacherId = teacherId;
		this.subjectId = subjectId;
		this.sectionId = sectionId;
		this.semesterId = semesterId;
		this.academicYearId = academicYearId;
	}

	/**
	 * @param id
	 * @param teacherId
	 * @param subjectId
	 * @param levelId
	 */
	public Teaches(long id, int teacherId, int subjectId, int sectionId,
			int semesterId, int academicYearId) {
		super();
		this.id = id;
		this.teacherId = teacherId;
		this.subjectId = subjectId;
		this.sectionId = sectionId;
		this.semesterId = semesterId;
		this.academicYearId = academicYearId;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the teacherId
	 */
	public int getTeacherId() {
		return teacherId;
	}

	/**
	 * @param teacherId
	 *            the teacherId to set
	 */
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	/**
	 * @return the subjectId
	 */
	public int getSubjectId() {
		return subjectId;
	}

	/**
	 * @param subjectId
	 *            the subjectId to set
	 */
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public int getSectionId() {
		return sectionId;
	}

	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}

	/**
	 * @return the semesterId
	 */
	public int getSemesterId() {
		return semesterId;
	}

	/**
	 * @param semesterId
	 *            the semesterId to set
	 */
	public void setSemesterId(int semesterId) {
		this.semesterId = semesterId;
	}

	/**
	 * @return the academicYearId
	 */
	public int getAcademicYearId() {
		return academicYearId;
	}

	/**
	 * @param academicYearId
	 *            the academicYearId to set
	 */
	public void setAcademicYearId(int academicYearId) {
		this.academicYearId = academicYearId;
	}

	public void addTeaches() {
		try {
			String command = "insert into tbl_teaches values(0,"
					+ this.getTeacherId() + "," + this.getSubjectId() + ","
					+ this.getSectionId() + "," + this.getSemesterId() + ","
					+ this.getAcademicYearId() + ")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateTeaches(int id, int subject, int sectionId) {
		try {
			String command = "update tbl_teaches set subject_id=" + subject
					+ ",section_id=" + sectionId + " where id=" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteTeaches(long id) {
		try {
			String command = "delete from tbl_teaches where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Teaches> getAllTeaches() {
		List<Teaches> list = new ArrayList<Teaches>();
		Teaches t = null;
		try {
			String query = "select * from tbl_teaches";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				t = new Teaches(rSet.getLong("id"), rSet.getInt("teacher_id"),
						rSet.getInt("subject_id"), rSet.getInt("section_id"),
						rSet.getInt("semester_id"),
						rSet.getInt("academic_year_id"));
				list.add(t);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Teaches> getAllTeachesForTeacherInTermAndAcademicYear(
			int teacherId, int termId, int academicYearId) {
		List<Teaches> list = new ArrayList<Teaches>();
		Teaches t = null;
		try {
			String query = "select * from tbl_teaches where teacher_id="
					+ teacherId + " and semester_id=" + termId
					+ " and academic_year_id=" + academicYearId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				t = new Teaches(rSet.getLong("id"), rSet.getInt("teacher_id"),
						rSet.getInt("subject_id"), rSet.getInt("section_id"),
						rSet.getInt("semester_id"),
						rSet.getInt("academic_year_id"));
				list.add(t);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Teaches getTeaches(long id) {
		Teaches t = null;
		try {
			String query = "select * from tbl_teaches where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				t = new Teaches(rSet.getLong("id"), rSet.getInt("teacher_id"),
						rSet.getInt("subject_id"), rSet.getInt("section_id"),
						rSet.getInt("semester_id"),
						rSet.getInt("academic_year_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return t;
	}

	public static List<Teaches> getTeachesBySection(int id) {
		Teaches teaches = null;
		List<Teaches> teachesList = new ArrayList<Teaches>();
		try {
			String query = "select t.id, teacher_id, t.subject_id,t.section_id,(select s.section_name from db_sis.tbl_section s where t.section_id=s.id) as section_name,t.semester_id, t.academic_year_id from db_sis.tbl_teaches t where t.teacher_id="
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				teaches = new Teaches(rSet.getLong("id"),
						rSet.getInt("teacher_id"), rSet.getInt("subject_id"),
						rSet.getInt("section_id"), rSet.getInt("semester_id"),
						rSet.getInt("academic_year_id"));
				teachesList.add(teaches);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return teachesList;
	}

	public static List<Teaches> getTeachesForSubject() {
		Teaches teaches = null;
		List<Teaches> teachesList = new ArrayList<Teaches>();
		try {
			String query = "select * from db_sis.tbl_teaches";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				teaches = new Teaches(rSet.getLong("id"),
						rSet.getInt("teacher_id"), rSet.getInt("subject_id"),
						rSet.getInt("level_id"), rSet.getInt("semester_id"),
						rSet.getInt("academic_year_id"));
				teachesList.add(teaches);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return teachesList;
	}

}// end class
