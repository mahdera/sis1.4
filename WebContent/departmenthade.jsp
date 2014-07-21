<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<script type="text/javascript" src="js/Ajax.js"></script>


<%
String id=request.getParameter("id");
List<Teacherandhade> helloList = Teacherandhade.getdepartmenthade(id);
Iterator<Teacherandhade> helloItr = helloList.iterator();
%>

<%
		int ctr=1;
			while(helloItr.hasNext()){
				Teacherandhade h = helloItr.next();
%>
<input type="text" name="txtteacher" value="<%=h.getHead()%>" readonly="true" style="border:none;font-size:15px; font-weight:bold;" size="30" />

<% } %>

