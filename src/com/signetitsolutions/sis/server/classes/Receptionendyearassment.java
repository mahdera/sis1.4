package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Receptionendyearassment {
	private int id;
	private String sid;
	private int elg01;
	private int elg02;
	private int elg03;
	private int elg04;
	private int elg05;
	private int elg06;
	private int elg07;
	private int elg08;
	private int elg09;
	private int elg10;
	private int elg11;
	private int elg12;
	private int elg13;
	private int elg14;
	private int elg15;
	private int elg16;
	private int elg17;
	private int curentdate;

	public Receptionendyearassment(int id, String sid, int elg01, int elg02,
			int elg03, int elg04, int elg05, int elg06, int elg07, int elg08,
			int elg09, int elg10, int elg11, int elg12, int elg13, int elg14,
			int elg15, int elg16, int elg17) {
		super();
		this.id = id;
		this.sid = sid;
		this.elg01 = elg01;
		this.elg02 = elg02;
		this.elg03 = elg03;
		this.elg04 = elg04;
		this.elg05 = elg05;
		this.elg06 = elg06;
		this.elg07 = elg07;
		this.elg08 = elg08;
		this.elg09 = elg09;
		this.elg10 = elg10;
		this.elg11 = elg11;
		this.elg12 = elg12;
		this.elg13 = elg13;
		this.elg14 = elg14;
		this.elg15 = elg15;
		this.elg16 = elg16;
		this.elg17 = elg17;

		Date d = new Date();
		int dd = d.getYear() + 1900;
		this.curentdate = dd;
	}

	public Receptionendyearassment(String sid, int elg01, int elg02, int elg03,
			int elg04, int elg05, int elg06, int elg07, int elg08, int elg09,
			int elg10, int elg11, int elg12, int elg13, int elg14, int elg15,
			int elg16, int elg17) {
		super();

		this.sid = sid;
		this.elg01 = elg01;
		this.elg02 = elg02;
		this.elg03 = elg03;
		this.elg04 = elg04;
		this.elg05 = elg05;
		this.elg06 = elg06;
		this.elg07 = elg07;
		this.elg08 = elg08;
		this.elg09 = elg09;
		this.elg10 = elg10;
		this.elg11 = elg11;
		this.elg12 = elg12;
		this.elg13 = elg13;
		this.elg14 = elg14;
		this.elg15 = elg15;
		this.elg16 = elg16;
		this.elg17 = elg17;

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

	public int getElg01() {
		return elg01;
	}

	public void setElg01(int elg01) {
		this.elg01 = elg01;
	}

	public int getElg02() {
		return elg02;
	}

	public void setElg02(int elg02) {
		this.elg02 = elg02;
	}

	public int getElg03() {
		return elg03;
	}

	public void setElg03(int elg03) {
		this.elg03 = elg03;
	}

	public int getElg04() {
		return elg04;
	}

	public void setElg04(int elg04) {
		this.elg04 = elg04;
	}

	public int getElg05() {
		return elg05;
	}

	public void setElg05(int elg05) {
		this.elg05 = elg05;
	}

	public int getElg06() {
		return elg06;
	}

	public void setElg06(int elg06) {
		this.elg06 = elg06;
	}

	public int getElg07() {
		return elg07;
	}

	public void setElg07(int elg07) {
		this.elg07 = elg07;
	}

	public int getElg08() {
		return elg08;
	}

	public void setElg08(int elg08) {
		this.elg08 = elg08;
	}

	public int getElg09() {
		return elg09;
	}

	public void setElg09(int elg09) {
		this.elg09 = elg09;
	}

	public int getElg10() {
		return elg10;
	}

	public void setElg10(int elg10) {
		this.elg10 = elg10;
	}

	public int getElg11() {
		return elg11;
	}

	public void setElg11(int elg11) {
		this.elg11 = elg11;
	}

	public int getElg12() {
		return elg12;
	}

	public void setElg12(int elg12) {
		this.elg12 = elg12;
	}

	public int getElg13() {
		return elg13;
	}

	public void setElg13(int elg13) {
		this.elg13 = elg13;
	}

	public int getElg14() {
		return elg14;
	}

	public void setElg14(int elg14) {
		this.elg14 = elg14;
	}

	public int getElg15() {
		return elg15;
	}

	public void setElg15(int elg15) {
		this.elg15 = elg15;
	}

	public int getElg16() {
		return elg16;
	}

	public void setElg16(int elg16) {
		this.elg16 = elg16;
	}

	public int getElg17() {
		return elg17;
	}

	public void setElg17(int elg17) {
		this.elg17 = elg17;
	}

	public int getCurentdate() {
		return curentdate;
	}

	public void setCurentdate(int curentdate) {
		this.curentdate = curentdate;
	}

	public void addrept() {
		try {
			String command = "insert into tbl_reception_endofyear_evaluation values(0,"
					+ this.getSid()
					+ ","
					+ this.getElg01()
					+ ","
					+ this.getElg02()
					+ ","
					+ this.getElg03()
					+ ","
					+ this.getElg04()
					+ ","
					+ this.getElg05()
					+ ","
					+ this.getElg06()
					+ ","
					+ this.getElg07()
					+ ","
					+ this.getElg08()
					+ ","
					+ this.getElg09()
					+ ","
					+ this.getElg10()
					+ ","
					+ this.getElg11()
					+ ","
					+ this.getElg12()
					+ ","
					+ this.getElg13()
					+ ","
					+ this.getElg14()
					+ ","
					+ this.getElg15()
					+ ","
					+ this.getElg16()
					+ ","
					+ this.getElg17()
					+ ","
					+ this.getCurentdate() + ")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void updateNarration() {
		try {
			String command = "update tbl_reception_endofyear_evaluation set elg01="
					+ this.getElg01()
					+ ",elg02="
					+ this.getElg02()
					+ ",elg03="
					+ this.getElg03()
					+ ",elg04="
					+ this.getElg04()
					+ ",elg05="
					+ this.getElg05()
					+ ",elg06="
					+ this.getElg06()
					+ ",elg07="
					+ this.getElg07()
					+ ",elg08="
					+ this.getElg08()
					+ ",elg09="
					+ this.getElg09()
					+ ",elg10="
					+ this.getElg10()
					+ ",elg11="
					+ this.getElg11()
					+ ",elg12="
					+ this.getElg12()
					+ ",elg13="
					+ this.getElg13()
					+ ",elg14="
					+ this.getElg14()
					+ ",elg15="
					+ this.getElg15()
					+ ",elg16="
					+ this.getElg16()
					+ ",elg17="
					+ this.getElg17() + " where sid = " + this.getSid();
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Receptionendyearassment> selectall(String sid) {
		List<Receptionendyearassment> list = new ArrayList<Receptionendyearassment>();
		Receptionendyearassment h = null;
		try {
			String query = "SELECT * FROM tbl_reception_endofyear_evaluation where sid='"
					+ sid + "'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Receptionendyearassment(rSet.getString("sid"),
						rSet.getInt("elg01"), rSet.getInt("elg02"),
						rSet.getInt("elg03"), rSet.getInt("elg04"),
						rSet.getInt("elg05"), rSet.getInt("elg06"),
						rSet.getInt("elg07"), rSet.getInt("elg08"),
						rSet.getInt("elg09"), rSet.getInt("elg10"),
						rSet.getInt("elg11"), rSet.getInt("elg12"),
						rSet.getInt("elg13"), rSet.getInt("elg14"),
						rSet.getInt("elg15"), rSet.getInt("elg16"),
						rSet.getInt("elg17"));
				list.add(h);
			}// end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Receptionendyearassment> selectalld() {
		List<Receptionendyearassment> list = new ArrayList<Receptionendyearassment>();
		Receptionendyearassment h = null;
		try {
			String query = "SELECT * FROM tbl_reception_endofyear_evaluation";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				h = new Receptionendyearassment(rSet.getString("sid"),
						rSet.getInt("elg01"), rSet.getInt("elg02"),
						rSet.getInt("elg03"), rSet.getInt("elg04"),
						rSet.getInt("elg05"), rSet.getInt("elg06"),
						rSet.getInt("elg07"), rSet.getInt("elg08"),
						rSet.getInt("elg09"), rSet.getInt("elg10"),
						rSet.getInt("elg11"), rSet.getInt("elg12"),
						rSet.getInt("elg13"), rSet.getInt("elg14"),
						rSet.getInt("elg15"), rSet.getInt("elg16"),
						rSet.getInt("elg17"));
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
