<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int levelId = Integer.parseInt(request.getParameter("levelId"));
	int category = Integer.parseInt(request.getParameter("category"));
	String levelName = request.getParameter("levelName");
	Level.updateLevel(levelId, levelName, category);

%>
<%@ include file="showlistoflevelsforedit.jsp"%>
<p class="msg done">level Updated Successfully!</p>