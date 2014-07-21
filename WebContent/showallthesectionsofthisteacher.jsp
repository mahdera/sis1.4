<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
int teacherId = Integer.parseInt(request.getParameter("teacherId"));
List<Teaches> teachesList = Teaches.getTeachesBySection(teacherId);	
Iterator<Teaches> teachesItr = teachesList.iterator();
Account account = (Account) session.getAttribute("account");
while(teachesItr.hasNext()){
	Teaches teaches = teachesItr.next();
	if(String.valueOf(account.getUserId()).equalsIgnoreCase(String.valueOf(teaches.getTeacherId()).toString())){
	List<Section> sectionList = Section.getAllSections();
	if (!sectionList.isEmpty()) {
		Iterator<Section> sectionItr = sectionList.iterator();
		%>
		<select name="slctsection" id="slctsection" style="width: 100%">
			<option value="" selected="selected">--Select--</option>
		<%
			while (sectionItr.hasNext()) {
				Section section = sectionItr.next();				
					if(teaches.getSectionId()==section.getId()){
						%>
							<option value="<%=section.getId()%>"><%=section.getSectionName()%></option>
						<%
					}				
			}//end while loop
		%>
		</select>
		<%
	} else {
	%>
		<p class="msg info">There is/are no section assigned!</p>
	<%
	}//end of if
  }//end of if
}
%>
