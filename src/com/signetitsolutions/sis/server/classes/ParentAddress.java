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
public class ParentAddress {
	private long id;
	private String officeTelephone;
	private String fax;
	private String officePobox;
	private String email;
	private String homeTelephone;
	private String mobileTelephone;
	private String mobileTelephone2;
	private String homePobox;
	private long parentId;

	/**
	 * 
	 */
	public ParentAddress() {
		super();
	}

	/**
	 * @param officeTelephone
	 * @param fax
	 * @param officePobox
	 * @param email
	 * @param homeTelephone
	 * @param mobileTelephone
	 * @param homePobox
	 * @param parentId
	 */
	public ParentAddress(String officeTelephone, String fax,
			String officePobox, String email, String homeTelephone,
			String mobileTelephone, String homePobox, long parentId) {
		super();
		this.officeTelephone = officeTelephone;
		this.fax = fax;
		this.officePobox = officePobox;
		this.email = email;
		this.homeTelephone = homeTelephone;
		this.mobileTelephone = mobileTelephone;
		this.homePobox = homePobox;
		this.parentId = parentId;
	}

	/**
	 * @param id
	 * @param officeTelephone
	 * @param fax
	 * @param officePobox
	 * @param email
	 * @param homeTelephone
	 * @param mobileTelephone
	 * @param homePobox
	 * @param parentId
	 */
	public ParentAddress(long id, String officeTelephone, String fax,
			String officePobox, String email, String homeTelephone,
			String mobileTelephone, String mobileTelephone2, String homePobox,
			long parentId) {
		super();
		this.id = id;
		this.officeTelephone = officeTelephone;
		this.fax = fax;
		this.officePobox = officePobox;
		this.email = email;
		this.homeTelephone = homeTelephone;
		this.mobileTelephone = mobileTelephone;
		this.mobileTelephone2 = mobileTelephone2;
		this.homePobox = homePobox;
		this.parentId = parentId;
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
	 * @return the officeTelephone
	 */
	public String getOfficeTelephone() {
		return officeTelephone;
	}

	/**
	 * @param officeTelephone
	 *            the officeTelephone to set
	 */
	public void setOfficeTelephone(String officeTelephone) {
		this.officeTelephone = officeTelephone;
	}

	/**
	 * @return the fax
	 */
	public String getFax() {
		return fax;
	}

	/**
	 * @param fax
	 *            the fax to set
	 */
	public void setFax(String fax) {
		this.fax = fax;
	}

	/**
	 * @return the officePobox
	 */
	public String getOfficePobox() {
		return officePobox;
	}

	/**
	 * @param officePobox
	 *            the officePobox to set
	 */
	public void setOfficePobox(String officePobox) {
		this.officePobox = officePobox;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the homeTelephone
	 */
	public String getHomeTelephone() {
		return homeTelephone;
	}

	/**
	 * @param homeTelephone
	 *            the homeTelephone to set
	 */
	public void setHomeTelephone(String homeTelephone) {
		this.homeTelephone = homeTelephone;
	}

	/**
	 * @return the mobileTelephone
	 */
	public String getMobileTelephone() {
		return mobileTelephone;
	}

	/**
	 * @param mobileTelephone
	 *            the mobileTelephone to set
	 */
	public void setMobileTelephone(String mobileTelephone) {
		this.mobileTelephone = mobileTelephone;
	}

	/**
	 * @return the homePobox
	 */
	public String getHomePobox() {
		return homePobox;
	}

	/**
	 * @param homePobox
	 *            the homePobox to set
	 */
	public void setHomePobox(String homePobox) {
		this.homePobox = homePobox;
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

	public String getMobileTelephone2() {
		return mobileTelephone2;
	}

	public void setMobileTelephone2(String mobileTelephone2) {
		this.mobileTelephone2 = mobileTelephone2;
	}

	public void addParentAddress() {
		try {
			String command = "insert into tbl_parent_address values(0,'"
					+ this.getOfficeTelephone() + "','" + this.getFax() + "','"
					+ this.getOfficePobox() + "','" + this.getEmail() + "','"
					+ this.getHomeTelephone() + "','"
					+ this.getMobileTelephone() + "','"					
					+ this.getHomePobox() + "',"
					+ this.getParentId() + ",'"
					+ this.getMobileTelephone2() + "')";
			
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateParentAddress2(int fatherId, String officeTel,
			String mail, String homeTel, String mobile, String mobile2) {
		try {
			String command = "update tbl_parent_address set office_telephone='"
					+ officeTel + "',email='" + mail + "',home_telephone='"
					+ homeTel + "',mobile_telephone='" + mobile
					+ "',mobile_telephone2='" + mobile2 + "' where id="
					+ fatherId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateParentAddress(int fatherId, String officeTel,
			String fax, String pobox, String mail, String homeTel,
			String mobile, String mobile2, String homePobox) {
		try {
			String command = "update tbl_parent_address set office_telephone='"
					+ officeTel + "',fax='" + fax + "',office_pobox='" + pobox
					+ "',email='" + mail + "',home_telephone='" + homeTel
					+ "',mobile_telephone='" + mobile + "',mobile_telephone2='"
					+ mobile2 + "',home_pobox='" + homePobox + "' where id="
					+ fatherId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteParentAddress(long id) {
		try {
			String command = "delete from tbl_parent_address where id = " + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ParentAddress> getAllParentAddresses() {
		List<ParentAddress> list = new ArrayList<ParentAddress>();
		ParentAddress parentAddress = null;
		try {
			String query = "select * from tbl_parent_address";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				parentAddress = new ParentAddress(rSet.getLong("id"),
						rSet.getString("office_telephone"),
						rSet.getString("fax"), rSet.getString("office_pobox"),
						rSet.getString("email"),
						rSet.getString("home_telephone"),
						rSet.getString("mobile_telephone"),
						rSet.getString("mobile_telephone2"),
						rSet.getString("home_pobox"), rSet.getLong("parent_id"));
				list.add(parentAddress);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ParentAddress getParentAddress(long id) {
		ParentAddress parentAddress = null;
		try {
			String query = "select * from tbl_parent_address where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				parentAddress = new ParentAddress(rSet.getLong("id"),
						rSet.getString("office_telephone"),
						rSet.getString("fax"), rSet.getString("office_pobox"),
						rSet.getString("email"),
						rSet.getString("home_telephone"),
						rSet.getString("mobile_telephone"),
						rSet.getString("mobile_telephone2"),
						rSet.getString("home_pobox"), rSet.getLong("parent_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return parentAddress;
	}

	public static ParentAddress getParentAddressForParent(long parentId) {
		ParentAddress parentAddress = null;
		try {
			String query = "select * from tbl_parent_address where parent_id = "
					+ parentId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if (!rSet.next()) {
				parentAddress = new ParentAddress(-1, "", "", "", "", "", "",
						"", "", -1);
			} else {
				do {
					parentAddress = new ParentAddress(rSet.getLong("id"),
							rSet.getString("office_telephone"),
							rSet.getString("fax"),
							rSet.getString("office_pobox"),
							rSet.getString("email"),
							rSet.getString("home_telephone"),
							rSet.getString("mobile_telephone"),
							rSet.getString("mobile_telephone2"),
							rSet.getString("home_pobox"),
							rSet.getLong("parent_id"));
				} while (rSet.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return parentAddress;
	}
}// end class
