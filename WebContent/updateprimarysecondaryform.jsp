<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String primarySecondary = request.getParameter("primarysecondaryname");
	PrimarySecondary.updatePrimarySecondary(id, primarySecondary);

%>
<%@include file="showprimarysecondariesforedit.jsp"%>
<p class="msg done">Primary Secondary Updated Successfully!</p>