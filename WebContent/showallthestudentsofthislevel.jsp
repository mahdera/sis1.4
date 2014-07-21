<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String levelId = Integer.parseInt(request.getParameter("levelId"));
	List<StudentLevel> levelList = StudentLevel
			.getStudentsInLevel(levelId);
	if (!levelList.isEmpty()) {
		Iterator<StudentLevel> levelItr = levelList.iterator();
%>
<select name="slctstud" id="slctstud" style="width: 100%">
	<option value="" selected="selected">--Select--</option>
	<%
		while (levelItr.hasNext()) {
				StudentLevel level = levelItr.next();
	%>
	<option value="<%=level.getStudentId()%>"><%=level.getName()%></option>
	<%
		}//end while loop
	%>
</select>
<%
	} else {
%>
<p class="msg info">There are no students in this level!</p>
<%
	}
%>