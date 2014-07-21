<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<%

	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	String studentId = request.getParameter("studentId");
	
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
	
	int totalPointsG1 = 0, totalPointsG2 = 0,totalPointsG3 = 0, totalPointsG4 = 0, totalPointsGF = 0;
	double averageG1 = 0.0, averageG2 = 0.0, averageG3 = 0.0, averageG4 = 0.0, averageGF = 0.0;
	int numOfSub = 0;
	String creativityTerm1 = "", creativityTerm3 = "", creativityTerm2 = "";
	String actionTerm1 = "", actionTerm3 = "", actionTerm2 = "";
	String serviceTerm1 = "", serviceTerm3 = "", serviceTerm2 = "";
	String gradeCard = null;
	String fullSection = null;
	if(sectionId == 41){
		fullSection = "IB1 - Year 12 A";
	}else if(sectionId == 42){
		fullSection = "IB1 - Year 12 B";
	}else if(sectionId == 43){
		fullSection = "IB1 - Year 12 C";
	}else if(sectionId == 44){
		fullSection = "IB2 - Year 13 A";
	}else if(sectionId == 45){
		fullSection = "IB2 - Year 13 B";
	}else if(sectionId == 46){
		fullSection = "IB2 - Year 13 C";
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
	
	
	
	 String fullName = null, dateOfBirth = null;
	if(egc1.size()>0 || egc2.size()>0 || egc3.size()>0 || egc4.size()>0){
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
		<td style="padding-bottom: 0; padding-top: 0; border: 0; font-size: 18; font: bold; font-weight: bolder" align="center"><%=gradeCard %>
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
			<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" rowspan="2" align="center">Subject</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" rowspan="2" align="center">Teacher</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" colspan="2" align="center">Term 1 Oct</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" colspan="2" align="center">Term 2 April</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" colspan="2" align="center">Term 3 June</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" colspan="2" align="center">End of Year Exam</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Final Grade</td>
		</tr>
		<tr height="2px" style="border: 1px solid black">
			<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Effort</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Grade</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center">Percentage</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" width="70px" align="center"></td>
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
					if(subject.equalsIgnoreCase("Creativity")){
						creativityTerm1 = e1.getGrade();
					}else if(subject.equalsIgnoreCase("Action")){
						actionTerm1 = e1.getGrade();
					}else if(subject.equalsIgnoreCase("Service")){
						serviceTerm1 = e1.getGrade();
					}else{						
						teacher = Teacher.getTeacher(e1.getTeacherId()).getShortname();
						grade1 = e1.getGrade();
						effort1 = e1.getEffort();
					}
				}
				if(egcItr2.hasNext()){
					e2 = egcItr2.next();
					subject = Subject.getSubject(e2.getSubjectId()).getSubjectName();
					if(subject.equalsIgnoreCase("Creativity")){
						creativityTerm2 = e2.getGrade();
					}else if(subject.equalsIgnoreCase("Action")){
						actionTerm2 = e2.getGrade();
					}else if(subject.equalsIgnoreCase("Service")){
						serviceTerm2 = e2.getGrade();
					}else{						
						teacher = Teacher.getTeacher(e2.getTeacherId()).getShortname();
						grade2 = e2.getGrade();
						effort2 = e2.getEffort();
					}
				}
				if(egcItr3.hasNext()){
					e3 = egcItr3.next();
					subject = Subject.getSubject(e3.getSubjectId()).getSubjectName();
					if(subject.equalsIgnoreCase("Creativity")){
						creativityTerm3 = e3.getGrade();
					}else if(subject.equalsIgnoreCase("Action")){
						actionTerm3 = e3.getGrade();
					}else if(subject.equalsIgnoreCase("Service")){
						serviceTerm3 = e3.getGrade();
					}else{						
						teacher = Teacher.getTeacher(e3.getTeacherId()).getShortname();
						grade3 = e3.getGrade();
						effort3 = e3.getEffort();
					}
				}
				if(egcItr4.hasNext()){
					e4 = egcItr4.next();
					subject = Subject.getSubject(e4.getSubjectId()).getSubjectName();
					if(!subject.equalsIgnoreCase("Creativity") && !subject.equalsIgnoreCase("Action") && subject.equalsIgnoreCase("Service")){
						teacher = Teacher.getTeacher(e4.getTeacherId()).getFirstName();
						grade4 = e4.getGrade();
						effort4 = e4.getEffort();
					}
				}
				if(grade1.equalsIgnoreCase("A")){
					g1 = 5;
				}else if(grade1.equalsIgnoreCase("B")){
					g1 = 4;
				}else if(grade1.equalsIgnoreCase("C")){
					g1 = 3;
				}else if(grade1.equalsIgnoreCase("D")){
					g1 = 2;
				}else if(grade1.equalsIgnoreCase("E")){
					g1 = 1;
				}else if(!grade1.equalsIgnoreCase("")){
					g1 = Integer.parseInt(grade1);
				}
				
				if(grade2.equalsIgnoreCase("A")){
					g2 = 5;
				}else if(grade2.equalsIgnoreCase("B")){
					g2 = 4;
				}else if(grade2.equalsIgnoreCase("C")){
					g2 = 3;
				}else if(grade2.equalsIgnoreCase("D")){
					g2 = 2;
				}else if(grade2.equalsIgnoreCase("E")){
					g2 = 1;
				}else  if(!grade2.equalsIgnoreCase("")){
					g2 = Integer.parseInt(grade2);
				}
				
				if(grade3.equalsIgnoreCase("A")){
					g3 = 5;
				}else if(grade3.equalsIgnoreCase("B")){
					g3 = 4;
				}else if(grade3.equalsIgnoreCase("C")){
					g3 = 3;
				}else if(grade3.equalsIgnoreCase("D")){
					g3 = 2;
				}else if(grade3.equalsIgnoreCase("E")){
					g3 = 1;
				}else if(!grade3.equalsIgnoreCase("")){
					g3 = Integer.parseInt(grade3);
				}
				
				if(grade4.equalsIgnoreCase("A")){
					g4 = 5;
				}else if(grade4.equalsIgnoreCase("B")){
					g4 = 4;
				}else if(grade4.equalsIgnoreCase("C")){
					g4 = 3;
				}else if(grade4.equalsIgnoreCase("D")){
					g4 = 2;
				}else if(grade4.equalsIgnoreCase("E")){
					g4 = 1;
				}else if(!grade4.equalsIgnoreCase("")){
					g4 = Integer.parseInt(grade4);
				}
				if(!grade1.equalsIgnoreCase("") && !grade2.equalsIgnoreCase("") && !grade3.equalsIgnoreCase("") && !grade4.equalsIgnoreCase("")){
					finalGrade = String.valueOf(g1+g2+g3+g4);
				}
				 if(!subject.equalsIgnoreCase("Creativity") && !subject.equalsIgnoreCase("Action") && !subject.equalsIgnoreCase("Service")){
				%>
					<tr height="5px" style="border: 1px solid black">
					<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=subject %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=teacher %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=grade4 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=effort4 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=finalGrade %></td>
					</tr>
				<%
				 }
				totalPointsG1 += g1; totalPointsG2 += g2; totalPointsG3 += g3; totalPointsG4 += g4; 
				if(!finalGrade.equalsIgnoreCase("")){
					totalPointsGF += Integer.parseInt(finalGrade);
				}
				numOfSub++;
			}
		averageG1 =  totalPointsG1/numOfSub; averageG2 =  totalPointsG2/numOfSub; averageG3 =  totalPointsG3/numOfSub; averageG4 =  totalPointsG4/numOfSub; averageGF =  totalPointsGF/numOfSub; 
		%>
		<tr style="border: 1px solid black">
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> TOTAL IB POINTS</td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG1 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG2 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG3 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsG4 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=totalPointsGF %></td>
		</tr>
		<tr style="border: 1px solid black">
				<td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> Average</td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG1 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG2 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG3 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageG4 %></td><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=averageGF %></td>
		</tr>
	</table>
</div>
<div style="width:28%;float:left;padding-left:5%" >
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:90%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left"> Academic Grades</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">7 - Excellent</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">6 - Very Good</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">5 - Good</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">4 - Satisfactory/PASS</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">3 - Mediocre</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">2 - Poor</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">1 - Very Poor</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"> Minimum of 24 points needed <br/> for diploma to be awarded</td></tr>
</table>
</div>

<div style="width:28%;float:left;padding-left:2%" >
<br/>
<table style="border-collapse:collapse; border:1px solid black; width:90%; height:80px">
	<tr><th style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8" align="left" colspan="2"> Effort</th></tr>
	<tr><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8" align="center">A</td><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8">Excellent</td></tr>
	<tr><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8" align="center">B</td><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8">Good</td></tr>
	<tr><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8" align="center">C</td><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8">Satisfactory</td></tr>
	<tr><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8" align="center">D</td><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8">Needs Improvement</td></tr>
	<tr><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8" align="center">E</td><td style="border:1px solid black; padding-bottom: 0; padding-top: 0; font-size: 8">Poor</td></tr>
</table><br/>
<table style="border-collapse:collapse; border: 1px solid black; width:90%; height:80px">
    <tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">CAS</th>
    <th colspan="3" style="border: 1px solid black">   
    <select name="slctcas" id="slctcas"	style="width: 100%; font-size: 8">
		<option value="Select">--Select--</option>
		<option value="Satisfactory">Satisfactory</option>
		<option value="Unsatisfactory">Unsatisfactory</option>
    </select>
    </th></tr>
	<tr><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Term 1</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Term 2</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Term 3</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Creativity</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=creativityTerm1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=creativityTerm2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=creativityTerm3 %></td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Action</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=actionTerm1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=actionTerm2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=actionTerm3 %></td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Service</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=serviceTerm1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=serviceTerm2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=serviceTerm3 %></td></tr>	
</table>
</div>
<div style="border; width:28%;float:left;padding-left:2%" >
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:90%; height:80px">
	<tr ><th  style="padding-bottom: 0; padding-top: 0; border: 1px solid black" colspan="3" align="left">Attendance</th></tr>
	<tr><td style="border: 1px solid black"></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Late</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Absent</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Term 1</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=tardi1 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=absent1 %></td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Term 2</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=tardi2 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=absent2 %></td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">Term 3</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=tardi3 %></td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center"><%=absent3 %></td></tr>
</table>
<br/>
<table style="border-collapse:collapse; border: 1px solid black; width:90%; height:80px">
	<tr><th style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="left" colspan="2">Theory of Knowledge/ Extended Essay</th></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">A</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Excellent</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">B</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Good</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">C</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Satisfactory</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">D</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Mediocre</td></tr>
	<tr><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black" align="center">E</td><td style="padding-bottom: 0; padding-top: 0; border: 1px solid black">Elementary/FAIL</td></tr>
</table>
</div>
<%} %>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
</div><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a> 

