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
public class ChildParent {
	private long parentId;
	private String applicantId;
	private String relation;

	/**
	 * 
	 */
	public ChildParent() {
		super();
	}

	/**
	 * @param parentId
	 * @param applicantId
	 * @param relation
	 */
	public ChildParent(long parentId, String applicantId, String relation) {
		super();
		this.parentId = parentId;
		this.applicantId = applicantId;
		this.relation = relation;
	}

	/**
	 * @return the parentId
	 */
	public long getParentId() {
		return parentId;
	}

	/**
	 * @param parentId
	 *            the parentId to set
	 */
	public void setParentId(long parentId) {
		this.parentId = parentId;
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
	 * @return the relation
	 */
	public String getRelation() {
		return relation;
	}

	/**
	 * @param relation
	 *            the relation to set
	 */
	public void setRelation(String relation) {
		this.relation = relation;
	}

	public void addChildParent() {
		try {
			String command = "insert into tbl_child_parent values("
					+ this.getParentId() + ",'" + this.getApplicantId() + "','"
					+ this.getRelation() + "')";
			
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateChildParent() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteChildParent(long id) {
		try {
			String command = "delete from tbl_child_parent where id =" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ChildParent> getAllChildParents() {
		List<ChildParent> list = new ArrayList<ChildParent>();
		ChildParent childParent = null;
		try {
			String query = "select * from tbl_child_parent";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				childParent = new ChildParent(rSet.getLong("parent_id"),
						rSet.getString("applicant_id"),
						rSet.getString("relation"));
				list.add(childParent);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ChildParent getChildParent(long parentId, long applicantId) {
		ChildParent childParent = null;
		try {
			String query = "select * from tbl_child_parent where parent_id="
					+ parentId + " and applicant_id=" + applicantId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				childParent = new ChildParent(rSet.getLong("parent_id"),
						rSet.getString("applicant_id"),
						rSet.getString("relation"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return childParent;
	}

	public static long getFatherIdOfThisApplicant(String applicantId) {
		long fatherId = 0;

		// JOptionPane.showMessageDialog(null, applicantId);
		try {
			String query = "select parent_id as i from tbl_child_parent where applicant_id = '"
					+ applicantId + "' and relation = 'Father'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if (!rSet.next()) {
				fatherId = -1;
				// JOptionPane.showMessageDialog(null, "set");
			} else {
				do {
					fatherId = rSet.getLong("i");
				} while (rSet.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		// if(applicantId.equalsIgnoreCase("0017N/13")){
		// JOptionPane.showMessageDialog(null, fatherId);
		// }
		return fatherId;
	}

	public static long getMotherIdOfThisApplicant(String applicantId) {
		long motherId = 0;
		try {
			// JOptionPane.showMessageDialog(null, applicantId);
			String query = "select parent_id as i from tbl_child_parent where applicant_id = '"
					+ applicantId + "' and relation = 'Mother'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if (!rSet.next()) {
				motherId = -1;
			} else {
				do {
					// JOptionPane.showMessageDialog(null, rSet.getLong("i"));
					motherId = rSet.getLong("i");
				} while (rSet.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return motherId;
	}
}// end class
