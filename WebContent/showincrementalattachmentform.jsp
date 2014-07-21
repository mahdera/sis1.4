<div>	
		<table border="1" width="100%" id="attachementGrid" rules="rows,col">
			<tr>
				<td colspan="3">
					<div align="right">
						<a href="#.jsp"
							onclick="insertNewGridRowAttachment(document.getElementById('attachementGrid'));">
							<img src="design/add-icon.gif" border="0" align="middle"
							title="Add new row" /> </a> <a href="#.j sp"
							onclick="removeTableRow(document.getElementById('attachementGrid'));">
							<img src="design/hr.gif" border="0" align="middle"
							title="Remove last row" /> </a>
					</div></td>
			</tr>
			<tr>
				<td colspan="3"><input type="hidden" name="hiddentablerowctr"
					id="hiddentablerowctr" /></td>
			</tr>
			<tbody>
			</tbody>
		</table>
		<table border="1" width="100%">
			<tr>
				<td colspan="3" align="right"><input type="submit"
					value="Submit" class="input-submit" /> <input type="reset"
					value="Clear All" class="input-submit" /></td>
			</tr>
		</table>
	
</div>