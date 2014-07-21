/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * @author alemayehu
 * 
 */
public class Utility {
	public static Date getCurrentDate() {
		java.util.Date d = new java.util.Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		String currentDate = dateFormat.format(cal.getTime());
		Date accountCreationDate = Date.valueOf(currentDate);
		return accountCreationDate;
	}

	public static String getOnlyTheseCharactersAsStringFromThisStringValue(
			String str, int startIndex, int endIndex) {
		String result = str.substring(startIndex, endIndex);
		return result;
	}
}// end class
