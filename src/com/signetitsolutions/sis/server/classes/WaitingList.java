/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Leki
 * 
 */
public class WaitingList {
	private long id;
	private String applicantId;
	private String dateAddedToWaitingList;

	/**
	 * 
	 */
	public WaitingList() {
		super();
	}

	/**
	 * @param applicantId
	 * @param dateAddedToWaitingList
	 */
	public WaitingList(String applicantId, String dateAddedToWaitingList) {
		super();
		this.applicantId = applicantId;
		this.dateAddedToWaitingList = dateAddedToWaitingList;
	}

	/**
	 * @param id
	 * @param applicantId
	 * @param dateAddedToWaitingList
	 */
	public WaitingList(long id, String applicantId,
			String dateAddedToWaitingList) {
		super();
		this.id = id;
		this.applicantId = applicantId;
		this.dateAddedToWaitingList = dateAddedToWaitingList;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the applicantId
	 */
	public String getApplicantId() {
		return applicantId;
	}

	/**
	 * @param applicantId
	 *            the applicantId to set
	 */
	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}

	/**
	 * @return the dateAddedToWaitingList
	 */
	public String getDateAddedToWaitingList() {
		return dateAddedToWaitingList;
	}

	/**
	 * @param dateAddedToWaitingList
	 *            the dateAddedToWaitingList to set
	 */
	public void setDateAddedToWaitingList(String dateAddedToWaitingList) {
		this.dateAddedToWaitingList = dateAddedToWaitingList;
	}

	public void addWaitingList() {
		try {
			String command = "insert into tbl_waiting_list(applicant_id,date_added_to_waiting_list) "
					+ "values('"
					+ this.getApplicantId()
					+ "','"
					+ this.getDateAddedToWaitingList() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateWaitingList() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteWaitingList(long id) {
		try {
			String command = "delete from tbl_waiting_list where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<WaitingList> getAllWaitingLists() {
		List<WaitingList> list = new ArrayList<WaitingList>();
		WaitingList waitingList = null;
		try {
			String query = "select * from tbl_waiting_list order by date_added_to_waiting_list asc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				waitingList = new WaitingList(rSet.getLong("id"),
						rSet.getString("applicant_id"),
						rSet.getString("dateAddedToWaitingList"));
				list.add(waitingList);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static WaitingList getWaitingList(long id) {
		WaitingList waitingList = null;
		try {
			String query = "select * from tbl_waiting_list where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				waitingList = new WaitingList(rSet.getLong("id"),
						rSet.getString("applicant_id"),
						rSet.getString("dateAddedToWaitingList"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return waitingList;
	}
}// end class
