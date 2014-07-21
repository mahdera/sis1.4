/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Solo
 * 
 */
public class Supervisors {
	int id;
	private String type;
	private String supervisorId;
	private String supervisorName;
	private String sectionId;
	private String sectionName;
	private String levelfromId;
	private String levelfromName;
	private String leveltoId;
	private String leveltoName;
	private String status;
	private String date;

	public Supervisors() {
		super();
	}

	public Supervisors(String type, String supervisorId, String sectionId,
			String levelfromId, String leveltoId, String status, String date) {
		super();
		this.type = type;
		this.supervisorId = supervisorId;
		this.sectionId = sectionId;
		this.levelfromId = levelfromId;
		this.leveltoId = leveltoId;
		this.status = status;
		this.date = date;
	}

	public Supervisors(int id, String type, String supervisorId,
			String sectionId, String levelfromId, String leveltoId,
			String status, String date) {
		super();
		this.id = id;
		this.type = type;
		this.supervisorId = supervisorId;
		this.sectionId = sectionId;
		this.levelfromId = levelfromId;
		this.leveltoId = leveltoId;
		this.status = status;
		this.date = date;
	}

	public Supervisors(int id, String type, String supervisorId,
			String supervisorName, String sectionId, String sectionName,
			String levelfromId, String levelfromName, String leveltoId,
			String leveltoName, String status, String date) {
		super();
		this.id = id;
		this.type = type;
		this.supervisorId = supervisorId;
		this.supervisorName = supervisorName;
		this.sectionId = sectionId;
		this.sectionName = sectionName;
		this.levelfromId = levelfromId;
		this.levelfromName = levelfromName;
		this.leveltoId = leveltoId;
		this.leveltoName = leveltoName;
		this.status = status;
		this.date = date;
	}

	// //////////////////////////

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSupervisorId() {
		return supervisorId;
	}

	public void setSupervisorId(String supervisorId) {
		this.supervisorId = supervisorId;
	}

	public String getSupervisorName() {
		return supervisorName;
	}

	public void setSupervisorName(String supervisorName) {
		this.supervisorName = supervisorName;
	}

	public String getSectionId() {
		return sectionId;
	}

	public void setSectionId(String sectionId) {
		this.sectionId = sectionId;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getLevelfromId() {
		return levelfromId;
	}

	public void setLevelfromId(String levelfromId) {
		this.levelfromId = levelfromId;
	}

	public String getLevelfromName() {
		return levelfromName;
	}

	public void setLevelfromName(String levelfromName) {
		this.levelfromName = levelfromName;
	}

	public String getLeveltoId() {
		return leveltoId;
	}

	public void setLeveltoId(String leveltoId) {
		this.leveltoId = leveltoId;
	}

	public String getLeveltoName() {
		return leveltoName;
	}

	public void setLeveltoName(String leveltoName) {
		this.leveltoName = leveltoName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void addSupervisor() {
		try {
			String command;
			if (this.getType().equalsIgnoreCase("teacher")) {
				command = "insert into tbl_class_supervision(type, supervisor_id, from_level_or_section, status, date)"
						+ " values('"
						+ this.getType()
						+ "','"
						+ this.getSupervisorId()
						+ "','"
						+ this.getSectionId()
						+ "','"
						+ this.getStatus()
						+ "','"
						+ this.getDate()
						+ "')";
			} else {
				command = "insert into tbl_class_supervision(type, supervisor_id, from_level_or_section,to_level, status, date)"
						+ " values('"
						+ this.getType()
						+ "','"
						+ this.getSupervisorId()
						+ "','"
						+ this.getLevelfromId()
						+ "','"
						+ this.getLeveltoId()
						+ "','"
						+ this.getStatus()
						+ "','"
						+ this.getDate()
						+ "')";
			}

			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updateSupervisor() {
		String command;
		try {
			if (this.getType().equalsIgnoreCase("teacher")) {
				command = "update tbl_class_supervision set type = '"
						+ this.getType() + "', supervisor_id='"
						+ this.getSupervisorId() + "',from_level_or_section='"
						+ this.getSectionId() + "', status='"
						+ this.getStatus() + "',date='" + this.getDate()
						+ "' where id=" + this.getId();
			} else {
				command = "update tbl_class_supervision set type = '"
						+ this.getType() + "',supervisor_id='"
						+ this.getSupervisorId() + "',from_level_or_section='"
						+ this.getLevelfromId() + "',to_level='"
						+ this.getLeveltoId() + "', status='"
						+ this.getStatus() + "',date='" + this.getDate()
						+ "' where id=" + this.getId();
			}
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteSupervisor(int id) {
		try {
			String command = "delete from tbl_class_supervision where id ="
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Supervisors> getAllSupervisorForSupervisor() {
		List<Supervisors> list = new ArrayList<Supervisors>();
		Supervisors supervisor = null;
		try {
			String query = "select distinct s.id, s.supervisor_id, t.first_name, t.middle_name,t.last_name, c.id as section_id, c.section_name, s.from_level_or_section as from_level_id,"
					+ "(select l.level_name from db_sis.tbl_level l where s.from_level_or_section=l.id) as fromlevel,"
					+ "s.to_level as to_level_id,"
					+ "(select l.level_name from db_sis.tbl_level l where s.to_level=l.id) as tolevel,"
					+ "s.status,s.date,s.type from db_sis.tbl_class_supervision s, db_sis.tbl_user t, db_sis.tbl_level l, db_sis.tbl_section c "
					+ "where s.supervisor_id = t.id  and s.from_level_or_section=c.id";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				if (rSet.getString("type").equalsIgnoreCase("teacher")) {
					supervisor = new Supervisors(rSet.getInt("id"),
							rSet.getString("type"),
							rSet.getString("supervisor_id"),
							rSet.getString("first_name") + " "
									+ rSet.getString("middle_name") + " "
									+ rSet.getString("last_name"),
							rSet.getString("section_id"),
							rSet.getString("section_name"), "", "", "", "",
							rSet.getString("status"), rSet.getString("date"));
				} else {
					supervisor = new Supervisors(rSet.getInt("id"),
							rSet.getString("type"),
							rSet.getString("supervisor_id"),
							rSet.getString("first_name") + " "
									+ rSet.getString("middle_name") + " "
									+ rSet.getString("last_name"), "", "",
							rSet.getString("from_level_id"),
							rSet.getString("fromlevel"),
							rSet.getString("to_level_id"),
							rSet.getString("tolevel"),
							rSet.getString("status"), rSet.getString("date"));
				}
				list.add(supervisor);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	public static List<Supervisors> getAllSupervisorAndTeacher() {
		List<Supervisors> list = new ArrayList<Supervisors>();
		Supervisors supervisor = null;
		try {
			String query ="select t.id, t.first_name, t.middle_name, t.last_name, s.type " +
					"from db_sis.tbl_teacher t, db_sis.tbl_class_supervision s " +
					"where (t.id = s.supervisor_id and   s.status='active') " +
					"union select t.id, t.first_name, t.middle_name, t.last_name ,'teacher' " +
					"from db_sis.tbl_teacher t, db_sis.tbl_class_supervision s " +
					"where t.id not in (select supervisor_id from db_sis.tbl_class_supervision) ";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				
					supervisor = new Supervisors(rSet.getInt("id"),
							rSet.getString("type"),
							rSet.getString("id"),
							rSet.getString("first_name") + " "
									+ rSet.getString("middle_name") + " "
									+ rSet.getString("last_name"),
							"", "", "", "", "", "",	"", "");
		
				list.add(supervisor);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	public static List<Supervisors> getAllSupervisor() {
		List<Supervisors> list = new ArrayList<Supervisors>();
		Supervisors supervisor = null;
		try {
			String query = "select distinct s.id, s.supervisor_id, t.first_name, t.middle_name,t.last_name, c.id as section_id, c.section_name, s.from_level_or_section as from_level_id,"
					+ "(select l.level_name from db_sis.tbl_level l where s.from_level_or_section=l.id) as fromlevel,"
					+ "s.to_level as to_level_id,"
					+ "(select l.level_name from db_sis.tbl_level l where s.to_level=l.id) as tolevel,"
					+ "s.status,s.date,s.type from db_sis.tbl_class_supervision s, db_sis.tbl_user t, db_sis.tbl_level l, db_sis.tbl_section c "
					+ "where s.supervisor_id = t.id  and s.from_level_or_section=c.id and s.status='active'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				if (rSet.getString("type").equalsIgnoreCase("teacher")) {
					supervisor = new Supervisors(rSet.getInt("id"),
							rSet.getString("type"),
							rSet.getString("supervisor_id"),
							rSet.getString("first_name") + " "	+ rSet.getString("middle_name") + " " + rSet.getString("last_name"),
							rSet.getString("section_id"),
							rSet.getString("section_name"), "", "", "", "",
							rSet.getString("status"), rSet.getString("date"));
				} else {
					supervisor = new Supervisors(rSet.getInt("id"),
							rSet.getString("type"),
							rSet.getString("supervisor_id"),
							rSet.getString("first_name") + " " + rSet.getString("middle_name") + " " + rSet.getString("last_name"), "", "",
							rSet.getString("from_level_id"),
							rSet.getString("fromlevel"),
							rSet.getString("to_level_id"),
							rSet.getString("tolevel"),
							rSet.getString("status"), rSet.getString("date"));
				}
				list.add(supervisor);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Supervisors getSupervisor(int id) {
		Supervisors supervisor = null;
		try {
			String query = "select distinct s.id, s.supervisor_id, t.first_name, t.middle_name,t.last_name, c.id as section_id, c.section_name, s.from_level_or_section as from_level_id,"
					+ "(select l.level_name from db_sis.tbl_level l where s.from_level_or_section=l.id) as fromlevel,"
					+ "s.to_level as to_level_id,"
					+ "(select l.level_name from db_sis.tbl_level l where s.to_level=l.id) as tolevel,"
					+ "s.status,s.date,s.type from db_sis.tbl_class_supervision s, db_sis.tbl_user t, db_sis.tbl_level l, db_sis.tbl_section c "
					+ "where s.supervisor_id = t.id  and s.from_level_or_section=c.id and s.status='active' and s.supervisor_id="
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				if (rSet.getString("type").equalsIgnoreCase("teacher")) {
					supervisor = new Supervisors(rSet.getInt("id"),
							rSet.getString("type"),
							rSet.getString("supervisor_id"),
							rSet.getString("first_name") + " "
									+ rSet.getString("middle_name") + " "
									+ rSet.getString("last_name"),
							rSet.getString("section_id"),
							rSet.getString("section_name"), "", "", "", "",
							rSet.getString("status"), rSet.getString("date"));
				} else {
					supervisor = new Supervisors(rSet.getInt("id"),
							rSet.getString("type"),
							rSet.getString("supervisor_id"),
							rSet.getString("first_name") + " "
									+ rSet.getString("middle_name") + " "
									+ rSet.getString("last_name"), "", "",
							rSet.getString("from_level_id"),
							rSet.getString("fromlevel"),
							rSet.getString("to_level_id"),
							rSet.getString("tolevel"),
							rSet.getString("status"), rSet.getString("date"));
				}
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return supervisor;
	}

}
