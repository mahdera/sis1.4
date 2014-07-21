<%@page import="com.signetitsolutions.sis.server.classes.*" %>
<%
    session.setAttribute("account", null);
	if(DBConnection.isConnected())
		DBConnection.disconnectDatabase();
%>
<jsp:forward page="index.jsp">
    <jsp:param name="mahder" value="mahder"/>
</jsp:forward>
