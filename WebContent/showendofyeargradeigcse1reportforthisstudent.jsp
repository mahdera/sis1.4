<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Date" %>
<%

	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String studentId =request.getParameter("studentId");
	
	String accYear = Acadamicyear.accayString();
	
	List<EndOfYearGradeCard> egc1 = ReportAnalyzer.getGradeCard(studentId, 2, sectionId);
	List<EndOfYearGradeCard> egc2 = ReportAnalyzer.getGradeCard(studentId, 4, sectionId);
	List<EndOfYearGradeCard> egc3 = ReportAnalyzer.getGradeCard(studentId, 6, sectionId);
	List<EndOfYearGradeCard> egc4 = ReportAnalyzer.getGradeCard(studentId, 7, sectionId);
	
	Iterator<EndOfYearGradeCard> egcItr1 = egc1.iterator();
	Iterator<EndOfYearGradeCard> egcItr2 = egc2.iterator();
	Iterator<EndOfYearGradeCard> egcItr3 = egc3.iterator();
	Iterator<EndOfYearGradeCard> egcItr4 = egc4.iterator();
		
	int tardi1 = ReportAnalyzer.getTardi(studentId, "08, 09, 10, 11, 12");
	int tardi2 = ReportAnalyzer.getTardi(studentId, "01, 02, 03, 04");
	int tardi3 = ReportAnalyzer.getTardi(studentId, "05, 06");
	int absent1 = ReportAnalyzer.getAbsent(studentId, "08, 09, 10, 11, 12");
	int absent2 = ReportAnalyzer.getAbsent(studentId, "01, 02, 03, 04");
	int absent3 = ReportAnalyzer.getAbsent(studentId, "05, 06");
	
	double totalPointsG1 = 0, totalPointsG2 = 0,totalPointsG3 = 0, totalPointsG4 = 0, totalPointsGF = 0;
	double averageG1 = 0.0, averageG2 = 0.0, averageG3 = 0.0, averageG4 = 0.0, averageGF = 0.0;
	int numOfSub = 0;
	
	String gradeCard = null;
	String fullSection = null;
	if(sectionId == 35){
		fullSection = "IGCSE - Year 10 A";
	}else if(sectionId == 36){
		fullSection = "IGCSE - Year 10 B";
	}else if(sectionId == 37){
		fullSection = "IGCSE - Year 10 C";
	}else if(sectionId == 38){
		fullSection = "IGCSE - Year 11 A";
	}else if(sectionId == 39){
		fullSection = "IGCSE - Year 11 B";
	}else if(sectionId == 40){
		fullSection = "IGCSE - Year 11 C";
	}
	
	if(egc4.size()>0){
		gradeCard = "End of Year Grade Card "+accYear.substring(0, 4);
	}else if(egc3.size()>0){
		gradeCard = "End of Term 3 Grade Card "+accYear.substring(0, 4);
	}else if(egc2.size()>0){
		gradeCard = "End of Term 2 Grade Card "+accYear.substring(0, 4);
	}else if(egc1.size()>0){
		gradeCard = "End of Term 1 Grade Card "+accYear.substring(5, 9);
	}
	
	if(egc1.size()>0 || egc2.size()>0 || egc3.size()>0 || egc4.size()>0){
%>
<div id="printReportDiv" width="100%">
<div style="width:100%;float:left">
<h3 align="center">SANDFORD INTERNATIONAL SCHOOL<br/>
	(Administered Under Sandford International Endowment)</h3>
<table style="padding-bottom: 0; padding-top: 0; border: 0; width: 90%">
	<tr height="2px" style="padding-bottom: 0; padding-top: 0; border: 0">
		<td style="padding-bottom: 0; padding-top: 0; border: 0; font-size: 18; font: bold; font-weight: bolder" align="left">Student :<%= egc1.get(0).getFirstName().toUpperCase()+" "+egc1.get(0).getMiddleName().toUpperCase()+" "+egc1.get(0).getLastName().toUpperCase() %>
		</td>		
		<td style="padding-bottom: 0; padding-top: 0; border: 0; font-size: 18; font: bold; font-weight: bolder" align="center"><%=gradeCard %>
		</td>
		<td style="padding-bottom: 0; padding-top: 0; border: 0; font-size: 18; font: bold; font-weight: bolder" align="right"><%=fullSection %>
		</td>
	</tr>
	<tr height="2px" style="padding-bottom: 0; padding-top: 0; border: 0">
		<td style="padding-bottom: 0; padding-top: 0; border: 0; font-size: 18; font: bold; font-weight: bolder" align="left">Date of Birth : <%=egc1.get(0).getDateOfBirth() %>
		</td>
		<td style="padding-bottom: 0; padding-top: 0; border: 0"></td><td style="padding-bottom: 0; padding-top: 0; border: 0"></td>
	</tr>
</table>
<table style="padding-bottom: 0; padding-top: 0; border-collapse:collapse; border: 1px solid black; width: 90%">
		<tr style="background:#eeeeee">
			<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" rowspan="2">Subject</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" rowspan="2">Teacher</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" colspan="2">Term 1 Oct</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" colspan="2">Term 2 April</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" colspan="2">Term 3 June</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" colspan="2">End of Year Exam</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" rowspan="2" width="70px">Final Grade</td>
		</tr>
		<tr>
			<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Percentage</td>
		</tr>
		<%
			while(egcItr1.hasNext() || egcItr2.hasNext() || egcItr3.hasNext() || egcItr4.hasNext()){
				EndOfYearGradeCard e1 = null, e2 = null, e3 = null, e4 = null;
				String subject = null, teacher = null, grade1 = "", grade2 = "", grade3 = "", grade4 = "", effort1 = "", effort2 = "", effort3 = "", effort4 = "";
				double g1 = 0.0, g2 = 0.0, g3 = 0.0, g4 = 0.0;
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
				}
				if(egcItr3.hasNext()){
					e3 = egcItr3.next();
					subject = Subject.getSubject(e3.getSubjectId()).getSubjectName();											
					teacher = Teacher.getTeacher(e3.getTeacherId()).getShortname();
					grade3 = e3.getGrade();
					effort3 = e3.getEffort();					
				}
				if(egcItr4.hasNext()){
					e4 = egcItr4.next();
					subject = Subject.getSubject(e4.getSubjectId()).getSubjectName();											
					teacher = Teacher.getTeacher(e4.getTeacherId()).getShortname();
					grade4 = e4.getGrade();
					effort4 = e4.getEffort();					
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
				}
				if(grade3.equalsIgnoreCase("A*")){
					g3 = 7.0;
				}else if(grade3.equalsIgnoreCase("A")){
					g3 = 6.0;
				}else if(grade3.equalsIgnoreCase("B")){
					g3 = 5.0;
				}else if(grade3.equalsIgnoreCase("C")){
					g3 = 4.0;
				}else if(grade3.equalsIgnoreCase("D")){
					g3 = 3.5;
				}else if(grade3.equalsIgnoreCase("E")){
					g3 = 3.0;
				}else if(grade3.equalsIgnoreCase("F")){
					g3 = 2.5;
				}else if(grade3.equalsIgnoreCase("G")){
					g3 = 2.0;
				}else if(grade3.equalsIgnoreCase("U")){
					g3 = 1.0;
				}
				if(grade4.equalsIgnoreCase("A*")){
					g4 = 7.0;
				}else if(grade4.equalsIgnoreCase("A")){
					g4 = 6.0;
				}else if(grade4.equalsIgnoreCase("B")){
					g4 = 5.0;
				}else if(grade4.equalsIgnoreCase("C")){
					g4 = 4.0;
				}else if(grade4.equalsIgnoreCase("D")){
					g4 = 3.5;
				}else if(grade4.equalsIgnoreCase("E")){
					g4 = 3.0;
				}else if(grade4.equalsIgnoreCase("F")){
					g4 = 2.5;
				}else if(grade4.equalsIgnoreCase("G")){
					g4 = 2.0;
				}else if(grade4.equalsIgnoreCase("U")){
					g4 = 1.0;
				}
				
				finalGrade = String.valueOf(g1+g2+g3+g4);
				
				%>
				<tr>
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=subject %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=teacher %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade4 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort4 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=finalGrade %></td>
				</tr>
				<%
				totalPointsG1 += g1; totalPointsG2 += g2; totalPointsG3 += g3; totalPointsG4 += g4; 
				if(!finalGrade.equalsIgnoreCase("")){
					totalPointsGF += Double.parseDouble(finalGrade);
				}
				numOfSub++;
			}
		averageG1 =  totalPointsG1/numOfSub; averageG2 =  totalPointsG2/numOfSub; averageG3 =  totalPointsG3/numOfSub; averageG4 =  totalPointsG4/numOfSub; averageGF =  totalPointsGF/numOfSub;
		%>
		<tr>
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> TOTAL POINTS</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG4 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsGF %></td>
		</tr>
		<tr>
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> Average</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG4 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageGF %></td>
		</tr>
	</table>
</div>
<div style="width:28%;float:left;padding-left:5%" >
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:90%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left" colspan="3">Academic Grades & Grade Conversion</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">A*</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Exceptional</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">7.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">A</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Excellent</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">6.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">B</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Above Average</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">5.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">C</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Satisfactory</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">4.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">D</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Unsatisfactory</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">3.5</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">E</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Failing</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">3.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">F</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Fail</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">2.5</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">G</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Fail</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">2.0</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">U</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Ungraded</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">1.0</td></tr>
</table>
<br/>
</div><br/>

<div style="width:28%;float:left;padding-left:2%" >
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:90%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left" colspan="2">Effort</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">A</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Excellent</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">B</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Good</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">C</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Satisfactory</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">D</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Needs Improvement</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">E</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Poor</td></tr>
</table>
</div>

<div style="width:28%;float:left;" >
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:90%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left"  colspan="3"> Attendance</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Term</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Missing</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Tardi</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">1</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black"><%=absent1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black"><%=tardi1 %></td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">2</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black"><%=absent2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black"><%=tardi2 %></td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">3</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black"><%=absent3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black"><%=tardi3 %></td></tr>
</table>
</div>
<%
	}
%>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
</div><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a>