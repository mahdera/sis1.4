<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<br/><br/>
<%
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	List<Applicant> applicant = ReportAnalyzer.getApplicantIDs(sectionId);
	List<Subject> subject = ReportAnalyzer.getSubjectIDs(sectionId);
	List<ApplicantDetail> applicantDetail = new ArrayList<ApplicantDetail>();
	//List<SubjectsTaken> subTaken = new ArrayList<SubjectsTaken>();
	Iterator<Applicant> appItr = applicant.iterator();
	Iterator<Subject> subItr = subject.iterator();
	Applicant app;
	while(appItr.hasNext()){
		app = appItr.next();
		ApplicantDetail appDetail = new ApplicantDetail();
		List<SubjectsTaken> subTaken = new ArrayList<SubjectsTaken>();
		appDetail.setId(app.getId());
		appDetail.setFirstName(app.getFirstName());
		appDetail.setMiddleName(app.getMiddleName());
		appDetail.setLastName(app.getLastName());
		while(subItr.hasNext()){
			Subject sub = subItr.next();
			SubjectsTaken subTaken1 = ReportAnalyzer.getSubjectTakenByStudent(app.getId(), sectionId,sub.getId());
			subTaken.add(subTaken1);
		}
		appDetail.setSubjectsTaken(subTaken);
		applicantDetail.add(appDetail);
	}
	
	%>
	<div div="printReportDiv" width="100%">
		<table width="100%">
			<tr>
				<td>Class</td>
				<%
					List<Subject> ss = ReportAnalyzer.getSubjectIDs(sectionId);
					Iterator<Subject> ssItr = ss.iterator();
					while(ssItr.hasNext()){
						Subject s = ssItr.next();
						%>
						<td colspan="4" align="center"><%=Subject.getSubject(s.getId()).getSubjectName() %></td>
						<%
						}
				%>
			</tr>
			<tr>
				<td><%= Section.getSection(sectionId).getSectionName() %></td>
				<%
					for(int i=1;i<=subject.size();i++){
						%>
						<td>Grade</td><td>Eff</td><td>Cond</td><td>Exam</td>
						<%
					}	
				%>
			</tr>
			<%
				Iterator<ApplicantDetail> adItr = applicantDetail.iterator();
				while(adItr.hasNext()){
					ApplicantDetail ad = adItr.next();
					%>
					<tr>
					<td><%=ad.getFirstName()+" "+ad.getMiddleName() %></td>
					<%
					Iterator<SubjectsTaken> st = ad.getSubjectsTaken().iterator();
					while(st.hasNext()){
						SubjectsTaken st1 = st.next();
						%>
						<td><%=st1.getGrade() %></td><td><%=st1.getEffort() %></td><td><%=st1.getCond() %></td><td><%=st1.getExam() %></td>
						<%
					}
					%>
					</tr>
					<%
				}
			%>
		</table>
	</div>
	<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
	<div>
		<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a>
	</div> 
		
	<%-- <%
	/*  Iterator<ApplicantDetail> appDetailItr = applicantDetail.iterator();
	Iterator<SubjectsTaken> subTaken2 = null;
	SubjectsTaken st=null;
	while(appDetailItr.hasNext()){
		ApplicantDetail ad = appDetailItr.next();
		System.out.print(ad.getFirstName());
		subTaken2 = ad.getSubjectsTaken().iterator();
		while(subTaken2.hasNext()){
			st = subTaken2.next();
			System.out.print(st.getCond()+" "+st.getEffort());
		}
	} 
 */
%> --%>
