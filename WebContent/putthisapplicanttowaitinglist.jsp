<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Date"%>

<%
	//JOptionPane.showMessageDialog(null, "here");
	String applicantId = request.getParameter("applicantId");
	String levelname = request.getParameter("level");
	int level_id = Level.getLevelId(levelname);
	String dateAdmissionRequested = request
			.getParameter("admissionRequestedDate");
	WaitingList wList = new WaitingList(applicantId,
			dateAdmissionRequested);
	wList.addWaitingList();
	if (level_id != -1) {
		Applicant.updateStatusOfApplicantTo(applicantId, "waiting",level_id);
%>
<p class="msg done">Applicant successfully added to waiting list</p>
<%
	}
%>