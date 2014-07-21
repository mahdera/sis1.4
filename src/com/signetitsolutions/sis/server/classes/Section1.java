package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.*;

public class Section1 {
	int id;
	int level_id;
	String section_name;
	int class_size;
	int curentdate;

	public Section1(int id, int level_id, String section_name, int class_size) {
		super();
		this.id = id;
		this.level_id = level_id;
		this.section_name = section_name;
		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
		this.class_size = class_size;
	}

	public int getCurentdate() {
		return curentdate;
	}

	public void setCurentdate(int curentdate) {
		this.curentdate = curentdate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLevel_id() {
		return level_id;
	}

	public void setLevel_id(int level_id) {
		this.level_id = level_id;
	}

	public String getSection_name() {
		return section_name;
	}

	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}

	public int getClass_size() {
		return class_size;
	}

	public void setClass_size(int class_size) {
		this.class_size = class_size;
	}

	public static List<Section1> getAllSection() {
		List<Section1> list = new ArrayList<Section1>();
		Section1 h = null;
		try {
			String query = "SELECT * From tbl_section";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Section1(rSet.getInt("id"), rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Section1> getSection(int secid) {
		List<Section1> list = new ArrayList<Section1>();
		Section1 h = null;
		try {
			String query = "SELECT * From tbl_section where id=" + secid;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Section1(rSet.getInt("id"), rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static Section1 getSectionUsingId(int secid) {
		List<Section1> list = new ArrayList<Section1>();
		Section1 h = null;
		try {
			String query = "SELECT * From tbl_section where id=" + secid;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Section1(rSet.getInt("id"), rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));				
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return h;
	}
	
	public static List<Section1> getAllSectionsOfThisLevel(String levelA, String levelB){
		List<Section1> list = new ArrayList<Section1>();
		Section1 h = null;
		try {
			String query = "SELECT tbl_section.* FROM tbl_section,tbl_level where tbl_section.level_id = tbl_level.id and "+
		"level_name = '"+levelA+"' union SELECT tbl_section.* FROM tbl_section,tbl_level where tbl_section.level_id = tbl_level.id and "+
					"level_name = '"+levelB+"'";
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Section1(rSet.getInt("id"), rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<Section1> getAllSectionsOfThisLevel(String levelA, String levelB, String levelC, String levelD){
		List<Section1> list = new ArrayList<Section1>();
		Section1 h = null;
		try {
			String query = "SELECT tbl_section.* FROM tbl_section,tbl_level where tbl_section.level_id = tbl_level.id and "+
		"level_name = '"+levelA+"' union SELECT tbl_section.* FROM tbl_section,tbl_level where tbl_section.level_id = tbl_level.id and "+
					"level_name = '"+levelB+"' union SELECT tbl_section.* FROM tbl_section, tbl_level where tbl_section.level_id = tbl_level.id and "+
		"level_name = '"+levelC+"' union SELECT tbl_section.* FROM tbl_section, tbl_level where tbl_section.level_id = tbl_level.id and "+
					"level_name = '"+levelD+"'";			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Section1(rSet.getInt("id"), rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<Section1> getAllSectionsOfThisLevel(String levelA){
		List<Section1> list = new ArrayList<Section1>();
		Section1 h = null;
		try {
			String query = "SELECT tbl_section.* FROM tbl_section,tbl_level where tbl_section.level_id = tbl_level.id and "+
		"level_name = '"+levelA+"'";
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Section1(rSet.getInt("id"), rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

}//end class
