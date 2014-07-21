<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<script type="text/javascript" src="js/Ajax.js"></script>


<%
String id=request.getParameter("id");
List<Studentclass> helloList = Studentclass.getDOB(id);
Iterator<Studentclass> helloItr = helloList.iterator();
%>


<%
		int ctr=1;
			while(helloItr.hasNext()){
				Studentclass h = helloItr.next();
%>
<input type="text" value=<%=h.getSDOB()%> id="txtdob" readonly="true"/>
<% } %>
