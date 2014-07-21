package com.signetitsolutions.sis.server.classes;

import java.util.ArrayList;
import java.util.List;

public class SectionsInLevel {
	private int levelId;
	private List<Section> section;

	/**
	 * @param levelId
	 */

	public SectionsInLevel(int levelId) {
		super();
		this.levelId = levelId;
	}

	/**
	 * 
	 */
	public SectionsInLevel() {
		super();
	}

	/**
	 * @param section
	 */
	public SectionsInLevel(List<Section> section) {
		super();
		this.section = section;
	}

	public int getLevelId() {
		return levelId;
	}

	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}

	public List<Section> getSection() {
		return section;
	}

	public void setSection(List<Section> section) {
		this.section = section;
	}

}
