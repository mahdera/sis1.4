package com.signetitsolutions.sis.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class test {

	/**
	 * @param args
	 * 
	 */

	public static void main(String[] args) {
		String d = "2011-05-02", d2 = "2011-05-05";

		//int ans = ReportAnalyzer.getAbsent("836i/13", 3, d, d2);
		//System.out.print(ans);
	}
	/*
	 * List<SpecialCourseGrading> scg =
	 * ReportAnalyzer.getStudentSpecialCourseGrading(3, 16);
	 * Iterator<SpecialCourseGrading> s = scg.iterator(); SpecialCourseGrading
	 * sc = new SpecialCourseGrading(); while(s.hasNext()){ sc = s.next();
	 * System
	 * .out.print(sc.getFirstName()+" "+sc.getMiddleName()+" "+sc.getLevelId
	 * ()+" "+sc.getAchivment()+"\n"); } }
	 */

	/*
	 * List<Level> levels = Level.getAllLevels(); Iterator<Level> levItr =
	 * levels.iterator(); List<Section> s = null; List<SectionsInLevel> sections
	 * = new ArrayList<SectionsInLevel>(); while(levItr.hasNext()){ Level level
	 * = levItr.next(); SectionsInLevel sec = new SectionsInLevel();
	 * sec.setLevelId(level.getId()); s =
	 * ReportAnalyzer.getSections(level.getId()); sec.setSection(s);
	 * sections.add(sec); }
	 * 
	 * Iterator<SectionsInLevel> secItr = sections.iterator();
	 * while(secItr.hasNext()){ SectionsInLevel l = secItr.next();
	 * System.out.print(l.getLevelId()+" "); Iterator<Section> s2 =
	 * l.getSection().iterator(); while(s2.hasNext()){ Section s3 = new
	 * Section(); s3 = s2.next(); System.out.print(s3.getId()); }
	 * System.out.print("\n"); }
	 */

	/*
	 * List<Section> s; Section ss = new Section(); Iterator<Section> it; for
	 * (int i=1;i<=2;i++){ s=ReportAnalyzer.getSections(i);
	 * System.out.print(i+" "); it = s.iterator(); while(it.hasNext()){
	 * ss=it.next(); System.out.print(ss.getId()+" "); } System.out.print("\n");
	 * 
	 * }
	 */
	/*
	 * List<SectionsInLevel> s = ReportAnalyzer.summaryOfPrimary();
	 * Iterator<SectionsInLevel> i = s.iterator(); while(i.hasNext()){
	 * SectionsInLevel s1 = i.next(); System.out.print(s1.getLevelId()+" ");
	 * List<Section> s2 = s1.getSection(); Iterator<Section> i2 = s2.iterator();
	 * while(i2.hasNext()){ Section sec = i2.next();
	 * System.out.print(sec.getId()); } System.out.print("\n"); } int
	 * instructorId =2,sectionId=4; Date date = Date.valueOf("2012-10-26");
	 * 
	 * try{ String query =
	 * "select first_name,middle_name,tardi,absent from tbl_applicant,tbl_student_level,tbl_student,tbl_attendance_grid where tbl_applicant.id = tbl_student.applicant_id and tbl_student.id=tbl_attendance_grid.id and tbl_student.id=tbl_student_level.student_id and tbl_attendance_grid.section_id ="
	 * +sectionId+" and tbl_attendance_grid.teacher_id="+instructorId
	 * +" and tbl_attendance_grid.date_taken='"+date+"'"; ResultSet rs =
	 * DBConnection.readFromDatabase(query); while(rs.next()){ Attendance att =
	 * new
	 * Attendance(rs.getString("first_name"),rs.getString("middle_name"),rs.getInt
	 * ("tardi"),rs.getInt("absent"));
	 * System.out.print(att.getAbsent()+" "+att.getTardi
	 * ()+" "+att.getStudentFirstName()+" "+att.getStudentMiddleName()); }
	 * }catch(Exception e){ e.printStackTrace(); }finally{
	 * DBConnection.disconnectDatabase(); }
	 * 
	 * /*Date date = Date.valueOf("2012-10-26");
	 * 
	 * List<Attendance> att= AttendanceGrid.getAllStudentsInSectionAffterTA();
	 * Iterator<Attendance> attItr = att.iterator(); while(attItr.hasNext()){
	 * Attendance a=attItr.next(); System.out.print(a.getTardi());
	 * System.out.print(a.getAbsent());
	 * System.out.print(a.getStudentFirstName());
	 * System.out.print(a.getStudentMiddleName());
	 * //System.out.print(a.getStudentId()); }
	 */

}
