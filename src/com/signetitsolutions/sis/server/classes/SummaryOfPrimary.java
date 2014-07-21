package com.signetitsolutions.sis.server.classes;

public class SummaryOfPrimary {
	private int levelId;
	private String sectionName;
	private int boys;
	private int girls;
	private int local;
	private int international;
	private int intStaff;
	private int localStaff;
	private int total;

	/**
	 * 
	 */
	public SummaryOfPrimary() {
		super();
	}

	/**
	 * @param sectionName
	 * @param boys
	 * @param girls
	 * @param local
	 * @param international
	 * @param staff
	 * @param total
	 */

	public String getSectionName() {
		return sectionName;
	}

	/**
	 * @param sectionName
	 * @param boys
	 * @param girls
	 * @param local
	 * @param international
	 * @param intStaff
	 * @param localStaff
	 * @param total
	 */
	public SummaryOfPrimary(String sectionName, int boys, int girls, int local,
			int international, int intStaff, int localStaff, int total) {
		super();
		this.sectionName = sectionName;
		this.boys = boys;
		this.girls = girls;
		this.local = local;
		this.international = international;
		this.intStaff = intStaff;
		this.localStaff = localStaff;
		this.total = total;
	}

	public int getLevelId() {
		return levelId;
	}

	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public int getBoys() {
		return boys;
	}

	public void setBoys(int boys) {
		this.boys = boys;
	}

	public int getGirls() {
		return girls;
	}

	public void setGirls(int girls) {
		this.girls = girls;
	}

	public int getLocal() {
		return local;
	}

	public void setLocal(int local) {
		this.local = local;
	}

	public int getInternational() {
		return international;
	}

	public void setInternational(int international) {
		this.international = international;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getIntStaff() {
		return intStaff;
	}

	public void setIntStaff(int intStaff) {
		this.intStaff = intStaff;
	}

	public int getLocalStaff() {
		return localStaff;
	}

	public void setLocalStaff(int localStaff) {
		this.localStaff = localStaff;
	}

}
