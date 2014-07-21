<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	List<Section> secList = Section.getAllSectionsForLevel(levelId);
	if (!secList.isEmpty()) {
		Iterator<Section> secItr = secList.iterator();
%>
<select name="slctsection" id="slctsection" style="width: 100%">
	<option value="" selected="selected">--Select--</option>
	<%
		while (secItr.hasNext()) {
				Section sec = secItr.next();
	%>
	<option value="<%=sec.getId()%>"><%=sec.getSectionName()%></option>
	<%
		}//end while loop
	%>
</select>
<%
	} else {
%>
<p class="msg info">There are no sections assigned!</p>
<%
	}
%>