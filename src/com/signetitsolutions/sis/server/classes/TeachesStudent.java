package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

public class TeachesStudent {
	private String id;
	private String teacherId;
	private String teacherName;
	private String year;
	private String yearName;
	private String term;
	private String termName;
	private String subjectId;
	private String subjectName;
	private String studId;
	private String studName;
	private String level;
	
	
	
	public TeachesStudent() {
		super();
	}
	public TeachesStudent(String id, String teacherId, String teacherName, String year,
			String term, String subjectId, String subjectName, String studId, String studName,
			String level) {
		super();
		this.id = id;
		this.teacherId = teacherId;
		this.teacherName = teacherName;
		this.year = year;
		this.term = term;
		this.subjectId = subjectId;
		this.subjectName = subjectName;
		this.studId = studId;
		this.studName = studName;
		this.level = level;
	}
	
	public TeachesStudent(String id, String teacherId, String teacherName,
			String year, String yearName, String term, String termName,
			String subjectId, String subjectName, String studId,
			String studName, String level) {
		super();
		this.id = id;
		this.teacherId = teacherId;
		this.teacherName = teacherName;
		this.year = year;
		this.yearName = yearName;
		this.term = term;
		this.termName = termName;
		this.subjectId = subjectId;
		this.subjectName = subjectName;
		this.studId = studId;
		this.studName = studName;
		this.level = level;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	
	public String getYearName() {
		return yearName;
	}
	public void setYearName(String yearName) {
		this.yearName = yearName;
	}
	public String getTermName() {
		return termName;
	}
	public void setTermName(String termName) {
		this.termName = termName;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}

	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getStudId() {
		return studId;
	}
	public void setStudId(String studId) {
		this.studId = studId;
	}
	public String getStudName() {
		return studName;
	}
	public void setStudName(String studName) {
		this.studName = studName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	

	public static List<TeachesStudent> getTeachesStudent(String teacherId, String year,	String term, String subject) {
		try {
			String cmd = null;
			PreparedStatement prs = null;
			List<TeachesStudent> teachesStudentList = new ArrayList<TeachesStudent>();
			System.out.println("teacherId="+teacherId+"  year="+year+"   term="+term+"  subject="+subject);
        if(teacherId.equalsIgnoreCase("") && subject.equalsIgnoreCase("")){
        	cmd ="select ts.id, ts.teacher_id, " +
           		 "t.first_name as t_first_name, t.middle_name as t_middle_name, t.last_name as t_last_name, " +
           		 "ts.academic_year, ay.academic_year_name, ts.semester_id, sem.semester_name, ts.subject_id, sub.subject_name, ts.student_id, " +
           		 "app.first_name as stud_first_name, app.middle_name as stud_middle_name, app.last_name stud_last_name " +
           		 "from db_sis.tbl_teaches_student ts, db_sis.tbl_applicant_t app, db_sis.tbl_subject sub, db_sis.tbl_teacher t, db_sis.tbl_semester sem, db_sis.tbl_academic_year ay " +
           		 "where ts.teacher_id = t.id " +
           		 "and ts.subject_id = sub.id " +
           		 "and ts.student_id = app.id " +    
           		 "and ts.academic_year = ay.id " +
       		     "and ts.semester_id = sem.id " +
           		 "and ts.academic_year = ? " +
           		 "and ts.semester_id = ? ";
			  prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(cmd);
				prs.setString(1, year);			
				prs.setString(2, term);
				
				
        }else if(teacherId.equalsIgnoreCase("")){
        	cmd ="select ts.id, ts.teacher_id, " +
           		 "t.first_name as t_first_name, t.middle_name as t_middle_name, t.last_name as t_last_name, " +
           		 "ts.academic_year,ay.academic_year_name, ts.semester_id, sem.semester_name, ts.subject_id, sub.subject_name, ts.student_id, " +
           		 "app.first_name as stud_first_name, app.middle_name as stud_middle_name, app.last_name stud_last_name " +
           		 "from db_sis.tbl_teaches_student ts, db_sis.tbl_applicant_t app, db_sis.tbl_subject sub, db_sis.tbl_teacher t, db_sis.tbl_semester sem, db_sis.tbl_academic_year ay " +
           		 "where ts.teacher_id = t.id " +
           		 "and ts.subject_id = sub.id " +
           		 "and ts.student_id = app.id " + 
           		 "and ts.academic_year = ay.id " +
       		     "and ts.semester_id = sem.id " +
           		 "and ts.academic_year = ? " +
           		 "and ts.semester_id = ? " +
           		 "and ts.subject_id = ? ";
        	
        	 prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(cmd);
			
			prs.setString(1, year);			
			prs.setString(2, term);
			prs.setString(3, subject);
			
        }else if(subject.equalsIgnoreCase("")){
        	cmd ="select ts.id, ts.teacher_id, " +
           		 "t.first_name as t_first_name, t.middle_name as t_middle_name, t.last_name as t_last_name, " +
           		 "ts.academic_year, ay.academic_year_name, ts.semester_id, sem.semester_name, ts.subject_id, sub.subject_name, ts.student_id, " +
           		 "app.first_name as stud_first_name, app.middle_name as stud_middle_name, app.last_name stud_last_name " +
           		 "from db_sis.tbl_teaches_student ts, db_sis.tbl_applicant_t app, db_sis.tbl_subject sub, db_sis.tbl_teacher t, db_sis.tbl_semester sem, db_sis.tbl_academic_year ay " +
           		 "where ts.teacher_id = t.id " +
           		 "and ts.subject_id = sub.id " +
           		 "and ts.student_id = app.id " +
           		 "and ts.academic_year = ay.id " +
       		     "and ts.semester_id = sem.id " + 
           		 "and ts.teacher_id = ? " +
           		 "and ts.academic_year = ? " +
           		 "and ts.semester_id = ? ";
        	
        	 prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(cmd);
			prs.setString(1, teacherId);
			prs.setString(2, year);			
			prs.setString(3, term);
			
        }else{
        	cmd ="select ts.id, ts.teacher_id, " +
        		 "t.first_name as t_first_name, t.middle_name as t_middle_name, t.last_name as t_last_name, " +
        		 "ts.academic_year, ay.academic_year_name, ts.semester_id, sem.semester_name, ts.subject_id, sub.subject_name, ts.student_id, " +
        		 "app.first_name as stud_first_name, app.middle_name as stud_middle_name, app.last_name stud_last_name " +
        		 "from db_sis.tbl_teaches_student ts, db_sis.tbl_applicant_t app, db_sis.tbl_subject sub, db_sis.tbl_teacher t, db_sis.tbl_semester sem, db_sis.tbl_academic_year ay " +
        		 "where ts.teacher_id = t.id " +
        		 "and ts.subject_id = sub.id " +
        		 "and ts.student_id = app.id " +
        		 "and ts.academic_year = ay.id " +
        		 "and ts.semester_id = sem.id " +
        		 "and ts.teacher_id = ? " +
        		 "and ts.academic_year = ? " +
        		 "and ts.semester_id = ? " +
        		 "and ts.subject_id = ? ";
        	
        	 prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(cmd);
			prs.setString(1, teacherId);
			prs.setString(2, year);			
			prs.setString(3, term);
			prs.setString(4, subject);
        }
			
        	ResultSet rs = prs.executeQuery();
			while (rs.next()) {
				TeachesStudent teachesStudent = new TeachesStudent(rs.getString("id"), rs.getString("teacher_id"), 
						rs.getString("t_first_name") +" "+ rs.getString("t_middle_name") +" "+ rs.getString("t_last_name"),
						rs.getString("academic_year"),rs.getString("academic_year_name"), rs.getString("semester_id"), rs.getString("semester_name"), rs.getString("subject_id"),
						rs.getString("subject_name"), rs.getString("student_id"),
						rs.getString("stud_first_name") +" "+  rs.getString("stud_middle_name") +" "+  rs.getString("stud_last_name"),"");
				
				teachesStudentList.add(teachesStudent);
			}
			return teachesStudentList;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}

	
	public static List<Subject> getSubject(String teacherId) {
		try {
			String cmd = null;
			PreparedStatement prs = null;
			List<Subject> subjectList = new ArrayList<Subject>();
			
       
        	cmd ="select distinct s.id, s.subject_name, s.description " +
        		"from db_sis.tbl_teaches_student t, db_sis.tbl_subject s " +
        		"where t.subject_id = s.id and teacher_id = ?";
			  prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(cmd);
				prs.setString(1, teacherId);			
					
			
        	ResultSet rs = prs.executeQuery();
			while (rs.next()) {
				Subject subject = new Subject(Integer.parseInt(rs.getString("id")), rs.getString("subject_name"), rs.getString("description"));
				
				subjectList.add(subject);
			}
			return subjectList;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}
	
	public static List<Level> getLevel(String teacherId) {
		try {
			String cmd = null;
			PreparedStatement prs = null;
			List<Level> levelList = new ArrayList<Level>();
			
       
        	cmd ="select distinct t.level_id, l.level_name from db_sis.tbl_teaches_student t, db_sis.tbl_level l " +
        		 "where t.level_id = l.id and teacher_id = ?";
			  prs = (PreparedStatement) DBConnection
						.getDatabaseConnection().prepareStatement(cmd);
				prs.setString(1, teacherId);			
					
			
        	ResultSet rs = prs.executeQuery();
			while (rs.next()) {
				Level level = new Level(Integer.parseInt(rs.getString("level_id")), rs.getString("level_name"));
				
				levelList.add(level);
			}
			return levelList;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}
	
	public void saveTeachesStudent() {
		try {
			String cmd = "insert into tbl_teaches_student(teacher_id, academic_year, semester_id, subject_id, student_id, level_id) values(?,?,?,?,?,?)";

			PreparedStatement prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(cmd);
			
			prs.setString(1, this.getTeacherId());
			prs.setString(2, this.getYear());			
			prs.setString(3, this.getTerm());
			prs.setString(4, this.getSubjectId());
			prs.setString(5, this.getStudId());			
			prs.setString(6, this.getLevel());
			prs.execute();

		} catch (Exception s) {
			s.printStackTrace();
		}
	}
	
	
	public void dropTeachesStudent() {
		try {
			String cmd = "delete from tbl_teaches_student where teacher_id=? and academic_year=? and semester_id=? and subject_id=? and student_id=? ";
			PreparedStatement prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(cmd);
			prs.setString(1, this.getTeacherId());
			prs.setString(2, this.getYear());			
			prs.setString(3, this.getTerm());
			prs.setString(4, this.getSubjectId());
			prs.setString(5, this.getStudId());	
			
			prs.executeUpdate();
		} catch (Exception s) {
			s.printStackTrace();
		}
	}
}
