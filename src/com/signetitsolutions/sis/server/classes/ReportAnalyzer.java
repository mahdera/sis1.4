/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @author betse
 * 
 */
public class ReportAnalyzer {
	public static List<Applicant> getClassStudentSummary(int teacherId,
			int sectionId) {
		List<Applicant> list = new ArrayList<Applicant>();
		Applicant applicant = null;
		try {
			String query = "select * from tbl_student_level_t,tbl_student,tbl_applicant_t,tbl_teaches where tbl_student_level_t.section_id="
					+ sectionId
					+ " and tbl_student_level_t.student_id = tbl_student.id and tbl_student.applicant_id = tbl_applicant_t.id and tbl_student_level_t.level_id=tbl_teaches.level_id and "
					+ " tbl_teaches.teacher_id = " + teacherId;
			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				applicant = new Applicant(rSet.getString("id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getDate("date_of_birth"), rSet.getString("sex"),
						rSet.getString("nationality"));
				list.add(applicant);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Applicant> getStudentsBySection(int sectionId) {
		List<Applicant> applicant = new ArrayList<Applicant>();
		Applicant app = null;

		try {
			//String query = "select * from tbl_applicant_t,tbl_student,tbl_student_level_t where tbl_applicant_t.id = tbl_student.applicant_id and tbl_student.applicant_id=tbl_student_level_t.student_id and section_id="
			String query = "select * from tbl_applicant_t,tbl_student_level_t where tbl_applicant_t.id = tbl_student_level_t.student_id and section_id="
					+ sectionId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				app = new Applicant(rSet.getString("tbl_applicant_t.id"),
						rSet.getString("tbl_applicant_t.first_name"),
						rSet.getString("tbl_applicant_t.middle_name"),
						rSet.getString("tbl_applicant_t.last_name"));
				applicant.add(app);
			}

		} catch (Exception e) {

		} finally {

		}
		return applicant;
	}

	public static ParentInformation getParent(String studentId,
			String relationship) {
		ParentInformation parent = null;
		try {
			String query = "select * from tbl_parent,tbl_child_parent,tbl_parent_address where tbl_parent.id=tbl_parent_address.parent_id and tbl_parent.id=tbl_child_parent.parent_id and applicant_id='"
					+ studentId + "' and relation='" + relationship + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			rSet.absolute(1);
			parent = new ParentInformation(rSet.getInt("tbl_parent.id"),
					rSet.getString("first_name"), rSet.getString("last_name"),
					rSet.getString("office_telephone"),
					rSet.getString("mobile_telephone"),
					rSet.getString("email"), rSet.getString("home_telephone"));

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return parent;
	}

	public static int countRows(List<SummaryOfPrimary> sop, int levelId) {
		int counter = 0;
		Iterator<SummaryOfPrimary> sopItr = sop.iterator();
		SummaryOfPrimary s = null;
		while (sopItr.hasNext()) {
			s = sopItr.next();
			if (s.getLevelId() == levelId) {
				counter = counter + 1;
			}
		}
		return counter;
	}

	public static int countRowsOfSCG(List<SpecialCourseGrading> scg,
			int subjectId) {
		int counter = 0;
		Iterator<SpecialCourseGrading> scgItr = scg.iterator();
		SpecialCourseGrading s = null;
		while (scgItr.hasNext()) {
			s = scgItr.next();
			if (s.getSubjectId() == subjectId) {
				counter = counter + 1;
			}
		}
		return counter;
	}

	public static List<Section> getSections(int levelId) {
		String query = "select distinct(section_id) from tbl_student_level_t where level_id="
				+ levelId;
		ResultSet rs = DBConnection.readFromDatabase(query);
		List<Section> sections = new ArrayList<Section>();
		try {
			while (rs.next()) {
				Section sec = new Section();
				sec.setId(rs.getInt("section_id"));
				sections.add(sec);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sections;
	}

	public static int countBoysAndGirls(int sectionId, String gender) {
		int result = 0;
		String query = "select count(sex) sex from tbl_applicant_t,tbl_student,tbl_student_level_t where tbl_applicant_t.id=tbl_student.applicant_id and tbl_student.id = tbl_student_level_t.student_id and section_id="
				+ sectionId + " and sex='" + gender + "'";
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			rSet.absolute(1);
			result = rSet.getInt("sex");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static int countInternationalAndLocal(int sectionId, String type) {
		int result = 0;
		String query = "select count(applicant_type) applicant_type from tbl_applicant_t,tbl_student,tbl_student_level_t where tbl_applicant_t.id=tbl_student.applicant_id and tbl_student.id and tbl_student_level_t.student_id and section_id="
				+ sectionId
				+ " and tbl_applicant_t.applicant_type='"
				+ type
				+ "'";
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			rSet.absolute(1);
			result = rSet.getInt("applicant_type");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static int countStaff(int sectionId, String type, String gender) {
		int result = 0;
		String query = "select count(*) is_staff from tbl_applicant_t,tbl_parent,tbl_child_parent,tbl_student,tbl_student_level_t where tbl_applicant_t.id = tbl_student.applicant_id and tbl_student.id = tbl_student_level_t.student_id and tbl_applicant_t.id=tbl_child_parent.applicant_id and tbl_parent.id = tbl_child_parent.parent_id and section_id ="
				+ sectionId
				+ " and applicant_type='"
				+ type
				+ "' and is_staff=" + 1 + " and relation='" + gender + "'";
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			rSet.absolute(1);
			result = rSet.getInt("is_staff");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static List<SpecialCourseGrading> getStudentSpecialCourseGrading(
			int sectionId, String studentId) {
		List<SpecialCourseGrading> scg = new ArrayList<SpecialCourseGrading>();
		String query = "select * from tbl_applicant_t,tbl_student_level_t,tbl_student,tbl_student_evaluation where tbl_applicant_t.id = tbl_student.applicant_id and tbl_student.id = tbl_student_level_t.student_id and tbl_student.id = tbl_student_evaluation.student_id and tbl_applicant_t.id ='"
				+ studentId
				+ "' and tbl_student_level_t.section_id="
				+ sectionId;
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				SpecialCourseGrading scg1 = new SpecialCourseGrading(
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),
						rSet.getInt("tbl_student_level_t.level_id"),
						rSet.getInt("subject_id"), rSet.getInt("teacher_id"),
						rSet.getString("teachers_comments"),
						rSet.getInt("evaluation_criteria_id"),
						rSet.getString("effort"), rSet.getString("achievement"));
				scg.add(scg1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return scg;
	}
	

	public static List<EndOfYearGradeCard> getGradeCard(String studentId,
			int semesterId, int sectionId) {
		List<EndOfYearGradeCard> eogc = new ArrayList<EndOfYearGradeCard>();
		//String query = "select * from tbl_applicant_t,tbl_student,tbl_grade_card where tbl_applicant_t.id=tbl_student.applicant_id and tbl_student.id = tbl_grade_card.student_id and applicant_id='"
		  String query = "select * from tbl_applicant_t, tbl_grade_card where tbl_applicant_t.id = tbl_grade_card.student_id and tbl_applicant_t.id='"
				+ studentId
				+ "' and semester_id="
				+ semesterId
				+ " and section_id=" + sectionId;
		 System.out.println(" getGradeCard query = "+query);
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				EndOfYearGradeCard eog = new EndOfYearGradeCard(
						rSet.getInt("teacher_id"), rSet.getString("grade"),
						rSet.getString("eff"), rSet.getString("cond"), rSet.getInt("subject_id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"),rSet.getString("date_of_birth"));
				eogc.add(eog);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return eogc;
	}

	public static int getTardi(String studentId, String semesterId) {
		int result = 0;

		String query = "select sum(tardi) as tardi from tbl_attendance_grid where (substring(date_taken,1,4) = (SELECT substring(max(academic_year_name),1,4) FROM tbl_academic_year) or substring(date_taken,1,4) = (SELECT substring(max(academic_year_name),6,4) FROM tbl_academic_year)) " +
				"and tardi = 1 and statuses = 0 and substring(date_taken,6,2) in("+semesterId+") and student_id = '"+studentId+"'";
		
		System.out.println("query ======= "+query);
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			//rSet.absolute(1);
			if (rSet.next()) {
				result = rSet.getInt("tardi");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static int getAbsent(String studentId, String semesterId) {
		int result = 0;
		String query = "select sum(absent) as absent from tbl_attendance_grid where (substring(date_taken,1,4) = (SELECT substring(max(academic_year_name),1,4) FROM tbl_academic_year) or substring(date_taken,1,4) = (SELECT substring(max(academic_year_name),6,4) FROM tbl_academic_year)) " +
				"and absent = 1 and statuses = 0 and substring(date_taken,6,2) in("+semesterId+") and student_id = '"+studentId+"'";
		
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			//rSet.absolute(1);			
			if (rSet.next()) {
				result = rSet.getInt("absent");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static List<Applicant> getApplicantIDs(int sectionId) {
		List<Applicant> applicant = new ArrayList<Applicant>();
		String query = "select * from tbl_applicant_t,tbl_student,tbl_student_level_t where tbl_applicant_t.id = tbl_student.applicant_id and tbl_student.id = tbl_student_level_t.student_id and tbl_student_level_t.section_id="
				+ sectionId;
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				Applicant app = new Applicant(rSet.getString("tbl_student.id"),
						rSet.getString("first_name"),
						rSet.getString("middle_name"),
						rSet.getString("last_name"));
				applicant.add(app);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return applicant;
	}

	public static List<Subject> getSubjectIDs(int sectionId) {
		List<Subject> subject = new ArrayList<Subject>();
		String query = "select distinct(subject_id) id from tbl_grade_card where section_id="
				+ sectionId + " order by subject_id";
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				Subject sub = new Subject(rSet.getInt("id"), " ", " ");
				subject.add(sub);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return subject;
	}

	public static SubjectsTaken getSubjectTakenByStudent(String studentId,
			int sectionId, int subjectId) {
		SubjectsTaken subjectTaken = null;
		String query = "select * from tbl_applicant_t,tbl_student,tbl_grade_card where tbl_applicant_t.id = tbl_student.applicant_id and tbl_student.id = tbl_grade_card.student_id and student_id = '"
				+ studentId
				+ "' and section_id="
				+ sectionId
				+ " and subject_id=" + subjectId;
		try {
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if (rSet.next()) {
				rSet.absolute(1);
				subjectTaken = new SubjectsTaken(rSet.getInt("subject_id"),
						rSet.getString("grade"), rSet.getString("eff"),
						rSet.getString("cond"), rSet.getString("exam"));
			} else {
				subjectTaken = new SubjectsTaken(subjectId, "n/a", "n/a",
						"n/a", "n/a");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return subjectTaken;
	}

}// end class
