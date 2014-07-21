<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String studentId = request.getParameter("studentId");
	int sectionId = Integer.parseInt(request.getParameter("sectionId"));
	//JOptionPane.showMessageDialog(null, "student= "+studentId+" , section="+sectionId );
	StudentLevel.changeTheSectionForThisStudent(studentId,sectionId);
%>
<p class="msg done">Student section changed successfully!</p>