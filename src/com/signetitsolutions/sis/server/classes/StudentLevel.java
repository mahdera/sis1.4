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
public class StudentLevel {
	private long id;
	private String studentId;
	private int levelId;
	private int sectionId;
	private String name;

	/**
	 * 
	 */
	public StudentLevel() {
		super();
	}

	/**
	 * @param studentId
	 * @param levelId
	 */
	public StudentLevel(String studentId, int levelId, int sectionId) {
		super();
		this.studentId = studentId;
		this.levelId = levelId;
		this.sectionId = sectionId;
	}

	/**
	 * @param id
	 * @param studentId
	 * @param levelId
	 */
	public StudentLevel(long id, String studentId, int levelId, int sectionId) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.levelId = levelId;
		this.sectionId = sectionId;
	}

	/**
	 * @return the sectionId
	 */
	public int getSectionId() {
		return sectionId;
	}

	/**
	 * @param sectionId
	 *            the sectionId to set
	 */
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
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
	 * @return the studentId
	 */
	public String getStudentId() {
		return studentId;
	}

	/**
	 * @param studentId
	 *            the studentId to set
	 */
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	/**
	 * @return the levelId
	 */
	public int getLevelId() {
		return levelId;
	}

	/**
	 * @param levelId
	 *            the levelId to set
	 */
	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}

	public void addStudentLevel() {
		try {
			String command = "insert into tbl_student_level_t(student_id,level_id,section_id) "
					+ "values('"
					+ this.getStudentId()
					+ "',"
					+ this.getLevelId() + "," + this.getSectionId() + ")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateStudentLevel(long id, long studentId, int levelId,
			int sectionId) {
		try {
			String command = "update tbl_student_level_t set student_id="
					+ studentId + ", level_id=" + levelId + ", section_id="
					+ sectionId + " where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteStudentLevel(long id) {
		try {
			String command = "delete from tbl_student_level_t where student_id = "
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<StudentLevel> getAllStudentLevels() {
		List<StudentLevel> list = new ArrayList<StudentLevel>();
		StudentLevel studentLevel = null;
		try {
			String query = "select * from tbl_student_level_t";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentLevel = new StudentLevel(rSet.getLong("id"),
						rSet.getString("student_id"), rSet.getInt("level_id"),
						rSet.getInt("section_id"));
				list.add(studentLevel);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<StudentLevel> getStudentLevelFormThisLevel(int levelId,
			int teacherId, int subjectId, int semesterId, int academicYear) {
		List<StudentLevel> list = new ArrayList<StudentLevel>();
		StudentLevel studentLevel = null;
		try {
			String query = "select * from tbl_student_level_t where level_id="
					+ levelId
					+ " and student_id not in (select tbl_student_evaluation.student_id from tbl_student_evaluation where level_id="
					+ levelId + " and teacher_id=" + teacherId
					+ " and subject_id=" + subjectId + " and term_id="
					+ semesterId + " and academic_year_id=" + academicYear
					+ ") ";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentLevel = new StudentLevel(rSet.getLong("id"),
						rSet.getString("student_id"), rSet.getInt("level_id"),
						rSet.getInt("section_id"));
				list.add(studentLevel);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<StudentEvaluation> getStudentAchievementAnaEffort(
			int levelId, int teacherId, int subjectId, int semesterId,
			int academicYearId) {
		List<StudentEvaluation> list = new ArrayList<StudentEvaluation>();
		StudentEvaluation studentEvaluation = null;
		try {
			String query = "select * from tbl_student_evaluation,tbl_student_level where tbl_student_level.student_id=tbl_student_evaluation.student_id and level_id="
					+ levelId
					+ " and teacher_id="
					+ teacherId
					+ " and subject_id="
					+ subjectId
					+ " and term_id="
					+ semesterId
					+ " and academic_year_id="
					+ academicYearId
					+ "";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentEvaluation = new StudentEvaluation(
						rSet.getString("tbl_student_level.student_id"),
						rSet.getInt("teacher_id"), rSet.getInt("subject_id"),
						rSet.getInt("evaluation_criteria_id"),
						rSet.getString("achievement"),
						rSet.getString("effort"),
						rSet.getString("teachers_comments"),
						rSet.getInt("academic_year_id"), rSet.getInt("term_id"));
				list.add(studentEvaluation);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static int countEvaluationCriteria(int subjectId) {
		int result = 0;
		String query = "select count(*) criteria from tbl_evaluation_criteria where subject_id="
				+ subjectId;
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			rSet.absolute(1);
			result = rSet.getInt("criteria");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static List<Applicant> getLevelStuds(int level_id) {
		try {
			List<Applicant> apps = new ArrayList<Applicant>();
			String sql = "SELECT t.student_id,first_name,middle_name,last_name,sex,applicant_type,nationality,date_admission_requested"
					+ " FROM tbl_applicant_t tt inner join "
					+ "tbl_student_level_t t on t.student_id=tt.id "
					+ "where t.level_id="
					+ level_id
					+ " and tt.archived != 1 order by first_name asc";
			ResultSet r = DBConnection.readFromDatabase(sql);
			while (r.next()) {
				Applicant a = new Applicant(r.getString("student_id"),
						r.getString("first_name"), r.getString("middle_name"),
						r.getString("last_name"), r.getString("sex"),
						r.getString("applicant_type"),
						r.getString("nationality"),
						r.getString("date_admission_requested"));
				apps.add(a);
			}
			return apps;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}
	
	public static List<Applicant> getLevelStudsInArchive(int level_id){
		try {
			List<Applicant> apps = new ArrayList<Applicant>();
			String sql = "SELECT t.student_id,first_name,middle_name,last_name,sex,applicant_type,nationality,date_admission_requested"
					+ " FROM tbl_applicant_t tt inner join "
					+ "tbl_student_level_t t on t.student_id=tt.id "
					+ "where t.level_id="
					+ level_id
					+ " and tt.archived = 1 order by first_name asc";
			ResultSet r = DBConnection.readFromDatabase(sql);
			while (r.next()) {
				Applicant a = new Applicant(r.getString("student_id"),
						r.getString("first_name"), r.getString("middle_name"),
						r.getString("last_name"), r.getString("sex"),
						r.getString("applicant_type"),
						r.getString("nationality"),
						r.getString("date_admission_requested"));
				apps.add(a);
			}
			return apps;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}

	public static List<Applicant> getSectionStuds(String section_id) {
		try {
			List<Applicant> apps = new ArrayList<Applicant>();
			String sql = "SELECT t.student_id,first_name,middle_name,last_name,sex,applicant_type,nationality,date_admission_requested"
					+ " FROM tbl_applicant_t tt inner join "
					+ "tbl_student_level_t t on t.student_id=tt.id "
					+ "where t.section_id="
					+ section_id
					+ " order by first_name asc";
			ResultSet r = DBConnection.readFromDatabase(sql);
			while (r.next()) {
				Applicant a = new Applicant(r.getString("student_id"),
						r.getString("first_name"), r.getString("middle_name"),
						r.getString("last_name"), r.getString("sex"),
						r.getString("applicant_type"),
						r.getString("nationality"),
						r.getString("date_admission_requested"));
				apps.add(a);
			}
			return apps;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}

	public static List<StudentLevel> getAllStudentLevelsInThisSection(
			int sectionId) {
		List<StudentLevel> list = new ArrayList<StudentLevel>();
		StudentLevel studentLevel = null;
		try {
			String query = "select s.id,s.student_id, s.level_id, s.section_id from db_sis.tbl_student_level_t s , db_sis.tbl_applicant_t t "
					+ " where s.student_id=t.id and section_id = "
					+ sectionId
					+ " order by t.first_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentLevel = new StudentLevel(rSet.getLong("id"),
						rSet.getString("student_id"), rSet.getInt("level_id"),
						rSet.getInt("section_id"));
				list.add(studentLevel);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<StudentLevel> getAllStudentInThisLevel(int level) {
		List<StudentLevel> list = new ArrayList<StudentLevel>();
		StudentLevel studentLevel = null;
		try {
			String query = "select * from tbl_student_level_t where level_id = "
					+ level;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentLevel = new StudentLevel(rSet.getLong("id"),
						rSet.getString("student_id"), rSet.getInt("level_id"),
						rSet.getInt("section_id"));
				list.add(studentLevel);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static StudentLevel getStudentLevel(long id) {
		StudentLevel studentLevel = null;
		try {
			String query = "select * from tbl_student_level_t where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentLevel = new StudentLevel(rSet.getLong("id"),
						rSet.getString("student_id"), rSet.getInt("level_id"),
						rSet.getInt("section_id"));

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return studentLevel;
	}

	public static StudentLevel getStudentLevelOfThisStudent(String studentId) {
		StudentLevel studentLevel = null;
		try {
			// JOptionPane.showMessageDialog(null, studentId);
			String query = "select * from tbl_student_level_t where student_id = '"
					+ studentId + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentLevel = new StudentLevel(rSet.getLong("id"),
						rSet.getString("student_id"), rSet.getInt("level_id"),
						rSet.getInt("section_id"));

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return studentLevel;
	}

	public static int getNumberOfStudentsInThisLevel(int levelId) {
		int numberOfStudents = 0;
		try {
			String query = "select count(*) as c from tbl_student_level_t where level_id = "
					+ levelId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				numberOfStudents = rSet.getInt("c");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return numberOfStudents;
	}

	public static int getCurrentNumberOfStudentsInThisSection(int sectionId) {
		int numberOfStudents = 0;
		try {
			String query = "select count(*) as c from tbl_student_level_t where section_id = "
					+ sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				numberOfStudents = rSet.getInt("c");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return numberOfStudents;
	}

	public static void changeTheSectionForThisStudent(String studentId,
			int sectionId) {
		try {
			String command = "update tbl_student_level_t set section_id = "
					+ sectionId + " where student_id = '" + studentId + "'";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void promoteStudent(String stud, int level, int section) {
		try {
			String cmd = "update tbl_student_level_t set level_id=" + level
					+ ",section_id=" + section + " where student_id='" + stud
					+ "'";
			DBConnection.writeToDatabase(cmd);
		} catch (Exception s) {
			s.printStackTrace();
		}
	}

	public static long getStudentLevelIdForThisStudentInThisSection(
			String studentId, int sectionId) {
		long studentLevelId = 0;
		try {
			String query = "select level_id from tbl_student_level_t where student_id = "
					+ studentId + " and section_id = " + sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentLevelId = rSet.getLong("level_id");
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return studentLevelId;
	}

	public static void updateTheLevelOfThisStudent(long studentId,
			int newLevelId) {
		try {
			String command = "update tbl_student_level_t set level_id = "
					+ newLevelId + " where student_id = '" + studentId + "'";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<StudentLevel> getStudentLevelFormThisLevel(int levelId) {
		List<StudentLevel> list = new ArrayList<StudentLevel>();
		StudentLevel studentLevel = null;
		try {
			String query = "select * from tbl_student_level_t where level_id = "
					+ levelId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				studentLevel = new StudentLevel(rSet.getLong("id"),
						rSet.getString("student_id"), rSet.getInt("level_id"),
						rSet.getInt("section_id"));
				list.add(studentLevel);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static void updateTheSectionOfThisStudent(long studentId,
			int newLevelId) {
		try {
			String command = "update tbl_student_level_t set section_id = "
					+ newLevelId + " where student_id = " + studentId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public StudentLevel(String studentId, String name) {
		this.studentId = studentId;
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public static List<StudentLevel> getStudentsInLevel(String level) {
		List<StudentLevel> slist = new ArrayList<StudentLevel>();
		try {
			String cmd = "SELECT t.student_id,concat(concat(a.first_name,' '),concat(a.middle_name,' '),concat(a.last_name,' ')) name "
					+ "FROM TBL_student_level_t t "
					+ "inner join tbl_applicant_t a where a.id=t.student_id "
					+ "and t.level_id=" + level + " order by a.first_name asc";
			ResultSet rs = DBConnection.readFromDatabase(cmd);
			while (rs.next()) {
				StudentLevel fetched = new StudentLevel(
						rs.getString("student_id"), rs.getString("name"));
				slist.add(fetched);
			}
		} catch (Exception s) {
			s.printStackTrace();
		}
		return slist;
	}

}// end class
