<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	
	if(true)
	{
	List<Feelookup> lookupList = Feelookup.selectAllfee();
	Iterator<Feelookup> lookupItr = lookupList.iterator();
	
	out.print("<table width='100%'>" );
	out.print("<caption>National and International Students Fee</caption>");
	out.print("<th>NO.</th>");
	out.print("<th>Level</th>");	
	out.print("<th>Local Tution Fee</th>");	
	out.print("<th>Local Capital Levy</th>");
	out.print("<th>Local Admission Fee</th>");
	out.print("<th>International Tution Fee</th>");
	out.print("<th>International Capital Levy</th>");
	out.print("<th>International Admission Fee</th>");
	out.print("<th>Staff Tution Fee</th>");	
	out.print("<th>Staff Capital Levy</th>");
	out.print("<th>Staff Admission Fee</th>");
	out.print("<th>Update</th>");
	
	int ctr = 1;
	while(lookupItr.hasNext()){
		Feelookup feeLookup = lookupItr.next();
		
		if(ctr % 2 == 0)
			out.print("<tr>");
		else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");			
			out.print("<td>");
				out.print(feeLookup.getLevelId());
			out.print("</td>");
			out.print("<td><input type=\"text\" value=");
				out.print(feeLookup.getLocalTutionFee());
				out.print("></td>");
			out.print("<td><input type=\"text\" value=");
				out.print(feeLookup.getLocalCpitalLevy());
				out.print("></td>");
			out.print("<td><input type=\"text\" value=");
				out.print(feeLookup.getLocalAdmissionFee());
				out.print("></td>");
			out.print("<td><input type=\"text\" value=");
			out.print("$"+ feeLookup.getInternationalTutionFee());
			out.print("></td>");
		out.print("<td><input type=\"text\" value=");
		out.print("$"+ feeLookup.getInternationalCapitalLevy());
		out.print("></td>");
	out.print("<td><input type=\"text\" value=");
	out.print("$"+ feeLookup.getInternationalAdmissionFee());
	out.print("></td>");
out.print("<td><input type=\"text\" value=");
out.print(feeLookup.getStaffTutionFee());
out.print("></td>");
out.print("<td><input type=\"text\" value=");
out.print(feeLookup.getStaffCapitalLevy());
out.print("></td>");
out.print("<td><input type=\"text\" value=");
out.print(feeLookup.getStaffAdmissionFee());
out.print("></td>");
out.print("<td><input type='button' value='Update' />");
out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>