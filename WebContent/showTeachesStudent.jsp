<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.*"%>
<%@page language="java" pageEncoding="utf-8"%>
<%
	String teacher = request.getParameter("teacher");
	String academicyear = request.getParameter("academicyear");
	String term = request.getParameter("term");
	String subject = request.getParameter("subject");

	List<TeachesStudent> teachesStudentList = TeachesStudent.getTeachesStudent(teacher, academicyear , term, subject);

%>

		<table id="teachesstudent" width="100%">
			<tr>
				<th>Teacher Id</th>
				<th>Teacher Name</th>
				<th>Academic Year</th>
				<th>Term</th>
				<th>Subject</th>
				<th>Student Id</th>	
				<th>Student Name</th>				
			</tr>
			<%
			if (!teachesStudentList.isEmpty()) {
				Iterator<TeachesStudent> teachesStudentItr = teachesStudentList.iterator();
				while (teachesStudentItr.hasNext()) {
					TeachesStudent teachesStudent = teachesStudentItr.next();
					
			%>
			<tr width="100" style="background: #fff">
				<td><%=teachesStudent.getTeacherId()%></td>
				<td><%=teachesStudent.getTeacherName()%></td>
				<td><%=teachesStudent.getYearName()%></td>
				<td><%=teachesStudent.getTermName()%></td>
				<td><%=teachesStudent.getSubjectName()%></td>
				<td><%=teachesStudent.getStudId()%></td>
				<td><%=teachesStudent.getStudName()%></td>
				
			</tr>
			<%
				}
			}
			%>
			
		</table>
