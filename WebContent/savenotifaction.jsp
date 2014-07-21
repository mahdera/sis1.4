<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	//JOptionPane.showMessageDialog(null, "here");
 
	String sessions=request.getParameter("session");
	int section=Integer.parseInt(request.getParameter("section"));
	String stud=request.getParameter("stud");
	String type=request.getParameter("type");
	String desc=request.getParameter("desc");
	String isNew = request.getParameter("isNew");
	//JOptionPane.showMessageDialog(null, desc+" "+stud+" "+sessions+" "+type+" "+section);
	if(desc.length()!=0){
	AttendanceNotification.putReason(desc,stud,section,sessions,type,isNew);
	
%>	
<p class="msg done">Reason Placed Successfully!</p>
<%} else{%>
<p class="msg info">Reason must be Placed!</p>
<% }%>