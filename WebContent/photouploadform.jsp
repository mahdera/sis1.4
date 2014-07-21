<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	<form method="post" enctype="multipart/form-data" action="savestudentphoto.jsp">
	<table border="0" width="100%">
		<tr>
			<td>Enter Student Photo:</td>
			<td>
				<input type="file" name="fleemployeephoto" id="fleemployeephoto"/>
				<input type="text" name="hiddsid" id="hiddsid"/> 
			</td>
		</tr>
		<tr>
		<td>Enter Student Photo:</td>
		<td>
			<input type="file" name="fleemployeephotoa" id="fleemployeephotoa"/>
		</td>
		</tr>
		<tr>
		<td>Enter Student Photo:</td>
		<td>
		        <input type="file" name="fleemployeephotob" id="fleemployeephotob"/>
		</td>
		</tr>
		<tr>
		<td>Enter Student Photo:</td>
		<td>
		       <input type="file" name="fleemployeephotoc" id="fleemployeephotoc"/>
		</td>
		</tr>
		<tr>
		<td colspan="2" align="center">
				<input type="submit" value="Upload Photo"/>
				<input type="reset" value="Clear"/>
		</td>
		</tr>
		
		
	</table>
	</form>
</div>