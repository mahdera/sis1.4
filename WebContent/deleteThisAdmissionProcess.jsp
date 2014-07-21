<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String id = request.getParameter("applicantId");
	int sid = Integer.parseInt(request.getParameter("sec"));
	//JOptionPane.showMessageDialog(null, id);
	Applicant.deleteAdmissionProcess(id,sid);
%>
<!--  

-->
<p class="msg done">Admission process deleted successfully!</p>