package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Endofyear {
	private int id;
	private String sid;
	private String lra;
	private int lre;
	private String lrn;

	private String lwa;
	private int lwe;
	private String lwn;

	private String lsa;
	private int lse;
	private String lsn;

	private String nua;
	private int nue;
	private String nun;

	private String nna;
	private int nne;
	private String nnn;

	private String ssma;
	private int ssme;
	private String ssmn;

	private String dha;
	private int dhe;
	private String dhn;

	private String isa;
	private int ise;
	private String isn;

	private String skca;
	private int skce;
	private String skcn;

	private String rsa;
	private int rse;
	private String rsn;

	private String kca;
	private int kce;
	private String kcn;

	private String ata;
	private int ate;
	private String atn;

	private String ca;
	private int ce;
	private String cn;

	private String ctgc;
	private String stfcy;
	private int curentdate;

	public Endofyear(int id, String sid, String lra, int lre, String lrn,
			String lwa, int lwe, String lwn, String lsa, int lse, String lsn,
			String nua, int nue, String nun, String nna, int nne, String nnn,
			String ssma, int ssme, String ssmn, String dha, int dhe,
			String dhn, String isa, int ise, String isn, String skca, int skce,
			String skcn, String rsa, int rse, String rsn, String kca, int kce,
			String kcn, String ata, int ate, String atn, String ca, int ce,
			String cn, String ctgc, String stfcy) {
		super();
		this.id = id;
		this.sid = sid;
		this.lra = lra;
		this.lre = lre;
		this.lrn = lrn;
		this.lwa = lwa;
		this.lwe = lwe;
		this.lwn = lwn;
		this.lsa = lsa;
		this.lse = lse;
		this.lsn = lsn;
		this.nua = nua;
		this.nue = nue;
		this.nun = nun;
		this.nna = nna;
		this.nne = nne;
		this.nnn = nnn;
		this.ssma = ssma;
		this.ssme = ssme;
		this.ssmn = ssmn;
		this.dha = dha;
		this.dhe = dhe;
		this.dhn = dhn;
		this.isa = isa;
		this.ise = ise;
		this.isn = isn;
		this.skca = skca;
		this.skce = skce;
		this.skcn = skcn;
		this.rsa = rsa;
		this.rse = rse;
		this.rsn = rsn;
		this.kca = kca;
		this.kce = kce;
		this.kcn = kcn;
		this.ata = ata;
		this.ate = ate;
		this.atn = atn;
		this.ca = ca;
		this.ce = ce;
		this.cn = cn;
		this.ctgc = ctgc;
		this.stfcy = stfcy;
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

	public String getLra() {
		return lra;
	}

	public void setLra(String lra) {
		this.lra = lra;
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

	public String getLwa() {
		return lwa;
	}

	public void setLwa(String lwa) {
		this.lwa = lwa;
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

	public String getLsa() {
		return lsa;
	}

	public void setLsa(String lsa) {
		this.lsa = lsa;
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

	public String getNua() {
		return nua;
	}

	public void setNua(String nua) {
		this.nua = nua;
	}

	public int getNue() {
		return nue;
	}

	public void setNue(int nue) {
		this.nue = nue;
	}

	public String getNun() {
		return nun;
	}

	public void setNun(String nun) {
		this.nun = nun;
	}

	public String getNna() {
		return nna;
	}

	public void setNna(String nna) {
		this.nna = nna;
	}

	public int getNne() {
		return nne;
	}

	public void setNne(int nne) {
		this.nne = nne;
	}

	public String getNnn() {
		return nnn;
	}

	public void setNnn(String nnn) {
		this.nnn = nnn;
	}

	public String getSsma() {
		return ssma;
	}

	public void setSsma(String ssma) {
		this.ssma = ssma;
	}

	public int getSsme() {
		return ssme;
	}

	public void setSsme(int ssme) {
		this.ssme = ssme;
	}

	public String getSsmn() {
		return ssmn;
	}

	public void setSsmn(String ssmn) {
		this.ssmn = ssmn;
	}

	public String getDha() {
		return dha;
	}

	public void setDha(String dha) {
		this.dha = dha;
	}

	public int getDhe() {
		return dhe;
	}

	public void setDhe(int dhe) {
		this.dhe = dhe;
	}

	public String getDhn() {
		return dhn;
	}

	public void setDhn(String dhn) {
		this.dhn = dhn;
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

	public String getSkca() {
		return skca;
	}

	public void setSkca(String skca) {
		this.skca = skca;
	}

	public int getSkce() {
		return skce;
	}

	public void setSkce(int skce) {
		this.skce = skce;
	}

	public String getSkcn() {
		return skcn;
	}

	public void setSkcn(String skcn) {
		this.skcn = skcn;
	}

	public String getRsa() {
		return rsa;
	}

	public void setRsa(String rsa) {
		this.rsa = rsa;
	}

	public int getRse() {
		return rse;
	}

	public void setRse(int rse) {
		this.rse = rse;
	}

	public String getRsn() {
		return rsn;
	}

	public void setRsn(String rsn) {
		this.rsn = rsn;
	}

	public String getKca() {
		return kca;
	}

	public void setKca(String kca) {
		this.kca = kca;
	}

	public int getKce() {
		return kce;
	}

	public void setKce(int kce) {
		this.kce = kce;
	}

	public String getKcn() {
		return kcn;
	}

	public void setKcn(String kcn) {
		this.kcn = kcn;
	}

	public String getAta() {
		return ata;
	}

	public void setAta(String ata) {
		this.ata = ata;
	}

	public int getAte() {
		return ate;
	}

	public void setAte(int ate) {
		this.ate = ate;
	}

	public String getAtn() {
		return atn;
	}

	public void setAtn(String atn) {
		this.atn = atn;
	}

	public String getCa() {
		return ca;
	}

	public void setCa(String ca) {
		this.ca = ca;
	}

	public int getCe() {
		return ce;
	}

	public void setCe(int ce) {
		this.ce = ce;
	}

	public String getCn() {
		return cn;
	}

	public void setCn(String cn) {
		this.cn = cn;
	}

	public String getCtgc() {
		return ctgc;
	}

	public void setCtgc(String ctgc) {
		this.ctgc = ctgc;
	}

	public String getStfcy() {
		return stfcy;
	}

	public void setStfcy(String stfcy) {
		this.stfcy = stfcy;
	}

	public int getCurentdate() {
		return curentdate;
	}

	public void setCurentdate(int curentdate) {
		this.curentdate = curentdate;
	}

	public void addendofschoolreport() {
		try {
			String command = "insert into tbl_keystageone_endyear_report values(0,"
					+ this.getSid()
					+ ",'"
					+ this.getLra()
					+ "',"
					+ this.getLre()
					+ ",'"
					+ this.getLrn()
					+ "','"
					+ this.getLwa()
					+ "',"
					+ this.getLwe()
					+ ",'"
					+ this.getLwn()
					+ "','"
					+ this.getLsa()
					+ "',"
					+ this.getLse()
					+ ",'"
					+ this.getLwn()
					+ "','"
					+ this.getNua()
					+ "',"
					+ this.getNue()
					+ ",'"
					+ this.getNun()
					+ "','"
					+ this.getNna()
					+ "',"
					+ this.getNne()
					+ ",'"
					+ this.getNnn()
					+ "','"
					+ this.getSsma()
					+ "',"
					+ this.getSsme()
					+ ",'"
					+ this.getSsmn()
					+ "','"
					+ this.getDha()
					+ "',"
					+ this.getDhe()
					+ ",'"
					+ this.getDhn()
					+ "','"
					+ this.getIsa()
					+ "',"
					+ this.getIse()
					+ ",'"
					+ this.getIsn()
					+ "','"
					+ this.getSkca()
					+ "',"
					+ this.getSkce()
					+ ",'"
					+ this.getSkcn()
					+ "','"
					+ this.getRsa()
					+ "',"
					+ this.getRse()
					+ ",'"
					+ this.getRsn()
					+ "','"
					+ this.getKca()
					+ "',"
					+ this.getKce()
					+ ",'"
					+ this.getKcn()
					+ "','"
					+ this.getAta()
					+ "',"
					+ this.getAte()
					+ ",'"
					+ this.getAtn()
					+ "','"
					+ this.getCa()
					+ "',"
					+ this.getCe()
					+ ",'"
					+ this.getCn()
					+ "','"
					+ this.getCtgc()
					+ "','"
					+ this.getStfcy()
					+ "','"
					+ this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updateendofschoolreport() {
		try {
			String command = "update tbl_keystageone_endyear_report set literacy_reading_achievement='"
					+ this.getLra()
					+ "',literacy_reading_effort="
					+ this.getLre()
					+ ",literacy_reading_narration='"
					+ this.getLrn()
					+ "',literacy_writing_achievement='"
					+ this.getLwa()
					+ "',literacy_writing_effort="
					+ this.getLwe()
					+ ",literacy_writing_narration='"
					+ this.getLwn()
					+ "',literacy_speaking_listening_achievement='"
					+ this.getLsa()
					+ "',literacy_speaking_listening_effort="
					+ this.getLse()
					+ ",literacy_speaking_narration='"
					+ this.getLsn()
					+ "',numeracy_using_appliying_achievement='"
					+ this.getNua()
					+ "',numeracy_using_appliying_effort="
					+ this.getNue()
					+ ",numeracy_using_appliying_narration='"
					+ this.getNun()
					+ "',numeracy_number_algebera_achievement='"
					+ this.getNna()
					+ "',numeracy_number_algebera_effort="
					+ this.getNne()
					+ ",numeracy_number_algebera_narration='"
					+ this.getNnn()
					+ "',numeracy_shape_space_measure_achievement='"
					+ this.getSsma()
					+ "',numeracy_shape_space_measure_effort="
					+ this.getSsme()
					+ ",numeracy_shape_space_measure_narration='"
					+ this.getSsmn()
					+ "',numeracy_data_handling_achievement='"
					+ this.getDha()
					+ "',numeracy_data_handling_effort="
					+ this.getDhe()
					+ ",numeracy_data_handling_narration='"
					+ this.getDhn()
					+ "',science_investigationskill_achievement='"
					+ this.getIsa()
					+ "',science_investigationskill_effort="
					+ this.getIse()
					+ ",science_investigationskill_narration='"
					+ this.getIsn()
					+ "',science_knowledg_and_content_achievement='"
					+ this.getSkca()
					+ "',science_knowledg_and_content_effort="
					+ this.getSkce()
					+ ",science_knowledg_and_content_narration='"
					+ this.getSkcn()
					+ "',humanities_research_skills_achievement='"
					+ this.getRsa()
					+ "',humanities_research_skills_effort="
					+ this.getRse()
					+ ",humanities_research_skills_narration='"
					+ this.getRsn()
					+ "',humanities_knowledg_content_achievement='"
					+ this.getKca()
					+ "',humanities_knowledg_content_effort="
					+ this.getKce()
					+ ",humanities_knowledg_content_narration='"
					+ this.getKcn()
					+ "',art_design_applyingtechinques_achievement='"
					+ this.getAta()
					+ "',art_design_applyingtechinques_effort="
					+ this.getAte()
					+ ",art_design_applyingtechinques_narration='"
					+ this.getAtn()
					+ "',art_design_creativity_achievement='"
					+ this.getCa()
					+ "',art_design_creativity_effort="
					+ this.getCe()
					+ ",art_design_creativity_narration='"
					+ this.getCn()
					+ "',teacher_general_comment='"
					+ this.getCtgc()
					+ "',suggested_target_forthecomming_year='"
					+ this.getStfcy() + "' WHERE sid=" + sid;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Endofyear> getKeysatgeoneend(String sid) {
		List<Endofyear> list = new ArrayList<Endofyear>();
		Endofyear h = null;
		try {
			String query = "SELECT id,sid,literacy_reading_achievement,literacy_reading_effort,literacy_reading_narration,literacy_writing_achievement,literacy_writing_effort,literacy_writing_narration,literacy_speaking_listening_achievement,literacy_speaking_listening_effort,literacy_speaking_narration,numeracy_using_appliying_achievement,numeracy_using_appliying_effort,numeracy_using_appliying_narration,numeracy_number_algebera_achievement,numeracy_number_algebera_effort,numeracy_number_algebera_narration,numeracy_shape_space_measure_achievement,numeracy_shape_space_measure_effort,numeracy_shape_space_measure_narration,numeracy_data_handling_achievement,numeracy_data_handling_effort,numeracy_data_handling_narration,science_investigationskill_achievement,science_investigationskill_effort,science_investigationskill_narration,science_knowledg_and_content_achievement,science_knowledg_and_content_effort,science_knowledg_and_content_narration,humanities_research_skills_achievement,humanities_research_skills_effort,humanities_research_skills_narration,humanities_knowledg_content_achievement,humanities_knowledg_content_effort,humanities_knowledg_content_narration,art_design_applyingtechinques_achievement,art_design_applyingtechinques_effort,art_design_applyingtechinques_narration,art_design_creativity_achievement,art_design_creativity_effort,art_design_creativity_narration,teacher_general_comment,suggested_target_forthecomming_year FROM tbl_keystageone_endyear_report WHERE sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Endofyear(
						rSet.getInt("id"),
						rSet.getString("sid"),
						rSet.getString("literacy_reading_achievement"),
						rSet.getInt("literacy_reading_effort"),
						rSet.getString("literacy_reading_narration"),
						rSet.getString("literacy_writing_achievement"),
						rSet.getInt("literacy_writing_effort"),
						rSet.getString("literacy_writing_narration"),
						rSet.getString("literacy_speaking_listening_achievement"),
						rSet.getInt("literacy_speaking_listening_effort"),
						rSet.getString("literacy_speaking_narration"),
						rSet.getString("numeracy_using_appliying_achievement"),
						rSet.getInt("numeracy_using_appliying_effort"),
						rSet.getString("numeracy_using_appliying_narration"),
						rSet.getString("numeracy_number_algebera_achievement"),
						rSet.getInt("numeracy_number_algebera_effort"),
						rSet.getString("numeracy_number_algebera_narration"),
						rSet.getString("numeracy_shape_space_measure_achievement"),
						rSet.getInt("numeracy_shape_space_measure_effort"),
						rSet.getString("numeracy_shape_space_measure_narration"),
						rSet.getString("numeracy_data_handling_achievement"),
						rSet.getInt("numeracy_data_handling_effort"),
						rSet.getString("numeracy_data_handling_narration"),
						rSet.getString("science_investigationskill_achievement"),
						rSet.getInt("science_investigationskill_effort"),
						rSet.getString("science_investigationskill_narration"),
						rSet.getString("science_knowledg_and_content_achievement"),
						rSet.getInt("science_knowledg_and_content_effort"),
						rSet.getString("science_knowledg_and_content_narration"),
						rSet.getString("humanities_research_skills_achievement"),
						rSet.getInt("humanities_research_skills_effort"),
						rSet.getString("humanities_research_skills_narration"),
						rSet.getString("humanities_knowledg_content_achievement"),
						rSet.getInt("humanities_knowledg_content_effort"),
						rSet.getString("humanities_knowledg_content_narration"),
						rSet.getString("art_design_applyingtechinques_achievement"),
						rSet.getInt("art_design_applyingtechinques_effort"),
						rSet.getString("art_design_applyingtechinques_narration"),
						rSet.getString("art_design_creativity_achievement"),
						rSet.getInt("art_design_creativity_effort"), rSet
								.getString("art_design_creativity_narration"),
						rSet.getString("teacher_general_comment"),
						rSet.getString("suggested_target_forthecomming_year"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public void addendofschoolreport2() {
		try {
			String command = "insert into tbl_keystagetwo_endyear_report values(0,"
					+ this.getSid()
					+ ",'"
					+ this.getLra()
					+ "',"
					+ this.getLre()
					+ ",'"
					+ this.getLrn()
					+ "','"
					+ this.getLwa()
					+ "',"
					+ this.getLwe()
					+ ",'"
					+ this.getLwn()
					+ "','"
					+ this.getLsa()
					+ "',"
					+ this.getLse()
					+ ",'"
					+ this.getLwn()
					+ "','"
					+ this.getNua()
					+ "',"
					+ this.getNue()
					+ ",'"
					+ this.getNun()
					+ "','"
					+ this.getNna()
					+ "',"
					+ this.getNne()
					+ ",'"
					+ this.getNnn()
					+ "','"
					+ this.getSsma()
					+ "',"
					+ this.getSsme()
					+ ",'"
					+ this.getSsmn()
					+ "','"
					+ this.getDha()
					+ "',"
					+ this.getDhe()
					+ ",'"
					+ this.getDhn()
					+ "','"
					+ this.getIsa()
					+ "',"
					+ this.getIse()
					+ ",'"
					+ this.getIsn()
					+ "','"
					+ this.getSkca()
					+ "',"
					+ this.getSkce()
					+ ",'"
					+ this.getSkcn()
					+ "','"
					+ this.getRsa()
					+ "',"
					+ this.getRse()
					+ ",'"
					+ this.getRsn()
					+ "','"
					+ this.getKca()
					+ "',"
					+ this.getKce()
					+ ",'"
					+ this.getKcn()
					+ "','"
					+ this.getAta()
					+ "',"
					+ this.getAte()
					+ ",'"
					+ this.getAtn()
					+ "','"
					+ this.getCa()
					+ "',"
					+ this.getCe()
					+ ",'"
					+ this.getCn()
					+ "','"
					+ this.getCtgc()
					+ "','"
					+ this.getStfcy()
					+ "','"
					+ this.getCurentdate() + "')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updateendofschoolreport2() {
		try {
			String command = "update tbl_keystagetwo_endyear_report set literacy_reading_achievement='"
					+ this.getLra()
					+ "',literacy_reading_effort="
					+ this.getLre()
					+ ",literacy_reading_narration='"
					+ this.getLrn()
					+ "',literacy_writing_achievement='"
					+ this.getLwa()
					+ "',literacy_writing_effort="
					+ this.getLwe()
					+ ",literacy_writing_narration='"
					+ this.getLwn()
					+ "',literacy_speaking_listening_achievement='"
					+ this.getLsa()
					+ "',literacy_speaking_listening_effort="
					+ this.getLse()
					+ ",literacy_speaking_narration='"
					+ this.getLsn()
					+ "',numeracy_using_appliying_achievement='"
					+ this.getNua()
					+ "',numeracy_using_appliying_effort="
					+ this.getNue()
					+ ",numeracy_using_appliying_narration='"
					+ this.getNun()
					+ "',numeracy_number_algebera_achievement='"
					+ this.getNna()
					+ "',numeracy_number_algebera_effort="
					+ this.getNne()
					+ ",numeracy_number_algebera_narration='"
					+ this.getNnn()
					+ "',numeracy_shape_space_measure_achievement='"
					+ this.getSsma()
					+ "',numeracy_shape_space_measure_effort="
					+ this.getSsme()
					+ ",numeracy_shape_space_measure_narration='"
					+ this.getSsmn()
					+ "',numeracy_data_handling_achievement='"
					+ this.getDha()
					+ "',numeracy_data_handling_effort="
					+ this.getDhe()
					+ ",numeracy_data_handling_narration='"
					+ this.getDhn()
					+ "',science_investigationskill_achievement='"
					+ this.getIsa()
					+ "',science_investigationskill_effort="
					+ this.getIse()
					+ ",science_investigationskill_narration='"
					+ this.getIsn()
					+ "',science_knowledg_and_content_achievement='"
					+ this.getSkca()
					+ "',science_knowledg_and_content_effort="
					+ this.getSkce()
					+ ",science_knowledg_and_content_narration='"
					+ this.getSkcn()
					+ "',humanities_research_skills_achievement='"
					+ this.getRsa()
					+ "',humanities_research_skills_effort="
					+ this.getRse()
					+ ",humanities_research_skills_narration='"
					+ this.getRsn()
					+ "',humanities_knowledg_content_achievement='"
					+ this.getKca()
					+ "',humanities_knowledg_content_effort="
					+ this.getKce()
					+ ",humanities_knowledg_content_narration='"
					+ this.getKcn()
					+ "',art_design_applyingtechinques_achievement='"
					+ this.getAta()
					+ "',art_design_applyingtechinques_effort="
					+ this.getAte()
					+ ",art_design_applyingtechinques_narration='"
					+ this.getAtn()
					+ "',art_design_creativity_achievement='"
					+ this.getCa()
					+ "',art_design_creativity_effort="
					+ this.getCe()
					+ ",art_design_creativity_narration='"
					+ this.getCn()
					+ "',teacher_general_comment='"
					+ this.getCtgc()
					+ "',suggested_target_forthecomming_year='"
					+ this.getStfcy() + "' WHERE sid=" + sid;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Endofyear> getKeysatgetwoend(String sid) {
		List<Endofyear> list = new ArrayList<Endofyear>();
		Endofyear h = null;
		try {
			String query = "SELECT id,sid,literacy_reading_achievement,literacy_reading_effort,literacy_reading_narration,literacy_writing_achievement,literacy_writing_effort,literacy_writing_narration,literacy_speaking_listening_achievement,literacy_speaking_listening_effort,literacy_speaking_narration,numeracy_using_appliying_achievement,numeracy_using_appliying_effort,numeracy_using_appliying_narration,numeracy_number_algebera_achievement,numeracy_number_algebera_effort,numeracy_number_algebera_narration,numeracy_shape_space_measure_achievement,numeracy_shape_space_measure_effort,numeracy_shape_space_measure_narration,numeracy_data_handling_achievement,numeracy_data_handling_effort,numeracy_data_handling_narration,science_investigationskill_achievement,science_investigationskill_effort,science_investigationskill_narration,science_knowledg_and_content_achievement,science_knowledg_and_content_effort,science_knowledg_and_content_narration,humanities_research_skills_achievement,humanities_research_skills_effort,humanities_research_skills_narration,humanities_knowledg_content_achievement,humanities_knowledg_content_effort,humanities_knowledg_content_narration,art_design_applyingtechinques_achievement,art_design_applyingtechinques_effort,art_design_applyingtechinques_narration,art_design_creativity_achievement,art_design_creativity_effort,art_design_creativity_narration,teacher_general_comment,suggested_target_forthecomming_year FROM tbl_keystagetwo_endyear_report WHERE sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Endofyear(
						rSet.getInt("id"),
						rSet.getString("sid"),
						rSet.getString("literacy_reading_achievement"),
						rSet.getInt("literacy_reading_effort"),
						rSet.getString("literacy_reading_narration"),
						rSet.getString("literacy_writing_achievement"),
						rSet.getInt("literacy_writing_effort"),
						rSet.getString("literacy_writing_narration"),
						rSet.getString("literacy_speaking_listening_achievement"),
						rSet.getInt("literacy_speaking_listening_effort"),
						rSet.getString("literacy_speaking_narration"),
						rSet.getString("numeracy_using_appliying_achievement"),
						rSet.getInt("numeracy_using_appliying_effort"),
						rSet.getString("numeracy_using_appliying_narration"),
						rSet.getString("numeracy_number_algebera_achievement"),
						rSet.getInt("numeracy_number_algebera_effort"),
						rSet.getString("numeracy_number_algebera_narration"),
						rSet.getString("numeracy_shape_space_measure_achievement"),
						rSet.getInt("numeracy_shape_space_measure_effort"),
						rSet.getString("numeracy_shape_space_measure_narration"),
						rSet.getString("numeracy_data_handling_achievement"),
						rSet.getInt("numeracy_data_handling_effort"),
						rSet.getString("numeracy_data_handling_narration"),
						rSet.getString("science_investigationskill_achievement"),
						rSet.getInt("science_investigationskill_effort"),
						rSet.getString("science_investigationskill_narration"),
						rSet.getString("science_knowledg_and_content_achievement"),
						rSet.getInt("science_knowledg_and_content_effort"),
						rSet.getString("science_knowledg_and_content_narration"),
						rSet.getString("humanities_research_skills_achievement"),
						rSet.getInt("humanities_research_skills_effort"),
						rSet.getString("humanities_research_skills_narration"),
						rSet.getString("humanities_knowledg_content_achievement"),
						rSet.getInt("humanities_knowledg_content_effort"),
						rSet.getString("humanities_knowledg_content_narration"),
						rSet.getString("art_design_applyingtechinques_achievement"),
						rSet.getInt("art_design_applyingtechinques_effort"),
						rSet.getString("art_design_applyingtechinques_narration"),
						rSet.getString("art_design_creativity_achievement"),
						rSet.getInt("art_design_creativity_effort"), rSet
								.getString("art_design_creativity_narration"),
						rSet.getString("teacher_general_comment"),
						rSet.getString("suggested_target_forthecomming_year"));
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
