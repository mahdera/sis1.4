package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Keysatgeone {
	private int id;
	private String sid;
	private int lre;
	private String lrn;
	private int lwe;
	private String lwn;
	private int lse;
	private String lsn;
	private int nume;
	private String numn;
	private int sce;
	private String scn;
	private int hume;
	private String humn;
	private int aade;
	private String aadn;
	private String tgc;
	private int curentdate;

	public Keysatgeone(int id, String sid, int lre, String lrn, int lwe,
			String lwn, int lse, String lsn, int nume, String numn, int sce,
			String scn, int hume, String humn, int aade, String aadn, String tgc) {
		super();
		this.id = id;
		this.sid = sid;
		this.lre = lre;
		this.lrn = lrn;
		this.lwe = lwe;
		this.lwn = lwn;
		this.lse = lse;
		this.lsn = lsn;
		this.nume = nume;
		this.numn = numn;
		this.sce = sce;
		this.scn = scn;
		this.hume = hume;
		this.humn = humn;
		this.aade = aade;
		this.aadn = aadn;
		this.tgc = tgc;
		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
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

	public int getLre() {
		return lre;
	}

	public void setLre(int lre) {
		this.lre = lre;
	}

	public String getLrn() {
		return lrn;
	}

	public void setLrn(String lrn) {
		this.lrn = lrn;
	}

	public int getLwe() {
		return lwe;
	}

	public void setLwe(int lwe) {
		this.lwe = lwe;
	}

	public String getLwn() {
		return lwn;
	}

	public void setLwn(String lwn) {
		this.lwn = lwn;
	}

	public int getLse() {
		return lse;
	}

	public void setLse(int lse) {
		this.lse = lse;
	}

	public String getLsn() {
		return lsn;
	}

	public void setLsn(String lsn) {
		this.lsn = lsn;
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

	public int getHume() {
		return hume;
	}

	public void setHume(int hume) {
		this.hume = hume;
	}

	public String getHumn() {
		return humn;
	}

	public void setHumn(String humn) {
		this.humn = humn;
	}

	public int getAade() {
		return aade;
	}

	public void setAade(int aade) {
		this.aade = aade;
	}

	public String getAadn() {
		return aadn;
	}

	public void setAadn(String aadn) {
		this.aadn = aadn;
	}

	public String getTgc() {
		return tgc;
	}

	public void setTgc(String tgc) {
		this.tgc = tgc;
	}

	public int getCurentdate() {
		return curentdate;
	}

	public void setCurentdate(int curentdate) {
		this.curentdate = curentdate;
	}

	public void addkeystageonemidyear() {
		try {
			String command = "Insert into tbl_keystageone_midyear_evaluation values(0,"
					+ this.getSid()
					+ ","
					+ this.getLre()
					+ ",'"
					+ this.getLrn()
					+ "',"
					+ this.getLwe()
					+ ",'"
					+ this.getLwn()
					+ "',"
					+ this.getLse()
					+ ",'"
					+ this.getLsn()
					+ "',"
					+ this.getNume()
					+ ",'"
					+ this.getNumn()
					+ "',"
					+ this.getSce()
					+ ",'"
					+ this.getScn()
					+ "',"
					+ this.getHume()
					+ ",'"
					+ this.getHumn()
					+ "',"
					+ this.getAade()
					+ ",'"
					+ this.getAadn()
					+ "','"
					+ this.getTgc()
					+ "','"
					+ this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}

	}

	public static List<Keysatgeone> getKeysatgeone(String sid) {
		List<Keysatgeone> list = new ArrayList<Keysatgeone>();
		Keysatgeone h = null;
		try {
			String query = "SELECT * From tbl_keystageone_midyear_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Keysatgeone(
						rSet.getInt("id"),
						rSet.getString("sid"),
						rSet.getInt("litteracy_reading"),
						rSet.getString("litteracy_reading_narration"),
						rSet.getInt("litteracy_writing"),
						rSet.getString("litteracy_writing_narration"),
						rSet.getInt("litteracy_speaking_listening"),
						rSet.getString("litteracy_speaking_listening_narration"),
						rSet.getInt("numeracy"), rSet
								.getString("numeracy_narration"), rSet
								.getInt("ipc_science"), rSet
								.getString("ipc_science_narration"), rSet
								.getInt("ipc_humanities"), rSet
								.getString("ipc_humanities_narration"), rSet
								.getInt("ipc_art_design"), rSet
								.getString("ipc_art_design_narration"), rSet
								.getString("general_comment"));
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
			String command = "update tbl_keystageone_midyear_evaluation set litteracy_reading="
					+ this.getLre()
					+ ",litteracy_reading_narration='"
					+ this.getLrn()
					+ "',litteracy_writing="
					+ this.getLwe()
					+ ",litteracy_writing_narration='"
					+ this.getLwn()
					+ "',litteracy_speaking_listening="
					+ this.getSce()
					+ ",litteracy_speaking_listening_narration='"
					+ this.getLsn()
					+ "',numeracy="
					+ this.getNume()
					+ ",numeracy_narration='"
					+ this.getNumn()
					+ "',ipc_science="
					+ this.getSce()
					+ ",ipc_science_narration='"
					+ this.getScn()
					+ "',ipc_humanities="
					+ this.getHume()
					+ ",ipc_humanities_narration='"
					+ this.getHumn()
					+ "',ipc_art_design="
					+ this.getAade()
					+ ",ipc_art_design_narration='"
					+ this.getAadn()
					+ "',general_comment='"
					+ this.getTgc()
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