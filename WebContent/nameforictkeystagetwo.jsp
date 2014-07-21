<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	List<Studentclass> helloList = Studentclass.getAllStudentbyclass(id);
	Iterator<Studentclass> helloItr = helloList.iterator();
%>
<select id="txtsid" style="width:100%">
	 <option value="">Select Name</option>
		<%
			int ctr=1;
				while(helloItr.hasNext()){
					Studentclass h = helloItr.next();
		%>
						<option id="txtsid" value="<%=h.getSid()%>"><%=h.getSMname()+" "+h.getSFname()%></option>
		<% 
				}//end while loop 
		%>
</select>	
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsid').change(function(){
			var id = $('#txtsid').val();
			if(id != ""){
				$('#textdesp').load("narrationictkeystagetwo.jsp?id="+id);
			}
		});
	});//end document.ready function
</script>