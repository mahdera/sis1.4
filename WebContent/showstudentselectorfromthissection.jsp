<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	List<StudentLevel> studentLevelList = StudentLevel.getAllStudentLevelsInThisSection(sectionId);
	Iterator<StudentLevel> studentLevelItr = studentLevelList.iterator();
	studentLevelList = null;
%>
<select name="slctstudent" id="slctstudent" style="width:100%">
	<option value="" selected="selected">--Select--</option>
	<%
		while(studentLevelItr.hasNext()){
			StudentLevel stLevel = studentLevelItr.next();
			String studentId = stLevel.getStudentId();
			Student st = Student.getStudent(studentId);
			Applicant applicant = Applicant.getApplicant(st.getApplicantId());
			String studentFullName = applicant.getFirstName()+" "+applicant.getMiddleName()+" "+applicant.getLastName();
			%>
			<option value="<%=st.getId() %>"><%=studentFullName %></option>
			<%
		}//end while loop
	%>
</select>