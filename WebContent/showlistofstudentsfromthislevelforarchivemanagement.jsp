<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	int level = Integer.parseInt(request.getParameter("levelId"));
	List<Applicant> a = StudentLevel.getLevelStuds(level);
	int ctr = 1;
	if(!a.isEmpty()){
	Iterator<Applicant> itr=a.iterator();
%>
<form style="background:#fff">
<table border="0" id="studentProgressTable" class="display" cellspacing="0" width="100%">
	<tr>		
		<th>Ser.No</th>
		<th>Select</th>
		<th>First Name</th>
		<th>Middle Name</th>
		<th>Last Name</th>
		<th>Sex</th>
		<th>Student Type</th>
		<th>Nationality</th>		
	</tr>
	<%			
			while(itr.hasNext()){
			Applicant applicant = itr.next();	
			String checkBoxId = "chk_" + ctr;
			if(ctr % 2 == 0){
			%>
			<tr class="bg">
			<%
			}else{
				%>
			<tr>
				<%
			}
			%>
				<td><%=ctr %></td>
				<td align="center">
					<input type="checkbox" name="<%=checkBoxId %>" id="<%=checkBoxId %>" value="<%=applicant.getId() %>" class="checkBoxClass"/>
				</td>
				<td><%=applicant.getFirstName() %></td>
				<td><%=applicant.getMiddleName() %></td>
				<td><%=applicant.getLastName() %></td>
				<td><%=applicant.getSex() %></td>
				<td><%=applicant.getType() %></td>
				<td><%=applicant.getNationality() %></td>				
			</tr>
			<tr>
				<td colspan="10">
					<%
						String divId = "applicantDetail" + applicant.getId();
					%>
					<div id="<%=divId %>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
	<tr>
		<td colspan="8" align="left">
			<a href="#.jsp" id="checkAllLink">Check All</a> |
			<a href="#.jsp" id="uncheckAllLink">Uncheck All</a>
		</td>
	</tr>
	<tr>
		<td colspan="8" align="right">
			<input type="button" value="Move Selected Student(s) to Archieve" class="input-submit" id="btnmove"/>
			<input type="reset" value="Clear Selection(s)" class="input-submit"/>
		</td>
	</tr>
</table>
</form>
<%
	}else{
	%>
		<p class="msg warning">No information found!</p>
	<%
	}
%>
<script type="text/javascript">
	$(document).ready(function(){
		var ctr = "<%=ctr-1 %>";
				
		$('#checkAllLink').click(function() {                
           $(".checkBoxClass").prop('checked', true);
        });
		
		$('#uncheckAllLink').click(function() {                
	           $(".checkBoxClass").prop('checked', false);
	    });
		
		$('#btnmove').click(function(){
			if(window.confirm('Are you sure you want to move the selected students to archive?')){
				var selectedCheckBoxCounter = 1;
				var dataString = "";
				var j=1;
				for(var i=1;i<=ctr;i++){
					var checkBoxId = "chk_"+i;
					if($('#'+checkBoxId).is(':checked')){
						var selectedCheckboxId = 'chk'+j;
						dataString += '&' + selectedCheckboxId + '=' + $('#' + checkBoxId).val();
						selectedCheckBoxCounter++;
						j++;
					}//end if...condition...
				}//end for...loop
				
				dataString += '&selectedCheckBoxCounter=' + (selectedCheckBoxCounter - 1);
				
				$.ajax({
	                type: 'POST',
	                data: dataString,
	                url: 'moveselectedstudentstoarchive.jsp',
	                success: function(response) {
	                		$('#studentListDiv').html(response);                    
	                }
	            });
			}//end confirmation if...condition
		});		
	});//end document.ready function
</script>