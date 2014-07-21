<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	List<Studentclass> studentList = Studentclass.getAllStudentbyclass(id);
	Iterator<Studentclass> studentItr = studentList.iterator();
%>

<select id="txtsid" style="width:100%">
 			<option value="">Select Name</option>
<%
			while(studentItr.hasNext()){
				Studentclass h = studentItr.next();
%>
				<option value="<%=h.getSid()%>"><%=h.getSMname()+" "+h.getSFname()%></option>
<% 
			}//end while loop 
%>
</select>
<script type="text/javascript">
	$(document).ready(function(){
		$('#txtsid').change(function(){			
			var id = $('#txtsid').val();
			if(id != ""){				
				//first check if this student has a record saved already
				var table = "Nursery";
				var evaluationType = "mid-year";
				var dataString = "table="+table+"&evaluationType="+evaluationType+
				"&studentIdNumber="+id;
				$.ajax({
				    url: 'checkifstudentresultisalreadysaved.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){				    		
				    		if(response.trim() == "Saved"){				    			
				    			$('#textarea').html("<p class='msg warning'>Mid-year result is already saved for this student in this academic year!</p>");
				    		}else if(response.trim() == "Not"){				    			
				    			var dataString = "id="+id;
							$.ajax({
							    url: 'displaydateofbirthforthisstudent.jsp',		
							    data: dataString,
							    type:'POST',
							    success:function(response){				    		
							    		$('#dated').html(response);					
							    },
							    error:function(error){
									alert(error);
							    }
							});
							$('#textarea').load('narration.jsp');
				    		}					
				    },
				    error:function(error){
						alert(error);
				    }
				});				
			}//end if condition
		});
	});//end document.ready function
</script>