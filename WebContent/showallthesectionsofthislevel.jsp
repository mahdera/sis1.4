<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	List<Section> sectionList = Section.getAllSectionsForLevel(levelId);
	if (!sectionList.isEmpty()) {
		Iterator<Section> sectionItr = sectionList.iterator();
%>
<select name="slctsection" id="slctsection" style="width: 100%">
	<option value="" selected="selected">--Select--</option>
	<%
		while (sectionItr.hasNext()) {
				Section section = sectionItr.next();
	%>
	<option value="<%=section.getId()%>"><%=section.getSectionName()%></option>
	<%
		}//end while loop
	%>
</select>
<%
	} else {
%>
<p class="msg info">There is/are no section/s in the selected level!</p>
<%
	}
%>