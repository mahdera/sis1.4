package com.signetitsolutions.sis.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Feelookup {
	private int lookupId=0;
	private int levelId=0;
	private double localTutionFee=0.0;
	private double localCpitalLevy=0.0;
	private double localAdmissionFee=0.0;
	
	private double staffTutionFee=0.0;
	private double staffCapitalLevy=0.0;
	private double staffAdmissionFee=0.0;
	
	private double internationalTutionFee=0.0;
	private double internationalCapitalLevy=0.0;
	private double internationalAdmissionFee=0.0;
	
	
	
	public Feelookup() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Feelookup(int lookupId, int levelId, double localTutionFee,
			double localCpitalLevy, double localAdmissionFee,
			double staffTutionFee, double staffCapitalLevy,
			double staffAdmissionFee, double internationalTutionFee,
			double internationalCapitalLevy, double internationalAdmissionFee) {
		super();
		this.lookupId = lookupId;
		this.levelId = levelId;
		this.localTutionFee = localTutionFee;
		this.localCpitalLevy = localCpitalLevy;
		this.localAdmissionFee = localAdmissionFee;
		this.staffTutionFee = staffTutionFee;
		this.staffCapitalLevy = staffCapitalLevy;
		this.staffAdmissionFee = staffAdmissionFee;
		this.internationalTutionFee = internationalTutionFee;
		this.internationalCapitalLevy = internationalCapitalLevy;
		this.internationalAdmissionFee = internationalAdmissionFee;
	}
public static List<Feelookup> selectAllfee(){
	
	List<Feelookup> feeList = new ArrayList<Feelookup>();
	
	try {
		String query = "select * from lu_fee";
		ResultSet rs = DBConnection.readFromDatabase(query);
		while (rs.next()) {
			Feelookup fee = new Feelookup(rs.getInt("id"),rs.getInt("level_id"),
					                      rs.getDouble("local_tution_fee"),rs.getDouble("local_capital_levy"),rs.getDouble("local_addmission_fee"),
					                      rs.getDouble("staff_tution_fee"),rs.getDouble("staff_levy"),rs.getDouble("staff_admission_fee"),
					                      rs.getDouble("international_tution_fee"),rs.getDouble("international_levy"),rs.getDouble("international_admission_fee"));
			feeList.add(fee);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		DBConnection.disconnectDatabase();
	}
	return feeList;
}
public static void updateLookup(int levelId,double localTutionFee,double localAdmissionFee,double localCapitalLevy,
		                        double staffTutionFee,double staffAdmissionFee,double staffCapitalLevy,
		                        double internationalTutionFee,double internationalAdmissionFee,double internationalCapitalLevy){
	
	try {
		String command = "update lu_fee set local_tution_fee =" + localTutionFee
				+ ",local_addmission_fee =" + localAdmissionFee
				+ ",local_capital_levy=" + localCapitalLevy
				+ ",international_tution_fee ="+ internationalTutionFee
				+ ",international_admission_fee ="+ internationalAdmissionFee
				+ ",international_levy ="+ internationalCapitalLevy
				+ ",staff_tution_fee ="+ staffTutionFee
				+ ",staff_admission_fee ="+ staffAdmissionFee
				+ ",staff_levy ="+ staffCapitalLevy 
				+ " where level_id = '" + levelId + "'";
		DBConnection.writeToDatabase(command);
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		DBConnection.disconnectDatabase();
	}
}
	public int getLookupId() {
		return lookupId;
	}
	public void setLookupId(int lookupId) {
		this.lookupId = lookupId;
	}
	public int getLevelId() {
		return levelId;
	}
	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}
	public double getLocalTutionFee() {
		return localTutionFee;
	}
	public void setLocalTutionFee(double localTutionFee) {
		this.localTutionFee = localTutionFee;
	}
	public double getLocalCpitalLevy() {
		return localCpitalLevy;
	}
	public void setLocalCpitalLevy(double localCpitalLevy) {
		this.localCpitalLevy = localCpitalLevy;
	}
	public double getLocalAdmissionFee() {
		return localAdmissionFee;
	}
	public void setLocalAdmissionFee(double localAdmissionFee) {
		this.localAdmissionFee = localAdmissionFee;
	}
	public double getStaffTutionFee() {
		return staffTutionFee;
	}
	public void setStaffTutionFee(double staffTutionFee) {
		this.staffTutionFee = staffTutionFee;
	}
	public double getStaffCapitalLevy() {
		return staffCapitalLevy;
	}
	public void setStaffCapitalLevy(double staffCapitalLevy) {
		this.staffCapitalLevy = staffCapitalLevy;
	}
	public double getStaffAdmissionFee() {
		return staffAdmissionFee;
	}
	public void setStaffAdmissionFee(double staffAdmissionFee) {
		this.staffAdmissionFee = staffAdmissionFee;
	}
	public double getInternationalTutionFee() {
		return internationalTutionFee;
	}
	public void setInternationalTutionFee(double internationalTutionFee) {
		this.internationalTutionFee = internationalTutionFee;
	}
	public double getInternationalCapitalLevy() {
		return internationalCapitalLevy;
	}
	public void setInternationalCapitalLevy(double internationalCapitalLevy) {
		this.internationalCapitalLevy = internationalCapitalLevy;
	}
	public double getInternationalAdmissionFee() {
		return internationalAdmissionFee;
	}
	public void setInternationalAdmissionFee(double internationalAdmissionFee) {
		this.internationalAdmissionFee = internationalAdmissionFee;
	}
	

}
