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
public class Category {
	private int id;
	private String categoryName;
	private int primarySecondaryId;

	/**
	 * 
	 */
	public Category() {
		super();
	}

	/**
	 * @param categoryName
	 * @param primarySecondaryId
	 */
	public Category(String categoryName, int primarySecondaryId) {
		super();
		this.categoryName = categoryName;
		this.primarySecondaryId = primarySecondaryId;
	}

	/**
	 * @param id
	 * @param categoryName
	 * @param primarySecondaryId
	 */
	public Category(int id, String categoryName, int primarySecondaryId) {
		super();
		this.id = id;
		this.categoryName = categoryName;
		this.primarySecondaryId = primarySecondaryId;
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
	 * @return the categoryName
	 */
	public String getCategoryName() {
		return categoryName;
	}

	/**
	 * @param categoryName
	 *            the categoryName to set
	 */
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	/**
	 * @return the primarySecondaryId
	 */
	public int getPrimarySecondaryId() {
		return primarySecondaryId;
	}

	/**
	 * @param primarySecondaryId
	 *            the primarySecondaryId to set
	 */
	public void setPrimarySecondaryId(int primarySecondaryId) {
		this.primarySecondaryId = primarySecondaryId;
	}

	public void addCategory() {
		try {
			String command = "insert into tbl_category values(0,'"
					+ this.getCategoryName() + "',"
					+ this.getPrimarySecondaryId() + ")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateCategory(int categoryId, String categoryName,
			int primarysecondary) {
		try {
			String command = "update tbl_category set category_name = '"
					+ categoryName + "',primary_secondary_id = "
					+ primarysecondary + " where id =" + categoryId + "";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateCategory() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteCategory(int id) {
		try {
			String command = "delete from tbl_category where id =" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Category> getAllCategories() {
		List<Category> list = new ArrayList<Category>();
		Category category = null;
		try {
			String query = "select * from tbl_category order by category_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				category = new Category(rSet.getInt("id"),
						rSet.getString("category_name"),
						rSet.getInt("primary_secondary_id"));
				list.add(category);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Category getCategory(int id) {
		Category category = null;
		try {
			String query = "select * from tbl_category where id=" + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				category = new Category(rSet.getInt("id"),
						rSet.getString("category_name"),
						rSet.getInt("primary_secondary_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return category;
	}
}// end class
