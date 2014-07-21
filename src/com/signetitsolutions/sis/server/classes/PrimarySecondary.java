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
public class PrimarySecondary {
	private int id;
	private String primarySecondaryName;

	/**
	 * 
	 */
	public PrimarySecondary() {
		super();
	}

	/**
	 * @param primarySecondaryName
	 */
	public PrimarySecondary(String primarySecondaryName) {
		super();
		this.primarySecondaryName = primarySecondaryName;
	}

	/**
	 * @param id
	 * @param primarySecondaryName
	 */
	public PrimarySecondary(int id, String primarySecondaryName) {
		super();
		this.id = id;
		this.primarySecondaryName = primarySecondaryName;
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
	 * @return the primarySecondaryName
	 */
	public String getPrimarySecondaryName() {
		return primarySecondaryName;
	}

	/**
	 * @param primarySecondaryName
	 *            the primarySecondaryName to set
	 */
	public void setPrimarySecondaryName(String primarySecondaryName) {
		this.primarySecondaryName = primarySecondaryName;
	}

	public void addPrimarySecondary() {
		try {
			String command = "insert into tbl_primary_secondary values(0,'"
					+ this.getPrimarySecondaryName() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updatePrimarySecondary(int id, String primaryscondaryname) {
		try {
			String command = "update tbl_primary_secondary set primary_secondary_name ='"
					+ primaryscondaryname + "' where id=" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deletePrimarySecondary(int id) {
		try {
			String command = "delete from tbl_primary_secondary where id = "
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PrimarySecondary> getAllPrimarySecondaries() {
		List<PrimarySecondary> list = new ArrayList<PrimarySecondary>();
		PrimarySecondary primarySecondary = null;
		try {
			String query = "select * from tbl_primary_secondary order by primary_secondary_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				primarySecondary = new PrimarySecondary(rSet.getInt("id"),
						rSet.getString("primary_secondary_name"));
				list.add(primarySecondary);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PrimarySecondary getPrimarySecondary(int id) {
		PrimarySecondary primarySecondary = null;
		try {
			String query = "select * from tbl_primary_secondary where id = "
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				primarySecondary = new PrimarySecondary(rSet.getInt("id"),
						rSet.getString("primary_secondary_name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return primarySecondary;
	}
}// end class
