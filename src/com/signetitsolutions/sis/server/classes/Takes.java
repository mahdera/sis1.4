package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import com.mysql.jdbc.PreparedStatement;

public class Takes {
	private String year;
	private String stud;
	private int level;
	private int term;
	private int subject;

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getStud() {
		return stud;
	}

	public void setStud(String stud) {
		this.stud = stud;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getTerm() {
		return term;
	}

	public void setTerm(int term) {
		this.term = term;
	}

	public int getSubject() {
		return subject;
	}

	public void setSubject(int subject) {
		this.subject = subject;
	}

	public Takes(String year, String stud, int level, int term, int subject) {
		super();
		this.year = year;
		this.stud = stud;
		this.level = level;
		this.term = term;
		this.subject = subject;
	}

	public void saveTakes() {
		try {
			String cmd = "insert into tbl_takes values(?,?,?,?,?)";

			PreparedStatement prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(cmd);

			prs.setString(1, this.getYear());
			prs.setInt(2, this.getLevel());
			prs.setInt(3, this.getTerm());
			prs.setString(4, this.getStud());
			prs.setInt(5, this.getSubject());
			prs.execute();

		} catch (Exception s) {
			s.printStackTrace();
		}
	}

	public static List<Subject> getCoursesGiven(int level, String stud,
			int term, String year) {
		try {
			List<Subject> subj = new ArrayList<Subject>();
			String cmd = "select s.id,s.subject_name,s.description from tbl_takes t inner join tbl_subject s on "
					+ "s.id=t.subject_id "
					+ "where t.academic_year=? and t.level_id=? and t.semester_id=? and t.student_id=?";
			PreparedStatement prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(cmd);
			prs.setString(1, year);
			prs.setInt(2, level);
			prs.setInt(3, term);
			prs.setString(4, stud);
			ResultSet rs = prs.executeQuery();
			while (rs.next()) {
				Subject ss = new Subject(Integer.parseInt(rs.getString("id")),
						rs.getString("subject_name"),
						rs.getString("description"));
				subj.add(ss);
			}
			return subj;
		} catch (Exception s) {
			s.printStackTrace();
			return null;
		}
	}

	public static void drop(String stud, String year, int level, int term,
			int subj) {
		try {
			// JOptionPane.showMessageDialog(null,stud+" "+ year+" "+ level+" "+
			// term+" "+ subj);
			String cmd = "delete from tbl_takes where academic_year=? and level_id=? and semester_id=? and student_id=? and subject_id=?";
			PreparedStatement prs = (PreparedStatement) DBConnection
					.getDatabaseConnection().prepareStatement(cmd);
			prs.setString(1, year);
			prs.setInt(2, level);
			prs.setInt(3, term);
			prs.setString(4, stud);
			prs.setInt(5, subj);
			prs.executeUpdate();
		} catch (Exception s) {
			s.printStackTrace();
		}
	}
}
