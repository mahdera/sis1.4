package com.signetitsolutions.sis.server.classes;

import java.io.FileInputStream;
import java.io.InputStream;

public class Studentphotoupload {
	private int sid;
	private FileInputStream fis;
	private InputStream ins;

	private FileInputStream fisa;
	private InputStream insa;

	private FileInputStream fisb;
	private InputStream insb;

	private FileInputStream fisc;
	private InputStream insc;

	public Studentphotoupload(int sid, FileInputStream fis, InputStream ins,
			FileInputStream fisa, InputStream insa, FileInputStream fisb,
			InputStream insb, FileInputStream fisc, InputStream insc) {
		super();
		this.sid = sid;
		this.fis = fis;
		this.ins = ins;
		this.fisa = fisa;
		this.insa = insa;
		this.fisb = fisb;
		this.insb = insb;
		this.fisc = fisc;
		this.insc = insc;
	}

	public Studentphotoupload() {

	}

	public Studentphotoupload(int sid, FileInputStream fis) {
		super();
		this.sid = sid;
		this.fis = fis;

	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public FileInputStream getFis() {
		return fis;
	}

	public void setFis(FileInputStream fis) {
		this.fis = fis;
	}

	public InputStream getIns() {
		return ins;
	}

	public void setIns(InputStream ins) {
		this.ins = ins;
	}

	public FileInputStream getFisa() {
		return fisa;
	}

	public void setFisa(FileInputStream fisa) {
		this.fisa = fisa;
	}

	public InputStream getInsa() {
		return insa;
	}

	public void setInsa(InputStream insa) {
		this.insa = insa;
	}

	public FileInputStream getFisb() {
		return fisb;
	}

	public void setFisb(FileInputStream fisb) {
		this.fisb = fisb;
	}

	public InputStream getInsb() {
		return insb;
	}

	public void setInsb(InputStream insb) {
		this.insb = insb;
	}

	public FileInputStream getFisc() {
		return fisc;
	}

	public void setFisc(FileInputStream fisc) {
		this.fisc = fisc;
	}

	public InputStream getInsc() {
		return insc;
	}

	public void setInsc(InputStream insc) {
		this.insc = insc;
	}

	// ////////////////////////////////add
	// photo//////////////////////////////////////////////
	public static void updatestudentPhoto(int sid, FileInputStream fis,
			FileInputStream fisa, FileInputStream fisb) {
		try {
			java.sql.Connection connection = DBConnection
					.getDatabaseConnection();
			java.sql.PreparedStatement pst = connection
					.prepareStatement("UPDATE tbl_early_years_evaluation SET pic1 = "
							+ fis
							+ ",pic2= "
							+ fisa
							+ ", pic3= "
							+ fisb
							+ " WHERE sid = " + sid);
			pst.setInt(1, sid);
			pst.setBinaryStream(2, (InputStream) fis, (int) (fis.available()));
			// pst.setBinaryStream(3,
			// (InputStream)fisa,(int)(fisa.available()));
			// pst.setBinaryStream(4,
			// (InputStream)fisb,(int)(fisb.available()));
			// pst.setBinaryStream(5,
			// (InputStream)fisc,(int)(fisc.available()));

			pst.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}
}
