<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int selectedCheckBoxCounter = Integer.parseInt(request.getParameter("selectedCheckBoxCounter"));
	if(selectedCheckBoxCounter != 0){
		for(int i=1;i<=selectedCheckBoxCounter;i++){
			String checkBoxId = "chk" + i;
			String studentIdNumber = request.getParameter(checkBoxId);
			ApplicantT existingApplicantT = ApplicantT.getApplicantT(studentIdNumber);
			existingApplicantT.setArchived(true);
			ApplicantT.updateArchiveStatus(existingApplicantT);
		}//end for...loop
		%>
			<p class="msg info">Student record(s) successfully archived!</p>
		<%
	}else{
		%>
			<p class="msg warning">You need to select at least one student from the list!</p>
		<%
	}
%>