<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	String primarySecondaryName = request.getParameter("primarySecondaryName");
	PrimarySecondary primarySecondary = new PrimarySecondary(primarySecondaryName);
	primarySecondary.addPrimarySecondary();
%>
<%@include file="showaddprimarysecondaryform.jsp"%>
<p class="msg done">Primary secondary category saved successfully!</p>