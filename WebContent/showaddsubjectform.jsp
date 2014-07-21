<form>
	<table border="0" width="100%">
		<tr>
			<td>Subject Name:</td>
			<td><input type="text" name="txtsubjectname" id="txtsubjectname"/></td>
		</tr>
		<tr>
			<td>Description:</td>
			<td>
				<textarea name="textareadescription" id="textareadescription" cols="70" rows="3"></textarea>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Save" onclick="saveSubject(document.getElementById('txtsubjectname').value,
						document.getElementById('textareadescription').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
	</table>
</form>