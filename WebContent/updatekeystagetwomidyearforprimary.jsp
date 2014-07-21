<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<% 
int id=0;
String sid=request.getParameter("id");
String literacya=request.getParameter("literacya");
int literacye=Integer.parseInt(request.getParameter("literacye"));
String ln=request.getParameter("txtln");

String numa=request.getParameter("numa");
int nume=Integer.parseInt(request.getParameter("nume"));
String nn=request.getParameter("txtnn");

String ipca=request.getParameter("ipca");
int ipce=Integer.parseInt(request.getParameter("ipce"));
String ipcn=request.getParameter("txtipcn");

String sca=request.getParameter("sca");
int sce=Integer.parseInt(request.getParameter("sce"));
String sn=request.getParameter("txtsn");
String gc=request.getParameter("txtgc");

%>
<%
Keystagetwo kt=new Keystagetwo(id,sid,literacya,literacye,ln,numa,nume,nn,ipca,ipce,ipcn,sca,sce,sn,gc);
kt.updateNarration();
%>
<%@include file="keystagetwomidyearprimaryschoolreport.jsp" %>
<p class="msg done">Evaluation Updated successfully</p>
