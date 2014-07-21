<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%

	List<Level> levels = Level.getAllLevels();
	Iterator<Level> levItr = levels.iterator();
	List<Section> s = null;
	List<SectionsInLevel> sections = new ArrayList<SectionsInLevel>();//at the end it will have all the levels and the sections in each level
	while(levItr.hasNext()){
		Level level = levItr.next();
		SectionsInLevel sec = new SectionsInLevel();
		sec.setLevelId(level.getId());
		s = ReportAnalyzer.getSections(level.getId());
		sec.setSection(s);
		sections.add(sec);
	}
	//now generate the report
	List<SummaryOfPrimary> summary = new ArrayList<SummaryOfPrimary>();//for a single row
	Iterator<SectionsInLevel> secItr = sections.iterator();//iterate through alll the levels and sections
	List<Section> sec = new ArrayList<Section>();
	while(secItr.hasNext()){
		SectionsInLevel sil = secItr.next();//levels + section
		sec = sil.getSection();//sections in the current level
		Iterator<Section> s1 = sec.iterator();
		while(s1.hasNext()){
			SummaryOfPrimary sum = new SummaryOfPrimary();
			int boy=0,girl=0,intr=0,local=0,intstaff=0,locstaff=0;
			Section s2 = s1.next();
			//here collect all data about the report
			boy = ReportAnalyzer.countBoysAndGirls(s2.getId(), "male" ) + ReportAnalyzer.countStaff(s2.getId(), "international","father") + ReportAnalyzer.countStaff(s2.getId(), "local","father");
			girl = ReportAnalyzer.countBoysAndGirls(s2.getId(), "female" ) + ReportAnalyzer.countStaff(s2.getId(), "international","mother") + ReportAnalyzer.countStaff(s2.getId(), "local","mother");
			intr = ReportAnalyzer.countInternationalAndLocal(s2.getId(), "international");
			local = ReportAnalyzer.countInternationalAndLocal(s2.getId(), "local");
			intstaff = ReportAnalyzer.countStaff(s2.getId(), "international","mother")+ReportAnalyzer.countStaff(s2.getId(), "international","father");
			locstaff = ReportAnalyzer.countStaff(s2.getId(), "local","mother")+ ReportAnalyzer.countStaff(s2.getId(), "local","father");
			sum.setLevelId(sil.getLevelId());
			sum.setSectionName(Section.getSection(s2.getId()).getSectionName());
			sum.setBoys(boy);
			sum.setGirls(girl);
			sum.setInternational(intr);
			sum.setLocal(local - (locstaff+intstaff));
			sum.setTotal(boy+girl);
			sum.setLocalStaff(locstaff);
			sum.setIntStaff(intstaff);
			summary.add(sum);
		}
	}
	
	//now display the information on a table
	
%>
<div id="printReportDiv" width="100%">
<table border="1" width="100%">
	<tr style="background:#eeeeee">
		<td>Section</td><td>Boys</td><td>Girls</td><td>Local</td><td>International</td><td>Staff</td><td>Total</td><td> Grand Total</td><td>Local Student</td><td>Local Staff</td>
		<td>International Student</td><td>International Students</td>
	</tr>
	<%
		Iterator<SummaryOfPrimary> summaryItr = summary.iterator();
		int prev = -1;
		int ind = 0;
		int gTotal = 0,localStudent = 0,localStaff = 0,internationalStudent = 0,internationalStaff = 0;
		while(summaryItr.hasNext()){
			SummaryOfPrimary sop = summaryItr.next();
			if(prev != sop.getLevelId()){
			ind = ReportAnalyzer.countRows(summary, sop.getLevelId());
			prev = sop.getLevelId();
				if(ind-1 != 0){
				%>
				<tr>
				<td><%= sop.getSectionName()%></td>
				<td><%= sop.getBoys()%></td>
				<td><%= sop.getGirls()%></td>
				<td><%= sop.getLocal()%></td>
				<td><%= sop.getInternational()%></td>
				<td><%=	sop.getLocalStaff()+sop.getIntStaff() %></td>
				<td><%= sop.getTotal()%></td>
				<td></td><td></td><td></td><td></td><td></td>
				<%-- <td><div id=<%="g"+sop.getLevelId() %>></div></td>
				<td><div id=<%="ls"+sop.getLevelId() %>></div></td>
				<td><div id=<%="lf"+sop.getLevelId() %>></div></td>
				<td><div id=<%="is"+sop.getLevelId() %>></div></td>
				<td><div id=<%="if"+sop.getLevelId() %>></div></td> --%>
				</tr>
				<%
				gTotal += sop.getTotal();
				localStudent += sop.getLocal();
				localStaff += sop.getLocalStaff();
				internationalStudent += sop.getInternational();
				internationalStaff += sop.getIntStaff();
				ind -= 1;
				}
				else{//last row i.e a level with one section
					gTotal += sop.getTotal();
					localStudent += sop.getLocal();
					localStaff += sop.getLocalStaff();
					internationalStudent += sop.getInternational();
					internationalStaff += sop.getIntStaff();
					
					
					%>
					<tr>
						<td><%= sop.getSectionName()%></td>
						<td><%= sop.getBoys()%></td>
						<td><%= sop.getGirls()%></td>
						<td><%= sop.getLocal()%></td>
						<td><%= sop.getInternational()%></td>
						<td><%=	sop.getLocalStaff()+sop.getIntStaff() %></td>
						<td><%= sop.getTotal()%></td>
						<td><%=gTotal %></td>
						<td><%=localStudent %></td>
						<td><%=localStaff %></td>
						<td><%=internationalStudent %></td>
						<td><%=internationalStaff %></td>
					<%
					ind = 0;gTotal=0;localStaff=0;internationalStudent=0;internationalStaff=0;
				}
			}
			else{
				if(ind - 1 != 0){
					gTotal += sop.getTotal();
					localStudent += sop.getLocal();
					localStaff += sop.getLocalStaff();
					internationalStudent += sop.getInternational();
					internationalStaff += sop.getIntStaff();
					ind -= 1;
				%>
					<tr>
					<td><%= sop.getSectionName()%></td>
					<td><%= sop.getBoys()%></td>
					<td><%= sop.getGirls()%></td>
					<td><%= sop.getLocal()%></td>
					<td><%= sop.getInternational()%></td>
					<td><%=	sop.getLocalStaff()+sop.getIntStaff() %></td>
					<td><%= sop.getTotal()%></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					</tr>
				<%
				}
				else{
					gTotal += sop.getTotal();
					localStudent += sop.getLocal();
					localStaff += sop.getLocalStaff();
					internationalStudent += sop.getInternational();
					internationalStaff += sop.getIntStaff();
					%>
					<tr>
						<td><%= sop.getSectionName()%></td>
						<td><%= sop.getBoys()%></td>
						<td><%= sop.getGirls()%></td>
						<td><%= sop.getLocal()%></td>
						<td><%= sop.getInternational()%></td>
						<td><%=	sop.getLocalStaff()+sop.getIntStaff() %></td>
						<td><%= sop.getTotal()%></td>
						<td><%=gTotal %></td>
						<td><%=localStudent %></td>
						<td><%=localStaff %></td>
						<td><%=internationalStudent %></td>
						<td><%=internationalStaff %></td>
					<%
					ind = 0;gTotal=0;localStaff=0;internationalStudent=0;internationalStaff=0;
				}
			}
		}
	%>

</table>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a> 