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
public class Level {
	private int id;
	private String levelName;
	private int categoryId;

	/**
	 * 
	 */
	public Level() {
		super();
	}

	/**
	 * @param levelName
	 * @param categoryId
	 */
	public Level(String levelName, int categoryId) {
		super();
		this.levelName = levelName;
		this.categoryId = categoryId;
	}

	
	public Level(int id, String levelName) {
		super();
		this.id = id;
		this.levelName = levelName;
	}

	/**
	 * @param id
	 * @param levelName
	 * @param categoryId
	 */
	public Level(int id, String levelName, int categoryId) {
		super();
		this.id = id;
		this.levelName = levelName;
		this.categoryId = categoryId;
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
	 * @return the levelName
	 */
	public String getLevelName() {
		return levelName;
	}

	/**
	 * @param levelName
	 *            the levelName to set
	 */
	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}

	/**
	 * @return the categoryId
	 */
	public int getCategoryId() {
		return categoryId;
	}

	/**
	 * @param categoryId
	 *            the categoryId to set
	 */
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public void addLevel() {
		try {
			String command = "insert into tbl_level values(0,'"
					+ this.getLevelName() + "'," + this.getCategoryId() + ")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateLevel(int id, String levelName, int category) {
		try {
			String command = "update tbl_level set level_name='" + levelName
					+ "',category_id =" + category + " where id=" + id + "";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteLevel(int id) {
		try {
			String command = "delete from tbl_level where id=" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Level> getAllLevels() {
		List<Level> list = new ArrayList<Level>();
		Level level = null;
		try {
			String query = "select * from tbl_level order by level_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				level = new Level(rSet.getInt("id"),
						rSet.getString("level_name"),
						rSet.getInt("category_id"));
				list.add(level);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Level> getSomeLevels(int teacher_id) {
		List<Level> list = new ArrayList<Level>();
		Level level = null;
		try {
			// JOptionPane.showMessageDialog(null, teacher_id);
			String query = "select * from tbl_level l inner join tbl_teaches t "
					+ "on t.level_id=l.id where t.teacher_id=" + teacher_id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				level = new Level(rSet.getInt("id"),
						rSet.getString("level_name"),
						rSet.getInt("category_id"));
				list.add(level);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Level getLevel(int id) {
		Level level = null;
		try {
			String query = "select * from tbl_level where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				level = new Level(rSet.getInt("id"),
						rSet.getString("level_name"),
						rSet.getInt("category_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return level;
	}

	public static int getLevelId(String name) {
		try {
			String sql = "select id from tbl_level where level_name='" + name
					+ "'";
			ResultSet rs = DBConnection.readFromDatabase(sql);
			if (rs.next()) {
				return Integer.parseInt(rs.getString("id"));
			}
			return -1;
		} catch (Exception s) {
			s.printStackTrace();
			return -1;
		}
	}

}// end class
