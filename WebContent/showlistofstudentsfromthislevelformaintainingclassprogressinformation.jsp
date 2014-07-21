<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	List<StudentLevel> studentLevelList = StudentLevel.getStudentLevelFormThisLevel(levelId);
	if(!studentLevelList.isEmpty()){
	Iterator<StudentLevel> studentLevelItr = studentLevelList.iterator();
	studentLevelList = null;
%>
<table border="0" width="100%">
	<tr>
		<th>Ser.No</th>
		<th>Select</th>
		<th>Current Level</th>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Sex</th>
		<th>Student Type</th>
		<th>Nationality</th>
		<th>Admission Request Date</th>		
		<th>Current Section</th>
		<th>Change Section</th>
	</tr>
	<%
		int ctr = 1;
		while(studentLevelItr.hasNext()){
			StudentLevel stLevel = studentLevelItr.next();
			Student st = Student.getStudent(stLevel.getStudentId());
			Level level = Level.getLevel((int)stLevel.getId());
			//Applicant applicant = Applicant.getApplicant(st.getApplicantId());
			Applicant applicant = Applicant.getApplicant(stLevel.getStudentId());
			String controlName = "hiddenStudentId"+ctr;
			String chkBoxName = "chkstud"+st.getId();
			if(ctr % 2 == 0){
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
				<td>
					<input type="checkbox" name="<%=chkBoxName %>" id="<%=chkBoxName %>"/>
					<input type="hidden" name="<%=controlName %>" id="<%=controlName %>" value="<%=st.getId() %>"/> 
				</td>
				<td><%=level.getLevelName() %></td>
				<td><%=applicant.getFirstName() %></td>
				<td><%=applicant.getMiddleName() %></td>
				<td><%=applicant.getLastName() %></td>
				<td><%=applicant.getSex() %></td>
				<td><%=applicant.getApplicantType() %></td>
				<td><%=applicant.getNationality() %></td>
				<td><%=applicant.getDateAdmissionRequested() %></td>	
				<td><%=Section.getSection(stLevel.getSectionId()).getSectionName() %></td>
				<td>
					<a href="#.jsp" onclick="showChangeSectionSelectorForThisStudent('<%=st.getId() %>');">Change Section</a>
				</td>			
			</tr>
			<%
				String divId = "changeSectionDiv"+st.getId();
			%>
			<tr>
				<td colspan="12">
					<div id="<%=divId %>"></div>
				</td>
			</tr>			
			<%
			ctr++;
		}//end while loop
		int numberOfStudent = --ctr;
	%>
	<tr>
		<td colspan="12">
			<a href="#.jsp" onclick="selectAllCheckBoxesStudentClassProgress('<%=numberOfStudent%>');">
    			Check All  
    		</a>
    		 |
    		<a href="#.jsp" onclick="disselectAllCheckBoxesStudentClassProgress('<%=numberOfStudent%>');">
    			Uncheck All
    		</a>
		</td>
	</tr>
	<tr style="background:#eee">
		<td colspan="4">	
			Move selected students to level:
		</td>
		<td colspan="5">
			<div id="errorDiv"></div>
			<select name="slctnewlevel" id="slctnewlevel" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<Level> levelList = Level.getAllLevels();
					if(!levelList.isEmpty()){
						Iterator<Level> levelItr = levelList.iterator();
						while(levelItr.hasNext()){
							Level level = levelItr.next();
							%>
							<option value="<%=level.getId() %>"><%=level.getLevelName() %></option>
							<%
						}//end while loop
					}
				%>
			</select>
		</td>
		<td colspan="4" align="right">
			<input type="button" value="Change Level" onclick="changeLevelsOfAllSelectedStudents(<%=numberOfStudent %>,
			document.getElementById('slctnewlevel').value);"/>			
		</td>
	</tr>
</table>
<%
	}else{
		%>
		<p class="msg warning">There is/are no student information in the selected level!</p>
		<%
	}
%>
