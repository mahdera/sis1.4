<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="1" width="100%">
	<tr style="background:#eeeeee">
		<td>
			Section:
		</td>
		<td>
			<select name="slctsection" id="slctsection" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%				
				List<Section> sectionList = Section.getAllSections();
				List<Supervisors> supervisorList = Supervisors.getAllSupervisor();	
				Iterator<Supervisors> supervisorItr;
				Iterator<Section> sectionItr;
				Account account = (Account) session.getAttribute("account");
			
				if (!supervisorList.isEmpty()) {
					 supervisorItr = supervisorList.iterator();
					while (supervisorItr.hasNext()) {
						Supervisors supervisor = supervisorItr.next();		
						if(String.valueOf(account.getUserId()).equalsIgnoreCase(supervisor.getSupervisorId().toString())){
							if(!supervisor.getType().equalsIgnoreCase("teacher")){
								sectionItr = sectionList.iterator();
								while(sectionItr.hasNext()){
									Section s = sectionItr.next();
									//if(35<=s.getId() && s.getId()<=40 && Integer.parseInt(supervisor.getLevelfromId())<=s.getLevelId() && s.getLevelId()<=Integer.parseInt(supervisor.getLeveltoId())){
									if(35<=s.getId() && s.getId()<=40 ){
										%><option value="<%=s.getId()%>"><%=s.getSectionName()%></option><%
									}
								}
							}else{
								if( 35<=Integer.parseInt(supervisor.getSectionId()) && Integer.parseInt(supervisor.getSectionId())<=40){
									%><option value="<%=supervisor.getSectionId()%>"><%=supervisor.getSectionName()%></option><%
								}
							}
						}
					}
				}
				%>
			</select>
		</td>
		<td>
			<input type="button" value="Show" onclick="showListOfStudentsInThisSectionForEndOfYearGradeCardIGCSE1(document.getElementById('slctsection').value);"/>
		</td>
	</tr>
</table>
<div id="displayReportContentDivEndOfYearIGCSE1"></div>