<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>

<% 
int id=0;
String sid=request.getParameter("sid");
String literacyra=request.getParameter("literacyra");
int literacyre=Integer.parseInt(request.getParameter("literacyre"));
String lrn=request.getParameter("lrn");
String literacywa=request.getParameter("literacywa");
int literacywe=Integer.parseInt(request.getParameter("literacywe"));
String lwn=request.getParameter("lwn");
String literacyslea=request.getParameter("literacyslea");
int literacysle=Integer.parseInt(request.getParameter("literacysle"));
String lsln=request.getParameter("lsln");
String uaama=request.getParameter("uaama");
int uaame=Integer.parseInt(request.getParameter("uaame"));
String uaamn=request.getParameter("uaamn");
String naaa=request.getParameter("naaa");
int naae=Integer.parseInt(request.getParameter("naae"));
String naan=request.getParameter("naan");
String ssma=request.getParameter("ssma");
int ssme=Integer.parseInt(request.getParameter("ssme"));
String ssmn=request.getParameter("ssmn");
String dha=request.getParameter("dha");
int dhe=Integer.parseInt(request.getParameter("dhe"));
String dhn=request.getParameter("dhn");
String isa=request.getParameter("isa");
int ise=Integer.parseInt(request.getParameter("ise"));
String isn=request.getParameter("isn");
String kaca=request.getParameter("kaca");
int kace=Integer.parseInt(request.getParameter("kace"));
String kacn=request.getParameter("kacn");
String rsa=request.getParameter("rsa");
int rse=Integer.parseInt(request.getParameter("rse"));
String rsn=request.getParameter("rsn");
String hkaca=request.getParameter("hkaca");
int hkace=Integer.parseInt(request.getParameter("hkace"));
String hkacn=request.getParameter("hkacn");
String ata=request.getParameter("ata");
int ate=Integer.parseInt(request.getParameter("ate"));
String atn=request.getParameter("atn");
String ca=request.getParameter("ca");
int ce=Integer.parseInt(request.getParameter("ce"));
String cn=request.getParameter("cn");
String gc=request.getParameter("gc");
String st=request.getParameter("st");
%>

<%
Endofyear endyear=new Endofyear(id,sid,literacyra,literacyre,lrn,literacywa,literacywe,lwn,literacyslea,literacysle,lsln,uaama,uaame,uaamn,naaa,naae,naan,ssma,ssme,ssmn,dha,dhe,dhn,isa,ise,isn,kaca,kace,kacn,rsa,rse,rsn,hkaca,hkace,hkacn,ata,ate,atn,ca,ce,cn,gc,st);
endyear.updateendofschoolreport();
%>

<%@include file="Keystageoneendyear.jsp" %>
<p class="msg done">Evaluation Saved successfully</p>
