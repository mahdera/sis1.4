package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Acadamicyear {
	int id;
	String academic_year_name;

	public Acadamicyear() {
		super();
	}

	public Acadamicyear(int id, String academic_year_name) {
		super();
		this.id = id;
		this.academic_year_name = academic_year_name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAcademic_year_name() {
		return academic_year_name;
	}

	public void setAcademic_year_name(String academic_year_name) {
		this.academic_year_name = academic_year_name;
	}

	public static List<Acadamicyear> accay() {
		List<Acadamicyear> list = new ArrayList<Acadamicyear>();
		Acadamicyear h = null;
		try {
			String query = "SELECT max(id) as age,academic_year_name FROM tbl_academic_year";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Acadamicyear(rSet.getInt("age"),
						rSet.getString("academic_year_name"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	public static String accayString() {
		String  accYear = null;
		Acadamicyear h = null;
		try {
			String query = "SELECT max(academic_year_name) as academic_year FROM db_sis.tbl_academic_year";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				accYear = rSet.getString("academic_year");
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return accYear;
	}
	public static List<Acadamicyear> getaccay(int id) {
		List<Acadamicyear> list = new ArrayList<Acadamicyear>();
		Acadamicyear h = null;
		try {
			String query = "SELECT max(id) as age,academic_year_name FROM tbl_academic_year where id="
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Acadamicyear(rSet.getInt("age"),
						rSet.getString("academic_year_name"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

}
