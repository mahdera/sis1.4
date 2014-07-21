<script type="text/javascript" src="js/rptvalidation.js">
</script>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<div id="error"></div>

<%
    String id=request.getParameter("id");
	List<EarlyYearsEvaluation> helloLista = EarlyYearsEvaluation.getstudentnarration(id);
	Iterator<EarlyYearsEvaluation> helloItra = helloLista.iterator();
%>
        
	   	    
<%
			while(helloItra.hasNext()){
				EarlyYearsEvaluation g = helloItra.next();
				
				
%>				 
	    
	    
<%=g.getNarration() %>

	<%
}
%>