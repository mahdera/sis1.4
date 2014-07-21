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
		<option value="<%=h.getSid()%>"><%=h.getSMname()+" "+h.getSFname()%></option>
	<% 
		} 
	%>
</select>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsid').change(function(){
			var id = $('#txtsid').val();
			if(id != ""){
				var table = "KeyStageTwo";
				var evaluationType = "mid-year";
				var dataString = "table="+table+"&evaluationType="+evaluationType+
				"&studentIdNumber="+id;
				$.ajax({
				    url: 'checkifstudentresultisalreadysaved.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){				    		
				    		if(response.trim() == "Saved"){				    			
				    			$('#textdesp').html("<p class='msg warning'>Mid-year result is already saved for this student in this academic year!</p>");
				    		}else if(response.trim() == "Not"){				    			
				    			var dataString = "id="+id;
							$.ajax({
							    url: 'displaydateofbirthforthisstudent.jsp',		
							    data: dataString,
							    type:'POST',
							    success:function(response){				    		
							    		$('#age').html(response);					
							    },
							    error:function(error){
									alert(error);
							    }
							});
							$('#textdesp').load("narrationupperkeysatgetwoyear5midyearprimaryscoolreport.jsp?id="+id);
				    		}					
				    },
				    error:function(error){
						alert(error);
				    }
				});				
			}//end if condition...
		});
	});//end document.ready function
</script>