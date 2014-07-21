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
	if(sectionId == 23){
		fullSection = "Year 7 A";
	}else if(sectionId == 24){
		fullSection = "Year 7 B";
	}else if(sectionId == 25){
		fullSection = "Year 7 C";
	}else if(sectionId == 26){
		fullSection = "Year 7 D";
	}else if(sectionId == 27){
		fullSection = "Year 8 A";
	}else if(sectionId == 28){
		fullSection = "Year 8 B";
	}else if(sectionId == 29){
		fullSection = "Year 8 C";
	}else if(sectionId == 30){
		fullSection = "Year 8 D";
	}else if(sectionId == 31){
		fullSection = "Year 8 A";
	}else if(sectionId == 32){
		fullSection = "Year 9 B";
	}else if(sectionId == 33){
		fullSection = "Year 9 C";
	}else if(sectionId == 34){
		fullSection = "Year 9 D";
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
<div style="width:15%;float:left" >
<br/><br/><br/><br/><br/>
<table style="border-collapse:collapse; border: 1px solid black; width:95%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left" colspan="3">Attainment Levels</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">7</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">6</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">5</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">4</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">3</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">2</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">1</td></tr>
</table>
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:95%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left" colspan="2">Effort</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">A</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Excellent</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">B</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Good</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">C</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Satisfactory</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">D</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Needs Improvement</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">E</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Poor</td></tr>
</table>
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:95%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left"  colspan="3"> Attendance</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Term</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Missing</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Tardi</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">1</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=absent1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=tardi1 %></td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">2</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=absent2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=tardi2 %></td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">3</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=absent3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=tardi3 %></td></tr>
</table>
</div>
<div style="width:85%;float:right">
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
<table style="padding-bottom: 0; padding-top: 0; border-collapse:collapse; border: 1px solid black; width: 100%">
		<tr style="background:#eeeeee">
			<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" rowspan="2">Subject</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" rowspan="2">Teacher</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" colspan="2">End of Term DEC</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" colspan="2">End of Term APR</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center" colspan="2">End of Term JUNE</td>
		</tr>
		<tr>
			<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td>
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
			//finalGrade = String.valueOf(grade1+grade2+grade3+grade4);
				%>
				<tr>
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=subject %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=teacher %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort3 %></td>
				</tr>				
				<%
				
				if(!grade1.equalsIgnoreCase("")){
					totalPointsG1 += Integer.parseInt(grade1); 
				}
				if(!grade2.equalsIgnoreCase("")){
					totalPointsG2 += Integer.parseInt(grade2); 
				}
				if(!grade3.equalsIgnoreCase("")){
					totalPointsG3 += Integer.parseInt(grade3); 
				}
				if(!grade4.equalsIgnoreCase("")){
					totalPointsG4 += Integer.parseInt(grade4); 
				}
				//if(!finalGrade.equalsIgnoreCase("")){
				//	totalPointsGF += Double.parseDouble(finalGrade);
				//}
				numOfSub++;
			}
		averageG1 =  totalPointsG1/numOfSub; averageG2 =  totalPointsG2/numOfSub; averageG3 =  totalPointsG3/numOfSub; averageG4 =  totalPointsG4/numOfSub; //averageGF =  totalPointsGF/numOfSub;
		%>
		<tr>
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> TOTAL POINTS</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td>
		</tr>
		<tr>
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> Average</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"></td>
		</tr>
	</table>
</div>
</div>
<%} %>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a> 
