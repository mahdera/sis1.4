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
public class Section {
	private int id;
	private int levelId;
	private String sectionName;
	private int classSize;

	/**
	 * 
	 */
	public Section() {
		super();
	}

	/**
	 * @param levelId
	 * @param sectionName
	 * @param classSize
	 */
	public Section(int levelId, String sectionName, int classSize) {
		super();
		this.levelId = levelId;
		this.sectionName = sectionName;
		this.classSize = classSize;
	}

	/**
	 * @param id
	 * @param levelId
	 * @param sectionName
	 * @param classSize
	 */
	public Section(int id, int levelId, String sectionName, int classSize) {
		super();
		this.id = id;
		this.levelId = levelId;
		this.sectionName = sectionName;
		this.classSize = classSize;
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

	/**
	 * @return the sectionName
	 */
	public String getSectionName() {
		return sectionName;
	}

	/**
	 * @param sectionName
	 *            the sectionName to set
	 */
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	/**
	 * @return the classSize
	 */
	public int getClassSize() {
		return classSize;
	}

	/**
	 * @param classSize
	 *            the classSize to set
	 */
	public void setClassSize(int classSize) {
		this.classSize = classSize;
	}

	public void addSection() {
		try {
			String command = "insert into tbl_section values(0,"
					+ this.getLevelId() + ",'" + this.getSectionName() + "',"
					+ this.getClassSize() + ")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateSection(long id, int levelId, String sectionName,
			int classSize) {
		try {
			String command = "update tbl_section set level_id = " + levelId
					+ ", section_name='" + sectionName + "', class_size="
					+ classSize + " where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteSection(int id) {
		try {
			String command = "delete from tbl_section where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Section> getAllSections() {
		List<Section> list = new ArrayList<Section>();
		Section section = null;
		try {
			String query = "select * from tbl_section order by section_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				section = new Section(rSet.getInt("id"),
						rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));
				list.add(section);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Section> getAllSectionsForLevel(int levelId) {
		List<Section> list = new ArrayList<Section>();
		Section section = null;
		try {
			String query = "select * from tbl_section where level_id = "
					+ levelId + " order by section_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				section = new Section(rSet.getInt("id"),
						rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));
				list.add(section);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Section getSection(int id) {
		Section section = null;
		try {
			String query = "select * from tbl_section where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				section = new Section(rSet.getInt("id"),
						rSet.getInt("level_id"),
						rSet.getString("section_name"),
						rSet.getInt("class_size"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return section;
	}

	public static int getNumberOfSectionsForLevel(int levelId) {
		int howMany = 0;
		try {
			String query = "select count(*) as c from tbl_section where level_id = "
					+ levelId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				howMany = rSet.getInt("c");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return howMany;
	}

	public static int getClassSizeOfSectionLevel(int levelId) {
		int classSize = 0;
		try {
			String query = "select class_size as c from tbl_section where level_id = "
					+ levelId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				classSize = rSet.getInt("c");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return classSize;
	}
}// end class
