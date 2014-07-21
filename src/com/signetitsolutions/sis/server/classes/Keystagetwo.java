package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Keystagetwo {
	private int id;
	private String sid;
	private String la;
	private int le;
	private String ln;
	private String numa;
	private int nume;
	private String numn;

	private String ipca;
	private int ipce;
	private String ipcn;
	private String sca;
	private int sce;
	private String scn;
	private String gc;
	private int currentdate;

	public Keystagetwo(int id, String sid, String la, int le, String ln,
			String numa, int nume, String numn, String ipca, int ipce,
			String ipcn, String sca, int sce, String scn, String gc) {
		super();
		this.id = id;
		this.sid = sid;
		this.la = la;
		this.le = le;
		this.ln = ln;
		this.numa = numa;
		this.nume = nume;
		this.numn = numn;
		this.ipca = ipca;
		this.ipce = ipce;
		this.ipcn = ipcn;
		this.sca = sca;
		this.sce = sce;
		this.scn = scn;
		this.gc = gc;
		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.currentdate = dd;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getLa() {
		return la;
	}

	public void setLa(String la) {
		this.la = la;
	}

	public int getLe() {
		return le;
	}

	public void setLe(int le) {
		this.le = le;
	}

	public String getLn() {
		return ln;
	}

	public void setLn(String ln) {
		this.ln = ln;
	}

	public String getNuma() {
		return numa;
	}

	public void setNuma(String numa) {
		this.numa = numa;
	}

	public int getNume() {
		return nume;
	}

	public void setNume(int nume) {
		this.nume = nume;
	}

	public String getNumn() {
		return numn;
	}

	public void setNumn(String numn) {
		this.numn = numn;
	}

	public String getIpca() {
		return ipca;
	}

	public void setIpca(String ipca) {
		this.ipca = ipca;
	}

	public int getIpce() {
		return ipce;
	}

	public void setIpce(int ipce) {
		this.ipce = ipce;
	}

	public String getIpcn() {
		return ipcn;
	}

	public void setIpcn(String ipcn) {
		this.ipcn = ipcn;
	}

	public String getSca() {
		return sca;
	}

	public void setSca(String sca) {
		this.sca = sca;
	}

	public int getSce() {
		return sce;
	}

	public void setSce(int sce) {
		this.sce = sce;
	}

	public String getScn() {
		return scn;
	}

	public void setScn(String scn) {
		this.scn = scn;
	}

	public String getGc() {
		return gc;
	}

	public void setGc(String gc) {
		this.gc = gc;
	}

	public int getCurrentdate() {
		return currentdate;
	}

	public void setCurrentdate(int currentdate) {
		this.currentdate = currentdate;
	}

	public void addkeystagetwoevaluation() {
		try {
			String command = "insert into tbl_keystagetwo_midyear_evaluation values(0,"
					+ this.getSid()
					+ ",'"
					+ this.getLa()
					+ "',"
					+ this.getLe()
					+ ",'"
					+ this.getLn()
					+ "','"
					+ this.getNuma()
					+ "',"
					+ this.getNume()
					+ ",'"
					+ this.getNumn()
					+ "','"
					+ this.getIpca()
					+ "',"
					+ this.getIpce()
					+ ",'"
					+ this.getIpcn()
					+ "','"
					+ this.getSca()
					+ "',"
					+ this.getSce()
					+ ",'"
					+ this.getScn()
					+ "','"
					+ this.getGc() + "','" + this.getCurrentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Keystagetwo> getKeysatgetwo(String sid) {
		List<Keystagetwo> list = new ArrayList<Keystagetwo>();
		Keystagetwo h = null;
		try {
			String query = "SELECT * From tbl_keystagetwo_midyear_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Keystagetwo(rSet.getInt("id"), rSet.getString("sid"),
						rSet.getString("litteracy_achievement"),
						rSet.getInt("litteracy_effort"),
						rSet.getString("litteracy_narration"),
						rSet.getString("numeracy_achievement"),
						rSet.getInt("numeracy_effort"),
						rSet.getString("numeracy_narration"),
						rSet.getString("ipc_achievement"),
						rSet.getInt("ipc_effort"),
						rSet.getString("ipc_narration"),
						rSet.getString("science_achievement"),
						rSet.getInt("science_effort"),
						rSet.getString("science_narration"),
						rSet.getString("general_comment"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public void updateNarration() {
		try {
			String command = "update tbl_keystagetwo_midyear_evaluation set litteracy_achievement='"
					+ this.getLa()
					+ "',litteracy_effort="
					+ this.getLe()
					+ ",litteracy_narration='"
					+ this.getLn()
					+ "',numeracy_achievement='"
					+ this.getNuma()
					+ "',numeracy_effort="
					+ this.getNume()
					+ ",numeracy_narration='"
					+ this.getNumn()
					+ "',ipc_achievement='"
					+ this.getIpca()
					+ "',ipc_effort="
					+ this.getIpce()
					+ ",ipc_narration='"
					+ this.getIpcn()
					+ "',science_achievement='"
					+ this.getSca()
					+ "',science_effort="
					+ this.getSce()
					+ ",science_narration='"
					+ this.getScn()
					+ "',general_comment='"
					+ this.getGc()
					+ "' where sid = "
					+ this.getSid();
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

}
