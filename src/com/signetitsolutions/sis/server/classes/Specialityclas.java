package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Specialityclas {
	private int id;
	private String sid;
	private String tfullname;
	private String lasa;
	private int lase;
	private String lasn;

	private String esa;
	private int ese;
	private String esn;

	private int curentdate;

	private String mpera;
	private int mpere;
	private String mpern;

	private String mclsa;
	private int mclse;
	private String mclsn;

	private String poa;
	private int poe;
	private String pon;
	private String isa;
	private int ise;
	private String isn;
	private String twa;
	private int twe;
	private String twn;

	private String sla;
	private int sle;
	private String sln;

	private String ra;
	private int re;
	private String rn;

	private String wa;
	private int we;
	private String wn;

	public Specialityclas() {
		super();
		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
	}

	public Specialityclas(int id, String sid, String tfullname, String lasa,
			int lase, String lasn, String esa, int ese, String esn) {
		super();
		this.id = id;
		this.sid = sid;
		this.tfullname = tfullname;
		this.lasa = lasa;
		this.lase = lase;
		this.lasn = lasn;
		this.esa = esa;
		this.ese = ese;
		this.esn = esn;
		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
	}

	public Specialityclas(String sid, String tfullname, String poa, int poe,
			String pon, String isa, int ise, String isn, String twa, int twe,
			String twn) {
		super();
		this.sid = sid;
		this.tfullname = tfullname;
		this.poa = poa;
		this.poe = poe;
		this.pon = pon;
		this.isa = isa;
		this.ise = ise;
		this.isn = isn;
		this.twa = twa;
		this.twe = twe;
		this.twn = twn;
		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
	}

	public Specialityclas(int id, String sid, String tfullname, String poa,
			int poe, String pon, String isa, int ise, String isn, String twa,
			int twe, String twn) {
		super();
		this.id = id;
		this.sid = sid;
		this.poa = poa;
		this.poe = poe;
		this.pon = pon;
		this.isa = isa;
		this.ise = ise;
		this.isn = isn;
		this.twa = twa;
		this.twe = twe;
		this.twn = twn;
		this.tfullname = tfullname;

		this.sla = poa;
		this.sle = poe;
		this.sln = pon;
		this.ra = isa;
		this.re = ise;
		this.rn = isn;
		this.wa = twa;
		this.we = twe;
		this.wn = twn;

		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;

	}

	public Specialityclas(String sid, String tfullname, String lasa, int lase,
			String lasn, String esa, int ese, String esn) {
		super();
		this.sid = sid;
		this.tfullname = tfullname;
		this.lasa = lasa;
		this.lase = lase;
		this.lasn = lasn;
		this.esa = esa;
		this.ese = ese;
		this.esn = esn;

		this.mpera = lasa;
		this.mpere = lase;
		this.mpern = lasn;

		this.mclsa = esa;
		this.mclse = ese;
		this.mclsn = esn;

		this.sla = lasa;
		this.sle = lase;
		this.sln = lasn;

		this.ra = esa;
		this.re = ese;
		this.rn = esn;
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

	public String getTfullname() {
		return tfullname;
	}

	public void setTfullname(String tfullname) {
		this.tfullname = tfullname;
	}

	public String getLasa() {
		return lasa;
	}

	public void setLasa(String lasa) {
		this.lasa = lasa;
	}

	public int getLase() {
		return lase;
	}

	public void setLase(int lase) {
		this.lase = lase;
	}

	public String getLasn() {
		return lasn;
	}

	public void setLasn(String lasn) {
		this.lasn = lasn;
	}

	public String getEsa() {
		return esa;
	}

	public void setEsa(String esa) {
		this.esa = esa;
	}

	public int getEse() {
		return ese;
	}

	public void setEse(int ese) {
		this.ese = ese;
	}

	public String getEsn() {
		return esn;
	}

	public void setEsn(String esn) {
		this.esn = esn;
	}

	public int getCurentdate() {
		return curentdate;
	}

	public void setCurentdate(int curentdate) {
		this.curentdate = curentdate;
	}

	// ///////////////////////////////////////ICT////////////////////////////////////////////////////

	public String getMpera() {
		return mpera;
	}

	public void setMpera(String mpera) {
		this.mpera = mpera;
	}

	public int getMpere() {
		return mpere;
	}

	public void setMpere(int mpere) {
		this.mpere = mpere;
	}

	public String getMpern() {
		return mpern;
	}

	public void setMpern(String mpern) {
		this.mpern = mpern;
	}

	public String getMclsa() {
		return mclsa;
	}

	public void setMclsa(String mclsa) {
		this.mclsa = mclsa;
	}

	public int getMclse() {
		return mclse;
	}

	public void setMclse(int mclse) {
		this.mclse = mclse;
	}

	public String getMclsn() {
		return mclsn;
	}

	public void setMclsn(String mclsn) {
		this.mclsn = mclsn;
	}

	public String getPoa() {
		return poa;
	}

	public void setPoa(String poa) {
		this.poa = poa;
	}

	public int getPoe() {
		return poe;
	}

	public void setPoe(int poe) {
		this.poe = poe;
	}

	public String getPon() {
		return pon;
	}

	public void setPon(String pon) {
		this.pon = pon;
	}

	public String getIsa() {
		return isa;
	}

	public void setIsa(String isa) {
		this.isa = isa;
	}

	public int getIse() {
		return ise;
	}

	public void setIse(int ise) {
		this.ise = ise;
	}

	public String getIsn() {
		return isn;
	}

	public void setIsn(String isn) {
		this.isn = isn;
	}

	public String getTwa() {
		return twa;
	}

	public void setTwa(String twa) {
		this.twa = twa;
	}

	public int getTwe() {
		return twe;
	}

	public void setTwe(int twe) {
		this.twe = twe;
	}

	public String getTwn() {
		return twn;
	}

	public void setTwn(String twn) {
		this.twn = twn;
	}

	public String getSla() {
		return sla;
	}

	public void setSla(String sla) {
		this.sla = sla;
	}

	public int getSle() {
		return sle;
	}

	public void setSle(int sle) {
		this.sle = sle;
	}

	public String getSln() {
		return sln;
	}

	public void setSln(String sln) {
		this.sln = sln;
	}

	public String getRa() {
		return ra;
	}

	public void setRa(String ra) {
		this.ra = ra;
	}

	public int getRe() {
		return re;
	}

	public void setRe(int re) {
		this.re = re;
	}

	public String getRn() {
		return rn;
	}

	public void setRn(String rn) {
		this.rn = rn;
	}

	public String getWa() {
		return wa;
	}

	public void setWa(String wa) {
		this.wa = wa;
	}

	public int getWe() {
		return we;
	}

	public void setWe(int we) {
		this.we = we;
	}

	public String getWn() {
		return wn;
	}

	public void setWn(String wn) {
		this.wn = wn;
	}

	// ///////////////////////////////////////ICT////////////////////////////////////////////////////

	public void saveict(String sid, String tfullname, String lasa, int lase,
			String lasn, String esa, int ese, String esn) {
		try {
			String command = "insert into tbl_speciality_course_evaluation values(0,"
					+ sid
					+ ",'"
					+ tfullname
					+ "','"
					+ lasa
					+ "',"
					+ lase
					+ ",'"
					+ lasn
					+ "','"
					+ esa
					+ "',"
					+ ese
					+ ",'"
					+ esn
					+ "','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','"
					+ this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updateict(int sid, String tfullname, String lasa, int lase,
			String lasn, String esa, int ese, String esn) {
		try {
			String command = "update tbl_speciality_course_evaluation set ict_teacher ='"
					+ tfullname
					+ "',ict_learning_application_skills_achievement = '"
					+ lasa
					+ "',ict_learning_application_skills_effort="
					+ lase
					+ ",ict_learning_application_skills_narration = '"
					+ lasn
					+ "',ict_evaluationskills_achievement='"
					+ esa
					+ "',ict_evaluationskills_effort="
					+ ese
					+ ",ict_evaluationskills_narration='"
					+ esn
					+ "' where sid=" + sid;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Specialityclas> ictselect(String sid) {
		List<Specialityclas> list = new ArrayList<Specialityclas>();
		Specialityclas h = null;
		try {
			String query = "SELECT id,sid,ict_teacher,ict_learning_application_skills_achievement,ict_learning_application_skills_effort,ict_learning_application_skills_narration,ict_evaluationskills_achievement,ict_evaluationskills_effort,ict_evaluationskills_narration FROM tbl_speciality_course_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Specialityclas(
						rSet.getInt("id"),
						rSet.getString("sid"),
						rSet.getString("ict_teacher"),
						rSet.getString("ict_learning_application_skills_achievement"),
						rSet.getInt("ict_learning_application_skills_effort"),
						rSet.getString("ict_learning_application_skills_narration"),
						rSet.getString("ict_evaluationskills_achievement"),
						rSet.getInt("ict_evaluationskills_effort"), rSet
								.getString("ict_evaluationskills_narration"));
				list.add(h);

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	// ///////////////////////////////////////Music////////////////////////////////////////////////////

	public void savemusic(int sid, String tfullname, String mpera, int mpere,
			String mpern, String mclsa, int mclse, String mclsn) {
		try {
			String command = "insert into tbl_speciality_course_evaluation values(0,"
					+ sid
					+ ",'','','','','','','','"
					+ tfullname
					+ "','"
					+ mpera
					+ "',"
					+ mpere
					+ ",'"
					+ mpern
					+ "','"
					+ mclsa
					+ "',"
					+ mclse
					+ ",'"
					+ mclsn
					+ "','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','"
					+ this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updatemusic(int sid, String tfullname, String mpera, int mpere,
			String mpern, String mclsa, int mclse, String mclsn) {
		try {
			String command = "update tbl_speciality_course_evaluation set music_teacher='"
					+ tfullname
					+ "',music_performing_achievement='"
					+ mpera
					+ "',music_performing_effort="
					+ mpere
					+ ",music_performing_narration='"
					+ mpern
					+ "',music_creative_listening_skill_achievement='"
					+ mclsa
					+ "',music_creative_listening_skill_effort="
					+ mclse
					+ ",music_creative_listening_skill_narration='"
					+ mclsn
					+ "' where sid=" + sid;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Specialityclas> musicselect(String sid) {
		List<Specialityclas> list = new ArrayList<Specialityclas>();
		Specialityclas h = null;
		try {
			String query = "SELECT sid,music_teacher ,music_performing_achievement ,music_performing_effort ,music_performing_narration ,music_creative_listening_skill_achievement ,music_creative_listening_skill_effort ,music_creative_listening_skill_narration FROM tbl_speciality_course_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Specialityclas(
						rSet.getString("sid"),
						rSet.getString("music_teacher"),
						rSet.getString("music_performing_achievement"),
						rSet.getInt("music_performing_effort"),
						rSet.getString("music_performing_narration"),
						rSet.getString("music_creative_listening_skill_achievement"),
						rSet.getInt("music_creative_listening_skill_effort"),
						rSet.getString("music_creative_listening_skill_narration"));
				list.add(h);

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	// //////////////////////////////////////////////////////PE////////////////////////////////////////////////////

	public void savepe(int id, int sid, String tfullname, String poa, int poe,
			String pon, String isa, int ise, String isn, String twa, int twe,
			String twn) {
		try {
			String command = "insert into tbl_speciality_course_evaluation values(0,"
					+ sid
					+ ",'','','','','','','','','','','','','','','"
					+ tfullname
					+ "','"
					+ poa
					+ "',"
					+ poe
					+ ",'"
					+ pon
					+ "','"
					+ isa
					+ "',"
					+ ise
					+ ",'"
					+ isn
					+ "','"
					+ twa
					+ "',"
					+ twe
					+ ",'"
					+ twn
					+ "','','','','','','','','','','','','','','','','','','','','','"
					+ this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updatepe(int id, int sid, String tfullname, String poa,
			int poe, String pon, String isa, int ise, String isn, String twa,
			int twe, String twn) {
		try {
			String command = "update tbl_speciality_course_evaluation set pe_teacher='"
					+ tfullname
					+ "',pe_personalorganisation_achievement='"
					+ poa
					+ "',pe_personalorganisation_effort="
					+ poe
					+ ",pe_personalorganisation_narration='"
					+ pon
					+ "',pe_individualskills_achievement='"
					+ isa
					+ "',pe_individualskills_effort="
					+ ise
					+ ",pe_individualskills_narration='"
					+ isn
					+ "',pe_teamwork_achievement='"
					+ twa
					+ "',pe_teamwork_effort="
					+ twe
					+ ",pe_teamwork_narration='" + twn + "' where sid=" + sid;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Specialityclas> peselect(String sid) {
		List<Specialityclas> list = new ArrayList<Specialityclas>();
		Specialityclas h = null;
		try {
			String query = "SELECT sid,pe_teacher,pe_personalorganisation_achievement,pe_personalorganisation_effort,pe_personalorganisation_narration,pe_individualskills_achievement,pe_individualskills_effort,pe_individualskills_narration,pe_teamwork_achievement,pe_teamwork_effort,pe_teamwork_narration FROM tbl_speciality_course_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Specialityclas(rSet.getString("sid"),
						rSet.getString("pe_teacher"),
						rSet.getString("pe_personalorganisation_achievement"),
						rSet.getInt("pe_personalorganisation_effort"),
						rSet.getString("pe_personalorganisation_narration"),
						rSet.getString("pe_individualskills_achievement"),
						rSet.getInt("pe_individualskills_effort"),
						rSet.getString("pe_individualskills_narration"),
						rSet.getString("pe_teamwork_achievement"),
						rSet.getInt("pe_teamwork_effort"),
						rSet.getString("pe_teamwork_narration"));
				list.add(h);

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	// /////////////////////////////////////////////////////////AMHARIC////////////////////////////////////////////////////////////

	public void saveamharic(int id, String sid, String tfullname, String sla,
			int sle, String sln, String ra, int re, String rn, String wa,
			int we, String wn) {
		try {
			String command = "insert into tbl_speciality_course_evaluation values(0,"
					+ sid
					+ ",'','','','','','','','','','','','','','','','','','','','','','','','','"
					+ tfullname
					+ "','"
					+ sla
					+ "',"
					+ sle
					+ ",'"
					+ sln
					+ "','"
					+ ra
					+ "',"
					+ re
					+ ",'"
					+ rn
					+ "','"
					+ wa
					+ "',"
					+ we
					+ ",'"
					+ wn
					+ "','','','','','','','','','','','"
					+ this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updateamharic(String sid, String tfullname, String sla,
			int sle, String sln, String ra, int re, String rn, String wa,
			int we, String wn) {
		try {
			String command = "update tbl_speciality_course_evaluation set amharic_teacher='"
					+ tfullname
					+ "',amharic_speaking_listening_achievement='"
					+ sla
					+ "',amharic_speaking_listening_effort="
					+ sle
					+ ",amharic_speaking_listening_narration='"
					+ sln
					+ "',amharic_reading_achievement='"
					+ ra
					+ "',amharic_reading_effort="
					+ re
					+ ",amharic_reading_narration='"
					+ rn
					+ "',amharic_writing_achievement='"
					+ wa
					+ "',amharic_writing_effort="
					+ we
					+ ",amharic_writing_narration='"
					+ wn
					+ "' where sid="
					+ sid;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Specialityclas> amharicselect(String sid) {
		List<Specialityclas> list = new ArrayList<Specialityclas>();
		Specialityclas h = null;
		try {
			String query = "SELECT id,sid,amharic_teacher,amharic_speaking_listening_achievement,amharic_speaking_listening_effort,amharic_speaking_listening_narration,amharic_reading_achievement,amharic_reading_effort,amharic_reading_narration,amharic_writing_achievement,amharic_writing_effort,amharic_writing_narration FROM tbl_speciality_course_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Specialityclas(
						rSet.getInt("id"),
						rSet.getString("sid"),
						rSet.getString("amharic_teacher"),
						rSet.getString("amharic_speaking_listening_achievement"),
						rSet.getInt("amharic_speaking_listening_effort"),
						rSet.getString("amharic_speaking_listening_narration"),
						rSet.getString("amharic_reading_achievement"), rSet
								.getInt("amharic_reading_effort"), rSet
								.getString("amharic_reading_narration"), rSet
								.getString("amharic_writing_achievement"), rSet
								.getInt("amharic_writing_effort"), rSet
								.getString("amharic_writing_narration"));
				list.add(h);

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	// /////////////////////////////////////////////////////////FRENCH////////////////////////////////////////////////////////////

	public void savefrench(int id, String sid, String tfullname, String sla,
			int sle, String sln, String ra, int re, String rn, String wa,
			int we, String wn) {
		try {
			String command = "insert into tbl_speciality_course_evaluation values(0,'"
					+ sid
					+ "','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','"
					+ tfullname
					+ "','"
					+ sla
					+ "','"
					+ sle
					+ "','"
					+ sln
					+ "','"
					+ ra
					+ "','"
					+ re
					+ "','"
					+ rn
					+ "','"
					+ wa
					+ "','"
					+ we + "','" + wn + "','" + this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updatefrench(int id, String sid, String tfullname, String sla,
			int sle, String sln, String ra, int re, String rn, String wa,
			int we, String wn) {
		try {
			String command = "update tbl_speciality_course_evaluation set french_teacher='"
					+ tfullname
					+ "',french_speaking_listening_achievement='"
					+ sla
					+ "',french_speaking_listening_effort="
					+ sle
					+ ",french_speaking_listening_narration='"
					+ sln
					+ "',french_reading_achievement='"
					+ ra
					+ "',french_reading_effort="
					+ re
					+ ",french_reading_narration='"
					+ rn
					+ "',french_writing_achievement='"
					+ wa
					+ "',french_writing_effort="
					+ we
					+ ",french_writing_narration='" + wn + "' where sid=" + sid;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Specialityclas> frenchselect(String sid) {
		List<Specialityclas> list = new ArrayList<Specialityclas>();
		Specialityclas h = null;
		try {
			String query = "SELECT id,sid,french_teacher,french_speaking_listening_achievement,french_speaking_listening_effort,french_speaking_listening_narration,french_reading_achievement,french_reading_effort,french_reading_narration,french_writing_achievement,french_writing_effort,french_writing_narration FROM tbl_speciality_course_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Specialityclas(
						rSet.getInt("id"),
						rSet.getString("sid"),
						rSet.getString("french_teacher"),
						rSet.getString("french_speaking_listening_achievement"),
						rSet.getInt("french_speaking_listening_effort"),
						rSet.getString("french_speaking_listening_narration"),
						rSet.getString("french_reading_achievement"), rSet
								.getInt("french_reading_effort"), rSet
								.getString("french_reading_narration"), rSet
								.getString("french_writing_achievement"), rSet
								.getInt("french_writing_effort"), rSet
								.getString("french_writing_narration"));
				list.add(h);

			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}
