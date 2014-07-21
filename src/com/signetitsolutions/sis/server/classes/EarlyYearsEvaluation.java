/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class EarlyYearsEvaluation {
	private int id;// column of the table
	private String sid;
	private String narration;
	private int curentdate;
	private String psed;
	private String cl;
	private String pd;
	private String lit;
	private String uw;
	private String ead;
	private String gc;
	private String math;
	private String bpex;
	private String tal;
	private String bctc;
	private int age;

	public EarlyYearsEvaluation(int id, String sid, String narration) {
		super();
		this.id = id;
		this.sid = sid;
		this.narration = narration;
		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
	}

	public EarlyYearsEvaluation(int age) {
		this.age = age;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public EarlyYearsEvaluation(String sid, String psed, String cl, String pd,
			String math, String lit, String uw, String ead, String gc) {
		super();
		this.sid = sid;
		this.psed = psed;
		this.cl = cl;
		this.pd = pd;
		this.lit = lit;
		this.uw = uw;
		this.ead = ead;
		this.gc = gc;
		this.math = math;

		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
	}

	public EarlyYearsEvaluation(String psed, String cl, String pd, String math,
			String lit, String uw, String ead, String gc) {
		super();
		this.psed = psed;
		this.cl = cl;
		this.pd = pd;
		this.lit = lit;
		this.uw = uw;
		this.ead = ead;
		this.gc = gc;
		this.math = math;
	}

	public EarlyYearsEvaluation(String sid, String bpex, String tal, String bctc) {
		super();
		this.sid = sid;
		this.bpex = bpex;
		this.tal = tal;
		this.bctc = bctc;
		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
	}

	public String getBpex() {
		return bpex;
	}

	public void setBpex(String bpex) {
		this.bpex = bpex;
	}

	public String getTal() {
		return tal;
	}

	public void setTal(String tal) {
		this.tal = tal;
	}

	public String getBctc() {
		return bctc;
	}

	public void setBctc(String bctc) {
		this.bctc = bctc;
	}

	public EarlyYearsEvaluation(int id, String narration) {
		super();
		this.id = id;
		this.narration = narration;
	}

	public String getPsed() {
		return psed;
	}

	public void setPsed(String psed) {
		if (psed == "" || psed == null) {
			this.psed = null;
		} else {
			this.psed = psed;
		}
	}

	public String getCl() {
		return cl;
	}

	public void setCl(String cl) {
		this.cl = cl;
	}

	public String getPd() {
		return pd;
	}

	public void setPd(String pd) {
		this.pd = pd;
	}

	public String getLit() {
		return lit;
	}

	public void setLit(String lit) {
		this.lit = lit;
	}

	public String getUw() {
		return uw;
	}

	public void setUw(String uw) {
		this.uw = uw;
	}

	public String getEad() {
		return ead;
	}

	public void setEad(String ead) {
		this.ead = ead;
	}

	public String getGc() {
		return gc;
	}

	public void setGc(String gc) {
		this.gc = gc;
	}

	public String getMath() {
		return math;
	}

	public void setMath(String math) {
		this.math = math;
	}

	public int getCurentdate() {
		return curentdate;
	}

	public void setCurentdate(int curentdate) {
		this.curentdate = curentdate;
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

	public String getNarration() {

		return narration;

	}

	public void setNarration(String narration) {
		this.narration = narration;
	}

	public void addrept() {
		try {
			String command = "insert into tbl_early_years_evaluation values(0,"
					+ this.getSid() + "," + "'" + this.getNarration() + "'"
					+ ",'','','','','','','','','','','','','','','"
					+ this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}

	}

	// ///////////////////////////////////////////////////////////////////////////////////////////////////////

	public static List<EarlyYearsEvaluation> getstudentnarration(String sid) {
		List<EarlyYearsEvaluation> list = new ArrayList<EarlyYearsEvaluation>();
		EarlyYearsEvaluation h = null;
		try {
			String query = "SELECT id,narration From tbl_early_years_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new EarlyYearsEvaluation(rSet.getInt("id"),
						rSet.getString("narration"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	// ///////////////
	public static List<EarlyYearsEvaluation> age(int sid) {
		List<EarlyYearsEvaluation> list = new ArrayList<EarlyYearsEvaluation>();
		EarlyYearsEvaluation h = null;
		try {
			String query = "SELECT datediff(NOW( ),date_of_birth) AS age FROM tbl_applicant where id="
					+ sid;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new EarlyYearsEvaluation(rSet.getInt("age"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	// //////////////////////////////Update
	// Narration//////////////////////////////////

	public void updateNarration() {
		try {
			String command = "update tbl_early_years_evaluation set narration='"
					+ this.getNarration() + "' where id = " + this.getId();
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	// ////////////////update and select Reception end of year
	// assessment//////////////////////////////
	public void updatereceptionNarration() {
		try {
			String command = "update tbl_early_years_evaluation set by_playing_and_exploring='"
					+ this.getBpex()
					+ "',through_active_learning='"
					+ this.getTal()
					+ "',by_creating_and_thinking_critically='"
					+ this.getBctc() + "' where sid = " + this.getSid();
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EarlyYearsEvaluation> receptionendofyearassessment(
			String sid) {
		List<EarlyYearsEvaluation> list = new ArrayList<EarlyYearsEvaluation>();
		EarlyYearsEvaluation h = null;
		try {
			String query = "SELECT sid,by_playing_and_exploring,through_active_learning,by_creating_and_thinking_critically FROM tbl_early_years_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new EarlyYearsEvaluation(rSet.getString("sid"),
						rSet.getString("by_playing_and_exploring"),
						rSet.getString("through_active_learning"),
						rSet.getString("by_creating_and_thinking_critically"));
				list.add(h);

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	// //////////////////Early year end of year
	// report//////////////////////////////////////////////////
	public static List<EarlyYearsEvaluation> earlyyearendofyearreport(String sid) {
		List<EarlyYearsEvaluation> list = new ArrayList<EarlyYearsEvaluation>();
		EarlyYearsEvaluation h = null;
		try {
			String query = "SELECT sid,personal_social_emotional_development,communication_language,physical_development,mathematics,literacy,understanding_the_word,expressive_arts_design,general_comment FROM tbl_early_years_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new EarlyYearsEvaluation(
						rSet.getString("personal_social_emotional_development"),
						rSet.getString("communication_language"), rSet
								.getString("physical_development"), rSet
								.getString("mathematics"), rSet
								.getString("literacy"), rSet
								.getString("understanding_the_word"), rSet
								.getString("expressive_arts_design"), rSet
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

	// ////////////////////////////////////////////////////////////////////////////////////////////////

	public void updateeval() {
		try {
			String command = "update tbl_early_years_evaluation set personal_social_emotional_development = '"
					+ this.getPsed()
					+ "'"
					+ ",communication_language = '"
					+ this.getCl()
					+ "'"
					+ ",physical_development ='"
					+ this.getPd()
					+ "'"
					+ ",mathematics = '"
					+ this.getMath()
					+ "'"
					+ ",literacy = '"
					+ this.getLit()
					+ "'"
					+ ",understanding_the_word = '"
					+ this.getUw()
					+ "'"
					+ ",expressive_arts_design = '"
					+ this.getEad()
					+ "'"
					+ ",general_comment='"
					+ this.getGc()
					+ "'"
					+ " where sid="
					+ this.getSid();
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void addnewrept() {
		try {
			String command = "insert into tbl_early_years_evaluation values(0,"
					+ this.getSid() + ",'','" + this.getPsed() + "','"
					+ this.getCl() + "','','" + this.getPd() + "','','"
					+ this.getMath() + "','" + this.getLit() + "','"
					+ this.getUw() + "','" + this.getEad() + "','','"
					+ this.getGc() + "','','','','" + this.getCurentdate()
					+ "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}

	}

	public void endofyearassessment() {
		try {
			String command = "update tbl_early_years_evaluation set by_playing_and_exploring = '"
					+ this.getBpex()
					+ "'"
					+ ",through_active_learning = '"
					+ this.getTal()
					+ "'"
					+ ",by_creating_and_thinking_critically ='"
					+ this.getBctc() + "'" + " where sid=" + this.getSid();
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void addreceptionendyear() {
		try {
			String command = "insert into tbl_early_years_evaluation values(0,"
					+ this.getSid() + ",'','','','','','','','','','','','','"
					+ this.getBpex() + "','" + this.getTal() + "','"
					+ this.getBctc() + "','" + this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}

	}

}