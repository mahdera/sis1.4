<%@ page import="com.signetitsolutions.sis.server.classes.*"%>
<%@ page import="java.util.*" %>
<%
	String id = String.valueOf(request.getParameter("studentId"));
	Applicant applicant = Applicant.getApplicant(id);
	Date date = applicant.getDateOfBirth();
	Date d = new Date();
%>
<div id="printReportDiv" width="100%">
<div align="center" style="width:50%">
	<div align="center"><b><%=applicant.getFirstName()+" "+applicant.getMiddleName()+"       " %>D.O.B<%="    "+ date.getDate()+"/"+date.getMonth()+"/"+date.getYear() %></b></div><br/>
	<div align="justify" width="50%">To :<b>Whom It May Concern</b><br/>
	<p>This is to certify that <b><%=applicant.getFirstName()+" "+applicant.getMiddleName()+" " %></b> was a full time student at Sanford International<br/>
	School, Addis Ababa, Ethiopia.<%if(applicant.getSex().equalsIgnoreCase("male")) {%>He <%}else{ %>She <%} %> joined in year <b><%=applicant.getDateAdmissionRequested()%></b> and left at the end of <b><br/>year 20<%=d.getYear() - 100 %></b></p></div>
	<p align="justify"><br/>Sanford International School caters for the needs of international and local students.<br/>
	Following a program based on the english national curriculum in the primary school.<br/> In secondary
	the school offersIGCSE and IB Diploma.</p>
	<p align="justify">We wish <b><%=applicant.getFirstName()+" "+applicant.getMiddleName() %> </b>all the best in <%if(applicant.getSex().equalsIgnoreCase("male")) {%>his <%}else{ %>her <%} %> new school and for <%if(applicant.getSex().equalsIgnoreCase("male")) {%>He <%}else{ %>She <%} %> future. please<br/>
	contact the school registrar should you require any further detail.<br/><br/> yours sincerely
	
	<br/><br/><br/>
	----------------------------<br/>
	Head of primary
</div>
</div>
<iframe name=print_frame width=0 height=0 frameborder=0 src=about:blank></iframe>
<a href="#.jsp" onclick="printDiv('printReportDiv')" style="float:right">Print Report <img src="design/printer.jpeg" border="0" align="absmiddle"/></a> 