<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Subject> subjectList = Subject.getAllSubjects();
	Iterator<Subject> subjectItr = subjectList.iterator();
	subjectList = null;
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Subject Name</th>
		<th>Description</th>
	</tr>
	<%
		int ctr=1;
		while(subjectItr.hasNext()){
			Subject subject = subjectItr.next();
			if(ctr%2==0){
			%>
			<tr class="bg">
			<%
			}else{
			%>
			<tr>
			<%
			}
			%>
				<td><%=ctr %></td>
				<td><%=subject.getSubjectName() %></td>
				<td><%=subject.getDescription() %></td>				
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>