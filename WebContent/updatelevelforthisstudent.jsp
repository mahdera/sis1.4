<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String studentId = request.getParameter("studentId");
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	//JOptionPane.showMessageDialog(null, "student= "+studentId+" , section="+sectionId );
	StudentLevel.promoteStudent(studentId, levelId, sectionId);
%>
<p class="msg done">Student promoted successfully!</p>