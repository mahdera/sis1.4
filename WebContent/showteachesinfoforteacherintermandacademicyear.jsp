<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int teacherId = Integer.parseInt(request.getParameter("teacherId"));
	int termId = Integer.parseInt(request.getParameter("termId"));
	int academicYearId = Integer.parseInt(request.getParameter("academicYearId"));
	
	List<Teaches> tList = Teaches.getAllTeachesForTeacherInTermAndAcademicYear(teacherId,termId,academicYearId);
	Iterator<Teaches> tItr = tList.iterator();
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Level</th>
		<th>Subject</th>
	</tr>
	<%
	int ctr=1;
	while(tItr.hasNext()){
		Teaches t = tItr.next();
		Level l = Level.getLevel(t.getSectionId());
		Subject s = Subject.getSubject(t.getSubjectId());
		if(ctr%2==0){
		%>
		<tr class='bg'>
		<%
		}else{
		%>
		<tr>
		<%
		}
		%>
			<td><%=ctr %></td>
			<td><%=l.getLevelName() %></td>
			<td><%=s.getSubjectName() %></td>
		</tr>
		<%
		ctr++;
	}
	%>
</table>