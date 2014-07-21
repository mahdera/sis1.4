<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<% 
int id=0;
String sid=request.getParameter("id");
int literacyr=Integer.parseInt(request.getParameter("literacyr"));
String lrn=request.getParameter("lrn");
int literacyw=Integer.parseInt(request.getParameter("literacyw"));
String lwn=request.getParameter("lwn");
int literacys=Integer.parseInt(request.getParameter("literacys"));
String lsn=request.getParameter("lsn");
int numeracy=Integer.parseInt(request.getParameter("numeracy"));
String num=request.getParameter("num");
int science=Integer.parseInt(request.getParameter("science"));
String sci=request.getParameter("sci");
int humanities=Integer.parseInt(request.getParameter("humanities"));
String hum=request.getParameter("hum");
int ad=Integer.parseInt(request.getParameter("ad"));
String aad=request.getParameter("aad");
String gc=request.getParameter("gc");
%>

<%
Keysatgeone key=new Keysatgeone(id,sid,literacyr,lrn,literacyw,lwn,literacys,lsn,numeracy,num,science,sci,humanities,hum,ad,aad,gc);
key.updateNarration();
%>

<%@include file="keysatgeonemidyearprimaryscoolreport.jsp" %>
<p class="msg done">Evaluation Update successfully</p>

