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
public class AcademicYear {
	private int id;
	private String academicYearName;

	/**
	 * 
	 */
	public AcademicYear() {
		super();
	}

	/**
	 * @param academicYearName
	 */
	public AcademicYear(String academicYearName) {
		super();
		this.academicYearName = academicYearName;
	}

	/**
	 * @param id
	 * @param academicYearName
	 */
	public AcademicYear(int id, String academicYearName) {
		super();
		this.id = id;
		this.academicYearName = academicYearName;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the academicYearName
	 */
	public String getAcademicYearName() {
		return academicYearName;
	}

	/**
	 * @param academicYearName
	 *            the academicYearName to set
	 */
	public void setAcademicYearName(String academicYearName) {
		this.academicYearName = academicYearName;
	}

	public void addAcademicYear() {

	}

	public static List<AcademicYear> getAllAcademicYears() {
		List<AcademicYear> list = new ArrayList<AcademicYear>();
		AcademicYear academicYear = null;
		try {
			String query = "select * from tbl_academic_year order by academic_year_name desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				academicYear = new AcademicYear(rSet.getInt("id"),
						rSet.getString("academic_year_name"));
				list.add(academicYear);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static AcademicYear getAcademicYear(int id) {
		AcademicYear academicYear = null;
		try {
			String query = "select * from tbl_academic_year where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				academicYear = new AcademicYear(rSet.getInt("id"),
						rSet.getString("academic_year_name"));

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return academicYear;
	}
}// end class
