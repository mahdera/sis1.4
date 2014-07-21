<%@page import="java.util.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="java.sql.Time"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>

<%
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
    Section section = Section.getSection(sectionId);
    String sectionName = section.getSectionName();
	List<StudentLevel> studentLevelList = StudentLevel.getAllStudentLevelsInThisSection(sectionId);
	Iterator<StudentLevel> studentLevelItr = studentLevelList.iterator();
	studentLevelList = null;
	Date year = new Date();
	String accYear = Acadamicyear.accayString();
	
%>
<div id="printContactView" width="100%">
<% if(section.getLevelId()>=9){%>
<h2><center> Secondary School Contact Address   <%=accYear %>  </center></h2>
<%}else{%>
<h2><center> Primary School Contact Address    <%=accYear %> </center></h2> 
<%} %>
<h2> 
</h2>
<h3>   Section: <%=sectionName.subSequence(0, sectionName.indexOf("("))%>
 		Teacher: <%=sectionName.subSequence(sectionName.indexOf("(")+1, sectionName.indexOf(")")) %></h3>

<table border="2" width="100%">
	<tr border="1">
		<th>No</th>
		<th><center>Name</center></th>
		<th><center>Father's Name</center></th>
		<th><center>Mother's Name</center></th>
		<th><center>Name of Sibling</center></th>
		<th colspan="5"><center>Telephone</center></th>
		<th><center>E-mail</center></th>
		<th><center>Emergency Contact Mobile</center></th>
		<th><center>Parents Profession Father's/Mother's</center></th>
	</tr>
	<tr border="1">
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th>Res Tel.</th>
			<th>Father's Office</th>
			<th>Mother's Office</th>
			<th>Father's Mobile</th>
			<th>Mother's Mobile</th>
			<th></td>
			<th></td>
			<th></td>
	</tr>
	
	<%
		int ctr = 1;
		while(studentLevelItr.hasNext()){
			StudentLevel stLevel = studentLevelItr.next();
			//JOptionPane.showMessageDialog(null, );
			//Student st = Student.getStudent(stLevel.getStudentId());
			//Applicant applicant = Applicant.getApplicant(st.getApplicantId());
			
			Applicant applicant = Applicant.getApplicant(stLevel.getStudentId());
			String applicantId=stLevel.getStudentId();
			long motherId = ChildParent.getMotherIdOfThisApplicant(applicantId);
			long fatherId = ChildParent.getFatherIdOfThisApplicant(applicantId);
			
			Parent mParent = Parent.getParent(motherId);
			Parent fParent = Parent.getParent(fatherId);
			
			List<SiblingAttendingCurrently> siblingList = SiblingAttendingCurrently.getAllSiblingsAttendingCurrentlyForApplicant(applicantId);
			Iterator<SiblingAttendingCurrently> siblingItr = siblingList.iterator();
			siblingList = null;
			
			//out.print(mParent.getFirstName());
			if(ctr % 2 == 0){
			%>
			<tr class="bg" border="1">
			<%
			}else{
				%>
			<tr>
			<%
			}
			%>			
				<td><center><%=ctr %></center></td>
				<td><center><%=applicant.getFirstName() %></center></td>
				<td><center><%=applicant.getMiddleName() %></center></td>
				<td><center><%=mParent.getFirstName() %></center></td>
				<td><%while(siblingItr.hasNext()){
							SiblingAttendingCurrently s = siblingItr.next(); 
							%>
				     <center><%= s.getFirstName()%></center><br/>
					<%}%>
				</td>
				<td><center><%Parent fp=Parent.getParentMail(fatherId); %><%=fp.getHome() %></center></td>
				<td><center><%=fp.getOffice()%></center></td>
				<td><center><%Parent mp=Parent.getParentMail(motherId); %><%=mp.getOffice() %></center></td>
				<td>
					<center><%=fp.getMobile() %><br/>
					<%=fp.getMobile2() %></center>
				</td>
				<td>
					<center><%=mp.getMobile() %><br/>
					<%=mp.getMobile2() %></center>
				</td>
				<td><u><center><%=fp.getEmail() %><br/>
					<%=mp.getEmail() %></u></center>
				</td>
				<td><center><%	EmergencyContact eContact = EmergencyContact.getEmergencyContactForApplicant(applicantId);
						out.print(eContact.getMobileTelephone());%><br/></center>
				</td>
				<td><center><%=fParent.getOccupation()%><br/><%=mParent.getOccupation() %></center>
				</td>
			</tr>
			<tr>
				<td colspan="10">
					<%
						String divId = "applicantDetail" + applicant.getId();
					%>
					<div id="<%=divId %>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
	</div>
</table>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printContactView')" style="float:right">Print Contact<img src="design/printer.jpeg" border="0" align="absmiddle"/></a>
	
