/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import com.mysql.jdbc.PreparedStatement;

/**
 * @author Leki
 * 
 */
public class Parent {
	private long id;
	private String firstName;
	private String middleName;
	private String lastName;
	private String passportNumber;
	private String countryOfIssue;
	private String religion;
	private String occupation;
	private String placeOfWork;
	private String nameOfOrganization;
	private boolean isStaff;

	private String email;
	private String home;
	private String office;
	private String mobile;
	private String mobile2;

	/**
	 * 
	 */
	public Parent() {
		super();
	}

	/**
	 * @param firstName
	 * @param lastName
	 * @param passportNumber
	 * @param countryOfIssue
	 * @param religion
	 * @param occupation
	 * @param placeOfWork
	 * @param nameOfOrganization
	 * @param isStaff
	 */
	public Parent(String firstName, String middleName, String lastName,
			String passportNumber, String countryOfIssue, String religion,
			String occupation, String placeOfWork, String nameOfOrganization,
			boolean isStaff) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.passportNumber = passportNumber;
		this.countryOfIssue = countryOfIssue;
		this.religion = religion;
		this.occupation = occupation;
		this.placeOfWork = placeOfWork;
		this.nameOfOrganization = nameOfOrganization;
		this.isStaff = isStaff;
	}

	/**
	 * @param id
	 * @param firstName
	 * @param lastName
	 * @param passportNumber
	 * @param countryOfIssue
	 * @param religion
	 * @param occupation
	 * @param placeOfWork
	 * @param nameOfOrganization
	 * @param isStaff
	 */
	public Parent(long id, String firstName, String middleName,
			String lastName, String passportNumber, String countryOfIssue,
			String religion, String occupation, String placeOfWork,
			String nameOfOrganization, boolean isStaff) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.passportNumber = passportNumber;
		this.countryOfIssue = countryOfIssue;
		this.religion = religion;
		this.occupation = occupation;
		this.placeOfWork = placeOfWork;
		this.nameOfOrganization = nameOfOrganization;
		this.isStaff = isStaff;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public String getOffice() {
		return office;
	}

	public void setOffice(String office) {
		this.office = office;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName
	 *            the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName
	 *            the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the passportNumber
	 */
	public String getPassportNumber() {
		return passportNumber;
	}

	/**
	 * @param passportNumber
	 *            the passportNumber to set
	 */
	public void setPassportNumber(String passportNumber) {
		this.passportNumber = passportNumber;
	}

	/**
	 * @return the countryOfIssue
	 */
	public String getCountryOfIssue() {
		return countryOfIssue;
	}

	/**
	 * @param countryOfIssue
	 *            the countryOfIssue to set
	 */
	public void setCountryOfIssue(String countryOfIssue) {
		this.countryOfIssue = countryOfIssue;
	}

	/**
	 * @return the religion
	 */
	public String getReligion() {
		return religion;
	}

	/**
	 * @param religion
	 *            the religion to set
	 */
	public void setReligion(String religion) {
		this.religion = religion;
	}

	/**
	 * @return the occupation
	 */
	public String getOccupation() {
		return occupation;
	}

	/**
	 * @param occupation
	 *            the occupation to set
	 */
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	/**
	 * @return the placeOfWork
	 */
	public String getPlaceOfWork() {
		return placeOfWork;
	}

	/**
	 * @param placeOfWork
	 *            the placeOfWork to set
	 */
	public void setPlaceOfWork(String placeOfWork) {
		this.placeOfWork = placeOfWork;
	}

	/**
	 * @return the nameOfOrganization
	 */
	public String getNameOfOrganization() {
		return nameOfOrganization;
	}

	/**
	 * @param nameOfOrganization
	 *            the nameOfOrganization to set
	 */
	public void setNameOfOrganization(String nameOfOrganization) {
		this.nameOfOrganization = nameOfOrganization;
	}

	/**
	 * @return the isStaff
	 */
	public boolean isStaff() {
		return isStaff;
	}

	/**
	 * @param isStaff
	 *            the isStaff to set
	 */
	public void setStaff(boolean isStaff) {
		this.isStaff = isStaff;
	}

	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}

	/**
	 * @param middleName
	 *            the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getMobile2() {
		return mobile2;
	}

	public void setMobile2(String mobile2) {
		this.mobile2 = mobile2;
	}

	public void addParent() {
		try {
			String command = "insert into tbl_parent(first_name,last_name,passport_number,"
					+ "country_of_issue,religion,occupation,place_of_work,name_of_organization,is_staff) "
					+ "values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement p = (PreparedStatement) DBConnection.getDatabaseConnection().prepareStatement(command);
			
			p.setString(1,this.getFirstName());
			p.setString(2, this.getLastName());
			p.setString(3, this.getPassportNumber());
			p.setString(4, this.getCountryOfIssue());
			p.setString(5, this.getReligion());
			p.setString(6, this.getOccupation());
			p.setString(7, this.getPlaceOfWork());
			p.setString(8, this.getNameOfOrganization());
			p.setInt(9, (this.isStaff() == false ? 0 : 1));
			
			p.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public Parent(String mail, String mobile, String mobile2, String office,
			String home) {
		this.email = mail;
		this.home = home;
		this.office = office;
		this.mobile = mobile;
		this.mobile2 = mobile2;
	}

	public static Parent getParentMail(long id) {
		Parent p = null;
		try {
			String sql = "select email,mobile_telephone,mobile_telephone2,office_telephone,home_telephone from tbl_parent_address where parent_id="
					+ id;
			ResultSet rs = DBConnection.readFromDatabase(sql);

			if (rs.next()) {
				// JOptionPane.showMessageDialog(null, id);
				p = new Parent(rs.getString("email"),
						rs.getString("mobile_telephone"),
						rs.getString("mobile_telephone2"),
						rs.getString("office_telephone"),
						rs.getString("home_telephone"));
			} else {
				p = new Parent("--", "--", "--", "--", "--");
			}
			return p;
		} catch (Exception s) {
			s.printStackTrace();
			return p;
		}
	}

	public static void updateParent2(int fatherId, String occupation) {
		try {
			// String command
			// ="update tbl_parent set first_name='"+firstName+"', middle_name='"+middleName+"', last_name='"+lastName+"',passport_number='"+passportNumber+"',country_of_issue='"+countryOfIssue+"',occupation ='"+occupation+"',place_of_work='"+placeOfWork+"',name_of_organization='"+palceOfOrg+"',is_staff="+isStaff+" where id="+fatherId;
			String command = "update tbl_parent set " + "occupation ='"
					+ occupation + "' where id=" + fatherId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateParent(int fatherId, String firstName,
			String middleName, String lastName, String passportNumber,
			String countryOfIssue, String religion, String occupation,
			String placeOfWork, String palceOfOrg, int isStaff) {
		try {
			// String command
			// ="update tbl_parent set first_name='"+firstName+"', middle_name='"+middleName+"', last_name='"+lastName+"',passport_number='"+passportNumber+"',country_of_issue='"+countryOfIssue+"',occupation ='"+occupation+"',place_of_work='"+placeOfWork+"',name_of_organization='"+palceOfOrg+"',is_staff="+isStaff+" where id="+fatherId;
			String command = "update tbl_parent set first_name=?, last_name=?, passport_number=?, " +
					"country_of_issue=?, occupation =?, place_of_work=?, name_of_organization=?, is_staff=? where id=?";		
			PreparedStatement p = (PreparedStatement) DBConnection.getDatabaseConnection().prepareStatement(command);
			
			p.setString(1,firstName);
			p.setString(2, lastName);
			p.setString(3, passportNumber);
			p.setString(4, countryOfIssue);
			p.setString(5, occupation);
			p.setString(6, placeOfWork);
			p.setString(7, palceOfOrg);
			p.setInt(8, isStaff);
			p.setInt(9, fatherId);
			
			p.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteParent(long id) {
		try {
			String command = "delete from tbl_parent where id=" + id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Parent> getAllParents() {
		List<Parent> list = new ArrayList<Parent>();
		Parent parent = null;
		try {
			String query = "select * from tbl_parent order by first_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				parent = new Parent(rSet.getLong("id"),
						rSet.getString("first_name"), "",
						rSet.getString("last_name"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("religion"),
						rSet.getString("occupation"),
						rSet.getString("place_of_work"),
						rSet.getString("name_of_organization"),
						rSet.getBoolean("is_staff"));
				list.add(parent);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Parent getParent(long id) {
		Parent parent = null;
		try {
			String query = "select * from tbl_parent where id = " + id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			if (!rSet.next()) {
				parent = new Parent(-1, "", "", "", "", "", "", "", "", "",
						false);
			} else {
				do {
					parent = new Parent(rSet.getLong("id"),
							rSet.getString("first_name"), " ",
							rSet.getString("last_name"),
							rSet.getString("passport_number"),
							rSet.getString("country_of_issue"),
							rSet.getString("religion"),
							rSet.getString("occupation"),
							rSet.getString("place_of_work"),
							rSet.getString("name_of_organization"),
							rSet.getBoolean("is_staff"));
				} while (rSet.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return parent;
	}

	public static Parent getThisParentUsingPassportNumberAndFullName(
			String passportNumber, String firstName, String middleName,
			String lastName) {
		Parent parent = null;
		try {
			String query = "select * from tbl_parent where passport_number = '"
					+ passportNumber + "' and first_name='" + firstName
					+ "' and last_name='" + lastName + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				parent = new Parent(rSet.getLong("id"),
						rSet.getString("first_name"), "--",
						rSet.getString("last_name"),
						rSet.getString("passport_number"),
						rSet.getString("country_of_issue"),
						rSet.getString("religion"),
						rSet.getString("occupation"),
						rSet.getString("place_of_work"),
						rSet.getString("name_of_organization"),
						rSet.getBoolean("is_staff"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return parent;
	}

	public static boolean thisPassportNumberExistsAndFullName(
			String passportNumber, String firstName, String middleName,
			String lastName) {
		boolean exists = false;
		int c = 0;
		try {
			String query = "select count(*) as q from tbl_parent where passport_number = '"
					+ passportNumber
					+ "' and first_name = '"
					+ firstName
					+ "' and last_name='" + lastName + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				c = rSet.getInt("q");
				if (c != 0)
					exists = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return exists;
	}
}// end class
