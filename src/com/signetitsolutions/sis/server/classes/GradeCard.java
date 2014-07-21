/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;
import net.sf.jasperreports.engine.JRResultSetDataSource;
//import net.sf.jasperreports.engine.JasperFillManager;
//import net.sf.jasperreports.engine.JasperPrint;
//import net.sf.jasperreports.view.JasperViewer;
//import net.sf.jasperreports.engine.JRDataSource;


/**
 * @author Leki
 * 
 */
public class GradeCard {
	private int id;
	private String teacherId;
	private String teacherFullName;
	private int levelId;
	private String studentId;
	private String studentFullName;	
	private String studentSex;
	private int subjectId;
	private String subjectName;
	private String grade;
	private String eff;
	private String cond;
	private int semesterId;
	private String semesterName;
	private int academicYearId;
	private String academicYearName;

	
	public GradeCard() {
		super();
	}



	

	public GradeCard(String studentId, String studentFullName, String studentSex) {
		super();
		this.studentId = studentId;
		this.studentFullName = studentFullName;
		this.studentSex = studentSex;
	}

	public GradeCard(String teacherId, int levelId, String studentId,
			int subjectId, String grade, String eff, String cond,
			int semesterId, int academicYearId) {
		super();		
		this.teacherId = teacherId;
		this.levelId = levelId;
		this.studentId = studentId;
		this.subjectId = subjectId;
		this.grade = grade;
		this.eff = eff;
		this.cond = cond;
		this.semesterId = semesterId;
		this.academicYearId = academicYearId;
	}
	
	public GradeCard(int id, String teacherId, int levelId, String studentId,
			int subjectId, String grade, String eff, String cond,
			int semesterId, int academicYearId) {
		super();
		this.id = id;
		this.teacherId = teacherId;
		this.levelId = levelId;
		this.studentId = studentId;
		this.subjectId = subjectId;
		this.grade = grade;
		this.eff = eff;
		this.cond = cond;
		this.semesterId = semesterId;
		this.academicYearId = academicYearId;
	}
	
	
	public GradeCard(int id, String teacherId, String teacherFullName,
			int levelId, String studentId, String studentFullName,
			String studentSex, int subjectId, String subjectName, String grade,
			String eff, String cond,
			int semesterId, String semesterName, int academicYearId,
			String academicYearName) {
		super();
		this.id = id;
		this.teacherId = teacherId;
		this.teacherFullName = teacherFullName;
		this.levelId = levelId;
		this.studentId = studentId;
		this.studentFullName = studentFullName;
		this.studentSex = studentSex;
		this.subjectId = subjectId;
		this.subjectName = subjectName;
		this.grade = grade;
		this.eff = eff;
		this.cond = cond;
		this.semesterId = semesterId;
		this.semesterName = semesterName;
		this.academicYearId = academicYearId;
		this.academicYearName = academicYearName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}

	public String getTeacherFullName() {
		return teacherFullName;
	}

	public void setTeacherFullName(String teacherFullName) {
		this.teacherFullName = teacherFullName;
	}

	public int getLevelId() {
		return levelId;
	}

	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentFullName() {
		return studentFullName;
	}

	public void setStudentFullName(String studentFullName) {
		this.studentFullName = studentFullName;
	}

	public String getStudentSex() {
		return studentSex;
	}

	public void setStudentSex(String studentSex) {
		this.studentSex = studentSex;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getEff() {
		return eff;
	}

	public void setEff(String eff) {
		this.eff = eff;
	}

	public String getCond() {
		return cond;
	}

	public void setCond(String cond) {
		this.cond = cond;
	}

	public int getSemesterId() {
		return semesterId;
	}

	public void setSemesterId(int semesterId) {
		this.semesterId = semesterId;
	}

	public int getAcademicYearId() {
		return academicYearId;
	}

	public void setAcademicYearId(int academicYearId) {
		this.academicYearId = academicYearId;
	}

	public static PreparedStatement getPrs() {
		return prs;
	}

	public static void setPrs(PreparedStatement prs) {
		GradeCard.prs = prs;
	}





	public String getSemesterName() {
		return semesterName;
	}

	public void setSemesterName(String semesterName) {
		this.semesterName = semesterName;
	}

	public String getAcademicYearName() {
		return academicYearName;
	}

	public void setAcademicYearName(String academicYearName) {
		this.academicYearName = academicYearName;
	}





	static PreparedStatement prs = null;
	public void addGradeCard() {
		try {
			String sectionId = null;
			String comman1 = "select section_id from db_sis.tbl_student_level_t where student_id = '" + this.getStudentId() + "'";
			System.out.println("command1111 nanana  = "+comman1);
			ResultSet rSet = DBConnection.readFromDatabase(comman1);
			if (rSet.next()) {
				sectionId =	rSet.getString("section_id");
			}
			
			String command = "insert into tbl_grade_card (teacher_id, section_id, student_id, subject_id, grade, eff, cond, semester_id, academic_year_id) " +
					" values("
					+ this.getTeacherId() + "," + sectionId + ",'"
					+ this.getStudentId() + "'," + this.getSubjectId() + ",'"
					+ this.getGrade() + "','" + this.getEff() + "','" + this.getCond() + "'," 
					+ this.getSemesterId() + "," + this.getAcademicYearId() + ")";
			System.out.println("command nanana  = "+command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updateGradeCard() {
		try {
			String command = "update tbl_grade_card set grade ='" + this.getGrade() + "',eff='" + this.getEff() + "', cond='" + this.getCond()
					+ "' where id=" + this.getId();
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteGradeCard(long id) {
		try {
			String command = "delete from tbl_grade_card where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	
	
	
	public static List<GradeCard> getAllGradeCardsForTheFollowingParameters(
			String teacherId, String levelId, int academicYearId, int semesterId, 
			String subjectId) {
		
		List<GradeCard> list = new ArrayList<GradeCard>();
		GradeCard gradeCard = null;
		String query = null;
		int semId = 0;
		if(semesterId > 5){
			semId = 3;
		}else if(semesterId > 3){
			semId = 2;
		}else if(semesterId > 1){
			semId = 1;
		}
		try {
			if(!teacherId.equalsIgnoreCase("") && !levelId.equalsIgnoreCase("") &&  !subjectId.equalsIgnoreCase("")){
				query = "select g.id as id, t.id as stu_id, t.first_name as stu_first_name, t.middle_name as stu_middle_name, t.last_name as stu_last_name, t.sex as stu_sex, " +
						"g.teacher_id as teacher_id, tr.first_name as teacher_first_name, tr.middle_name as teacher_middle_name, tr.last_name as teacher_last_name, " +
						"g.section_id, g.subject_id, s.subject_name, g.grade, g.eff, g.cond, g.semester_id, sem.semester_name, g.academic_year_id, y.academic_year_name  " +
						"from db_sis.tbl_grade_card g, db_sis.tbl_applicant_t t, db_sis.tbl_teacher tr, " +
						"db_sis.tbl_subject s, db_sis.tbl_academic_year y,db_sis.tbl_semester sem	" +
						"where g.student_id = t.id and g.teacher_id = tr.id and g.subject_id = s.id and g.academic_year_id = y.id and g.semester_id = (sem.id + "+semId+") " +
						"and g.academic_year_id = " + academicYearId + " and g.semester_id = " + semesterId + " " +
						"and g.teacher_id = " + teacherId + " and g.section_id in (select id from db_sis.tbl_section where level_id = " + levelId + ") and g.subject_id = " + subjectId + "";
			}else if(!teacherId.equalsIgnoreCase("") && !levelId.equalsIgnoreCase("")){
				query = "select g.id as id, t.id as stu_id, t.first_name as stu_first_name, t.middle_name as stu_middle_name, t.last_name as stu_last_name, t.sex as stu_sex, " +
						"g.teacher_id as teacher_id, tr.first_name as teacher_first_name, tr.middle_name as teacher_middle_name, tr.last_name as teacher_last_name, " +
						"g.section_id, g.subject_id, s.subject_name, g.grade, g.eff, g.cond, g.semester_id, sem.semester_name, g.academic_year_id, y.academic_year_name  " +
						"from db_sis.tbl_grade_card g, db_sis.tbl_applicant_t t, db_sis.tbl_teacher tr, " +
						"db_sis.tbl_subject s, db_sis.tbl_academic_year y,db_sis.tbl_semester sem	" +
						"where g.student_id = t.id and g.teacher_id = tr.id and g.subject_id = s.id and g.academic_year_id = y.id and g.semester_id = (sem.id + "+semId+") " +
						"and g.academic_year_id = " + academicYearId + " and g.semester_id = " + semesterId + " " +
						"and g.teacher_id = " + teacherId + " and g.section_id in (select id from db_sis.tbl_section where level_id = " + levelId + ") ";
			}else if(!teacherId.equalsIgnoreCase("") && !subjectId.equalsIgnoreCase("")){
				query = "select g.id as id, t.id as stu_id, t.first_name as stu_first_name, t.middle_name as stu_middle_name, t.last_name as stu_last_name, t.sex as stu_sex, " +
						"g.teacher_id as teacher_id, tr.first_name as teacher_first_name, tr.middle_name as teacher_middle_name, tr.last_name as teacher_last_name, " +
						"g.section_id, g.subject_id, s.subject_name, g.grade, g.eff, g.cond, g.semester_id, sem.semester_name, g.academic_year_id, y.academic_year_name  " +
						"from db_sis.tbl_grade_card g, db_sis.tbl_applicant_t t, db_sis.tbl_teacher tr, " +
						"db_sis.tbl_subject s, db_sis.tbl_academic_year y,db_sis.tbl_semester sem	" +
						"where g.student_id = t.id and g.teacher_id = tr.id and g.subject_id = s.id and g.academic_year_id = y.id and g.semester_id = (sem.id + "+semId+") " +
						"and g.academic_year_id = " + academicYearId + " and g.semester_id = " + semesterId + " " +
						"and g.teacher_id = " + teacherId + " and g.subject_id = " + subjectId + "";
			}else if(!levelId.equalsIgnoreCase("") &&  !subjectId.equalsIgnoreCase("")){
				query = "select g.id as id, t.id as stu_id, t.first_name as stu_first_name, t.middle_name as stu_middle_name, t.last_name as stu_last_name, t.sex as stu_sex, " +
						"g.teacher_id as teacher_id, tr.first_name as teacher_first_name, tr.middle_name as teacher_middle_name, tr.last_name as teacher_last_name, " +
						"g.section_id, g.subject_id, s.subject_name, g.grade, g.eff, g.cond, g.semester_id, sem.semester_name, g.academic_year_id, y.academic_year_name " +
						"from db_sis.tbl_grade_card g, db_sis.tbl_applicant_t t, db_sis.tbl_teacher tr, " +
						"db_sis.tbl_subject s, db_sis.tbl_academic_year y,db_sis.tbl_semester sem	" +
						"where g.student_id = t.id and g.teacher_id = tr.id and g.subject_id = s.id and g.academic_year_id = y.id and g.semester_id = (sem.id + "+semId+") " +
						"and g.academic_year_id = " + academicYearId + " and g.semester_id = " + semesterId + " " +
						"and g.section_id in (select id from db_sis.tbl_section where level_id = " + levelId + ") and g.subject_id = " + subjectId + "";
			}else if(!teacherId.equalsIgnoreCase("")){
				query = "select g.id as id, t.id as stu_id, t.first_name as stu_first_name, t.middle_name as stu_middle_name, t.last_name as stu_last_name, t.sex as stu_sex, " +
						"g.teacher_id as teacher_id, tr.first_name as teacher_first_name, tr.middle_name as teacher_middle_name, tr.last_name as teacher_last_name, " +
						"g.section_id, g.subject_id, s.subject_name, g.grade, g.eff, g.cond, g.semester_id, sem.semester_name, g.academic_year_id, y.academic_year_name  " +
						"from db_sis.tbl_grade_card g, db_sis.tbl_applicant_t t, db_sis.tbl_teacher tr, " +
						"db_sis.tbl_subject s, db_sis.tbl_academic_year y,db_sis.tbl_semester sem	" +
						"where g.student_id = t.id and g.teacher_id = tr.id and g.subject_id = s.id and g.academic_year_id = y.id and g.semester_id = (sem.id + "+semId+") " +
						"and g.academic_year_id = " + academicYearId + " and g.semester_id = " + semesterId + " " +
						"and g.teacher_id = " + teacherId + "";
			}else if(!levelId.equalsIgnoreCase("")){
				query = "select g.id as id, t.id as stu_id, t.first_name as stu_first_name, t.middle_name as stu_middle_name, t.last_name as stu_last_name, t.sex as stu_sex, " +
						"g.teacher_id as teacher_id, tr.first_name as teacher_first_name, tr.middle_name as teacher_middle_name, tr.last_name as teacher_last_name, " +
						"g.section_id, g.subject_id, s.subject_name, g.grade, g.eff, g.cond, g.semester_id, sem.semester_name, g.academic_year_id, y.academic_year_name  " +
						"from db_sis.tbl_grade_card g, db_sis.tbl_applicant_t t, db_sis.tbl_teacher tr, " +
						"db_sis.tbl_subject s, db_sis.tbl_academic_year y,db_sis.tbl_semester sem	" +
						"where g.student_id = t.id and g.teacher_id = tr.id and g.subject_id = s.id and g.academic_year_id = y.id and g.semester_id = (sem.id + "+semId+") " +
						"and g.academic_year_id = " + academicYearId + " and g.semester_id = " + semesterId + " " +
						"and g.section_id in (select id from db_sis.tbl_section where level_id = " + levelId + ") ";
			}else if(!subjectId.equalsIgnoreCase("")){
				query = "select g.id as id, t.id as stu_id, t.first_name as stu_first_name, t.middle_name as stu_middle_name, t.last_name as stu_last_name, t.sex as stu_sex, " +
						"g.teacher_id as teacher_id, tr.first_name as teacher_first_name, tr.middle_name as teacher_middle_name, tr.last_name as teacher_last_name, " +
						"g.section_id, g.subject_id, s.subject_name, g.grade, g.eff, g.cond, g.semester_id, sem.semester_name, g.academic_year_id, y.academic_year_name " +
						"from db_sis.tbl_grade_card g, db_sis.tbl_applicant_t t, db_sis.tbl_teacher tr, " +
						"db_sis.tbl_subject s, db_sis.tbl_academic_year y,db_sis.tbl_semester sem	" +
						"where g.student_id = t.id and g.teacher_id = tr.id and g.subject_id = s.id and g.academic_year_id = y.id and g.semester_id = (sem.id + "+semId+") " +
						"and g.academic_year_id = " + academicYearId + " and g.semester_id = " + semesterId + " " +
						"and g.subject_id = " + subjectId + "";
			}else{
				query = "select g.id as id, t.id as stu_id, t.first_name as stu_first_name, t.middle_name as stu_middle_name, t.last_name as stu_last_name, t.sex as stu_sex, " +
						"g.teacher_id as teacher_id, tr.first_name as teacher_first_name, tr.middle_name as teacher_middle_name, tr.last_name as teacher_last_name, " +
						"g.section_id, g.subject_id, s.subject_name, g.grade, g.eff, g.cond, g.semester_id, sem.semester_name, g.academic_year_id, y.academic_year_name  " +
						"from db_sis.tbl_grade_card g, db_sis.tbl_applicant_t t, db_sis.tbl_teacher tr, " +
						"db_sis.tbl_subject s, db_sis.tbl_academic_year y,db_sis.tbl_semester sem	" +
						"where g.student_id = t.id and g.teacher_id = tr.id and g.subject_id = s.id and g.academic_year_id = y.id and g.semester_id = (sem.id + "+semId+") " +
						"and g.academic_year_id = " + academicYearId + " and g.semester_id = " + semesterId + " ";
			}
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				gradeCard = new GradeCard(rSet.getInt("id"),rSet.getString("teacher_id"), rSet.getString("teacher_first_name")+" "+rSet.getString("teacher_middle_name")+" "+rSet.getString("teacher_last_name"),
                                          rSet.getInt("section_id"), rSet.getString("stu_id"), rSet.getString("stu_first_name")+" "+rSet.getString("stu_middle_name")+" "+rSet.getString("stu_last_name"),
                                          rSet.getString("stu_sex"), rSet.getInt("subject_id"), rSet.getString("subject_name"), rSet.getString("grade"), rSet.getString("eff"), 
						                  rSet.getString("cond"), rSet.getInt("semester_id"), rSet.getString("semester_name"),	rSet.getInt("academic_year_id"), rSet.getString("academic_year_name"));
				
				list.add(gradeCard);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static GradeCard getGradeCard(long id) {
		GradeCard gradeCard = null;
		try {
			String query = "select * from tbl_grade_card where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				gradeCard = new GradeCard(rSet.getInt("id"),
						rSet.getString("teacher_id"), 
						rSet.getInt("section_id"),
						rSet.getString("student_id"),
						rSet.getInt("subject_id"), 
						rSet.getString("grade"),
						rSet.getString("eff"), 
						rSet.getString("cond"), 
						rSet.getInt("semester_id"),
						rSet.getInt("academic_year_id"));
						
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return gradeCard;
	}
	

	public static List<GradeCard> getAllStudentsInTeachingSet(int teacherId, int levelId, int academicYearId, int semesterId, int subjectId) {
		
		List<GradeCard> gradeCard = new ArrayList<GradeCard>();
		try {
			String query = "select t.id, t.first_name, t.middle_name, t.last_name, t.sex " +
					       "from db_sis.tbl_teaches_student ts, db_sis.tbl_applicant_t t " +
					       "where ts.student_id = t.id " +
					       "and	ts.teacher_id = ? " +
					       "and	ts.academic_year = ? " +
					       "and	(ts.semester_id = ? or ts.semester_id = '4') " +
					       "and	ts.subject_id = ? " +
					       "and	ts.level_id = ? " +
					       "order by first_name asc,middle_name asc,last_name asc";
			
			 prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(query);
				prs.setInt(1, teacherId);
				prs.setInt(2, academicYearId);					
				prs.setInt(3, semesterId);			
				prs.setInt(4, subjectId);
				prs.setInt(5, levelId);
				
				ResultSet rs = prs.executeQuery();
						
			while (rs.next()) {
				GradeCard gCard = new GradeCard(rs.getString("id"),
						rs.getString("first_name")+ " " + rs.getString("middle_name")+ " " + rs.getString("last_name"),
						rs.getString("sex"));
				gradeCard.add(gCard);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return gradeCard;
	}
	


	@SuppressWarnings("deprecation")
	public static void viewGradeCard(String studentId, int semesterId,
			String academicYearId) {
		GradeCard gradeCard = null;
		HashMap<String, Comparable> parm = new HashMap<String, Comparable>();
		parm.put("studentId", studentId);
		parm.put("semesterId", semesterId);
		parm.put("academicYearId", academicYearId);
		try {
			String query = "select * from tbl_grade_card where student_id = "
					+ studentId + " and semester_id = " + semesterId
					+ " and academic_year_id = " + academicYearId;
			ResultSet rSet = DBConnection.readFromDatabase(query);

			JRResultSetDataSource jrset = new JRResultSetDataSource(rSet);
			//JasperPrint jasperPrint = JasperFillManager.fillReport(
			//		"G:\\Projects\\SIGNAT\\SIS\\report1.jasper", parm, jrset);
			//JasperViewer.viewReport(jasperPrint, false);// this one works fine
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}

	}

}// end class
