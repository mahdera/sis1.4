<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>


<%
    int id=Integer.parseInt(request.getParameter("id"));
	List<EarlyYearsEvaluation> helloLista = EarlyYearsEvaluation.age(id);
	Iterator<EarlyYearsEvaluation> helloItra = helloLista.iterator();
%>
        
	   	    
<%
			while(helloItra.hasNext()){
				EarlyYearsEvaluation g = helloItra.next();
				
				int age=g.getAge()/365;
				
%>				 
	    
	    
<input type="text" name="txtage" id="txtage" value="<%=age%>" readonly="readonly" style="border:none"/>

	<%
}
%>