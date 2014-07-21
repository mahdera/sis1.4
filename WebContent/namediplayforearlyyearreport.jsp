<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<script type="text/javascript" src="js/Ajax.js"></script>


<%
int id=Integer.parseInt(request.getParameter("id"));
List<Studentclass> helloList = Studentclass.getAllStudentbyclass(id);
Iterator<Studentclass> helloItr = helloList.iterator();
%>

<select id="txtsid" onchange="datedispalayforearlyyearreport(this.value)" style="width:100%">
 <option value="">Select Name</option>
<%
		int ctr=1;
			while(helloItr.hasNext()){
				Studentclass h = helloItr.next();
%>
<option id="txtsid" value="<%=h.getSid()%>"><%=h.getSMname()+" "+h.getSFname()%></option>

<% } %>

</select>