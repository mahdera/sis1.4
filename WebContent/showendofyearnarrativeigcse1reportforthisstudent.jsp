<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%
 String fullName = null, dateOfBirth = null;

	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String studentId = request.getParameter("studentId");
	
	String accYear = Acadamicyear.accayString();
	
	String gradeCard = null;
	String firstColl = null;
	String secondColl = null;
	String thirdColl = null;
	String fullSection = null;
	List<EndOfYearGradeCard> egc1 = null;
	List<EndOfYearGradeCard> egc2 = null;

	if((sectionId >= 35 && sectionId <= 37) || sectionId == 47){
		egc1 = ReportAnalyzer.getGradeCard(studentId, 1, sectionId);
		egc2 = ReportAnalyzer.getGradeCard(studentId, 2, sectionId);
		firstColl = "Mid Term Grades(Oct)";
		secondColl = "Term 1 Grades(Dec)";
		thirdColl = "NARRATIVE REPORT DECEMBER " + accYear.substring(0, 4) + " - Comment";
	}else if(sectionId >= 38 && sectionId <= 40){
		egc1 = ReportAnalyzer.getGradeCard(studentId, 2, sectionId);
		egc2 = ReportAnalyzer.getGradeCard(studentId, 3, sectionId);		
		firstColl = "First Term Grade(Dec)";
		secondColl = "Mock Exam Grades(Jan)";
		thirdColl = "NARRATIVE REPORT FEBRUARY " + accYear.substring(5, 9) + " - Comment";
	}
	Iterator<EndOfYearGradeCard> egcItr1 = egc1.iterator();
	Iterator<EndOfYearGradeCard> egcItr2 = egc2.iterator();
	
	int tardi1 = ReportAnalyzer.getTardi(studentId, "08, 09, 10, 11, 12");
	int tardi2 = ReportAnalyzer.getTardi(studentId, "01, 02, 03, 04");
	int tardi3 = ReportAnalyzer.getTardi(studentId, "05, 06");
	int absent1 = ReportAnalyzer.getAbsent(studentId, "08, 09, 10, 11, 12");
	int absent2 = ReportAnalyzer.getAbsent(studentId, "01, 02, 03, 04");
	int absent3 = ReportAnalyzer.getAbsent(studentId, "05, 06");
	
	int totalPointsG1 = 0, totalPointsG2 = 0;
	double averageG1 = 0.0, averageG2 = 0.0;
	int numOfSub = 0;

	if(sectionId == 35){
		fullSection = "IGCSE1 - Year 10 A";
	}else if(sectionId == 36){
		fullSection = "IGCSE1 - Year 10 B";
	}else if(sectionId == 37){
		fullSection = "IGCSE1 - Year 10 C";
	}else if(sectionId == 47){
		fullSection = "IGCSE1 - Year 10 D";
	}else if(sectionId == 38){
		fullSection = "IGCSE2 - Year 11 A";
	}else if(sectionId == 39){
		fullSection = "IGCSE2 - Year 11 B";
	}else if(sectionId == 40){
		fullSection = "IGCSE2 - Year 11 C";
	}

	
	if(egc1.size()>0 || egc2.size()>0 ){
		if(egc1.size()>0){
			fullName = egc1.get(0).getFirstName()+" "+egc1.get(0).getMiddleName()+" "+egc1.get(0).getLastName();
			dateOfBirth = egc1.get(0).getDateOfBirth();
		}else if(egc2.size()>0){
			fullName = egc2.get(0).getFirstName()+" "+egc2.get(0).getMiddleName()+" "+egc2.get(0).getLastName();
			dateOfBirth = egc2.get(0).getDateOfBirth();
		}
%>
<style type="text/css">
table,th,td
{
border:1px solid black;
}
</style>
<div id="printReportDiv" width="100%">
<div style="width:100%" align="center">
<h3 style="padding-bottom: 0; padding-top: 0" align="center">SANDFORD INTERNATIONAL SCHOOL<br/>
	(Administered Under Sandford International Endowment)</h3>	
<table style="padding-bottom: 0; padding-top: 0; border: 0; width: 90%">
	<tr height="2px" style="padding-bottom: 0; padding-top: 0; border: 0">
		<td style="padding-bottom: 0; padding-top: 0; border: 0; font-size: 18; font: bold; font-weight: bolder" align="left">Student :<%= fullName.toUpperCase() %>
		</td>		
		
		<td style="padding-bottom: 0; padding-top: 0; border: 0; font-size: 18; font: bold; font-weight: bolder" align="right"><%=fullSection %>
		</td>
	</tr>
	<tr height="2px" style="padding-bottom: 0; padding-top: 0; border: 0">
		<td style="padding-bottom: 0; padding-top: 0; border: 0; font-size: 18; font: bold; font-weight: bolder" align="left">Date of Birth : <%=dateOfBirth %>
		</td>
		<td style="padding-bottom: 0; padding-top: 0; border: 0"></td><td style="padding-bottom: 0; padding-top: 0; border: 0"></td>
	</tr>
</table>
<table style="padding-bottom: 0; padding-top: 0; border-collapse:collapse; border: 1px solid black; width: 90%">
		<tr height="2px" style="background:#eeeeee; border: 1px solid black">
			<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" rowspan="2" width="130px" align="center">Subject</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" rowspan="2" width="50px" align="center">Teacher</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" colspan="2" align="center"><%= firstColl %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" colspan="2" align="center"><%= secondColl %></td><td style="padding-bottom: 0; padding-top: 0; border-bottom: 1px solid black"></td>
		</tr>
		<tr height="2px" style="border: 1px solid black">
			<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="50px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="50px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="50px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="50px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black"  align="center"><%= thirdColl %></td>
		</tr>
		<%
			while(egcItr1.hasNext() || egcItr2.hasNext()){
				EndOfYearGradeCard e1 = null, e2 = null;
				String subject = null, teacher = null, grade1 = "", grade2 = "", effort1 = "", effort2 = "", narrative2 = "";
				double g1 = 0.0, g2 = 0.0;
				String finalGrade = "";
				if(egcItr1.hasNext()){
					e1 = egcItr1.next();
					subject = Subject.getSubject(e1.getSubjectId()).getSubjectName();
											
						teacher = Teacher.getTeacher(e1.getTeacherId()).getShortname();
						grade1 = e1.getGrade();
						effort1 = e1.getEffort();
				}
				if(egcItr2.hasNext()){
					e2 = egcItr2.next();
					subject = Subject.getSubject(e2.getSubjectId()).getSubjectName();
							
						teacher = Teacher.getTeacher(e2.getTeacherId()).getShortname();
						grade2 = e2.getGrade();
						effort2 = e2.getEffort();
						narrative2 = e2.getCond();
				}
				if(grade1.equalsIgnoreCase("A*")){
					g1 = 7.0;
				}else if(grade1.equalsIgnoreCase("A")){
					g1 = 6.0;
				}else if(grade1.equalsIgnoreCase("B")){
					g1 = 5.0;
				}else if(grade1.equalsIgnoreCase("C")){
					g1 = 4.0;
				}else if(grade1.equalsIgnoreCase("D")){
					g1 = 3.5;
				}else if(grade1.equalsIgnoreCase("E")){
					g1 = 3.0;
				}else if(grade1.equalsIgnoreCase("F")){
					g1 = 2.5;
				}else if(grade1.equalsIgnoreCase("G")){
					g1 = 2.0;
				}else if(grade1.equalsIgnoreCase("U")){
					g1 = 1.0;
				}else if(!grade1.equalsIgnoreCase("")){
					g1 = Integer.parseInt(grade1);
				}
				
				if(grade2.equalsIgnoreCase("A*")){
					g2 = 7.0;
				}else if(grade2.equalsIgnoreCase("A")){
					g2 = 6.0;
				}else if(grade2.equalsIgnoreCase("B")){
					g2 = 5.0;
				}else if(grade2.equalsIgnoreCase("C")){
					g2 = 4.0;
				}else if(grade2.equalsIgnoreCase("D")){
					g2 = 3.5;
				}else if(grade2.equalsIgnoreCase("E")){
					g2 = 3.0;
				}else if(grade2.equalsIgnoreCase("F")){
					g2 = 2.5;
				}else if(grade2.equalsIgnoreCase("G")){
					g2 = 2.0;
				}else if(grade2.equalsIgnoreCase("U")){
					g2 = 1.0;
				}else if(!grade2.equalsIgnoreCase("")){
					g2 = Integer.parseInt(grade2);
				}
				
				%>
					<tr height="5px" style="border: 1px solid black">
					<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=subject %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=teacher %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left"><%=narrative2 %></td>
					</tr>
				<%
				totalPointsG1 += g1; totalPointsG2 += g2; 				
				numOfSub++;
			}
		averageG1 =  totalPointsG1/numOfSub; averageG2 =  totalPointsG2/numOfSub;
		%>
		<tr style="border: 1px solid black">
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> TOTAL IGCSE POINTS</td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG1 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black; font-size: 8" align="left">FORM TUTOR COMMENT:</td>
		</tr>
		<tr style="border: 1px solid black">
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> Average</td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG1 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black; font-size: 8" align="left" >HEAD OF YEAR COMMENT:</td>
		</tr>
	</table>
</div>
<div style="width:25%;float:left;padding-left:5%" >
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:90%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black" align="left" colspan="3">Academic Grades & Grade Conversion</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">A*</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Exceptional</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">7.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">A</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Excellent</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">6.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">B</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Above Average</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">5.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">C</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Satisfactory</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">4.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">D</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Unsatisfactory</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">3.5</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">E</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Failing</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">3.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">F</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Fail</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">2.5</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">G</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Fail</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">2.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">U</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">Ungraded</td><td style="padding-bottom: 0; padding-top: 0; font-size: 8; border: 1px solid black">1.0</td></tr>
</table>
</div>

<div style="width:25%;float:left;padding-left:2%" >
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:80%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; font-size: 10; border: 1px solid black" align="left" colspan="2">Effort</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 10; border: 1px solid black" align="center">A</td><td style="padding-bottom: 0; padding-top: 0;  border: 1px solid black">Excellent</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 10; border: 1px solid black" align="center">B</td><td style="padding-bottom: 0; padding-top: 0;  border: 1px solid black">Good</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 10; border: 1px solid black" align="center">C</td><td style="padding-bottom: 0; padding-top: 0;  border: 1px solid black">Satisfactory</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 10; border: 1px solid black" align="center">D</td><td style="padding-bottom: 0; padding-top: 0;  border: 1px solid black">Mediocre</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; font-size: 10; border: 1px solid black" align="center">E</td><td style="padding-bottom: 0; padding-top: 0;  border: 1px solid black">Elementary/FAIL</td></tr>
</table><br/>
</div>
<%} %>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
</div><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a> 