<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%@page import="java.util.*"%>
<div style="background: #eeeeee">
	<table border="0" width="100%">
		<tr>
			<td align="center"><h3><a href="applicationform_local.jsp">Local Application
					Form</a></h3></td>
			<td align="center"><h3><a href="applicationform_international.jsp">International
					Application Form</a></h3></td>
		</tr>
	</table>
</div>
<fieldset>
	<legend>Application Form - International</legend>

	<form style="background: lightyellow">
		<table border="1" width="100%">
			<tr>
				<td colspan="2"><strong>
						<p style="text-align: center">
							<font size="4">Sandford International School<br />
								Application Form - International
							</font>
						</p>
				</strong></td>
			</tr>
			<tr>
				<td colspan="2">
					<fieldset>
						<legend>1. Basic Information</legend>
						<table border="1" width="100%">
							<tr>
								<td width="33%">1.1. Student's First Name:<br /> <font
									color="red">* </font><input type="text"
									name="txtstudentfirstname" id="txtstudentfirstname" value="First Name" size="30" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td width="33%">1.2. Student's Middle Name:<br /> 
								<input type="text"
									name="txtstudentmiddlename" id="txtstudentmiddlename" value="Middle Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td width="33%">1.3. Students Last Name:<br /> <font
									color="red">* </font><input type="text"
									name="txtstudentlastname" id="txtstudentlastname" value="Last Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>1.4. Sex:<br /> <font color="red">* </font><select
									name="slctsex" id="slctsex">
										<option value="" selected="selected">--Select--</option>
										<option value="Female">Female</option>
										<option value="Male">Male</option>
								</select>
								</td>
								<td>1.5. Date of Birth:<br /> <font color="red">* </font><input
									type="text" name="txtdateofbirth" id="txtdateofbirth" /> <img
									src="sample/images/cal.gif"
									onclick="javascript:NewCssCal('txtdateofbirth')" />
								</td>
								<td>1.6. Passport Number:<br /> <font color="red">*
								</font><input type="text" name="txtstudentpassportnumber"
									id="txtstudentpassportnumber" value="Passport Number" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>1.7. Country of Issue:<br /> <font color="red">*
								</font><input type="text"
									name="txtstudentcountryofissue" id="txtstudentcountryofissue" value="Country of Issue" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>1.8. Nationality:<br /> <font color="red">* </font><input
									type="text" name="txtstudentnationality"
									id="txtstudentnationality" value="Nationality" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>1.9. Religion:<br /> <font color="red">* </font> <select
									name="slctstudentreligion" id="slctstudentreligion"
									style="width: 50%">
										<option value="" selected="selected">--Select--</option>
										<option value="Bahai">Bahai</option>
										<option value="Budihism">Budihism</option>
										<option value="Catholic">Catholic</option>
										<option value="Conficious">Conficious</option>
										<option value="Protestant">Protestant</option>
										<option value="Muslim">Muslim</option>
										<option value="Orthodox">Orthodox</option>
										<option value="Christian">Christian</option>
										<option value="Jehovah Witness">Jehovah Witness</option>
										<option value="Other">Other</option>
								</select>
								</td>
							</tr>
							<tr>
								<td>1.10. Country of Birth:<br /> <font color="red">*
								</font> <input type="text" name="txtstudentcountryofbirth"
									id="txtstudentcountryofbirth" value="Country of Birth" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>1.11. Class into which entry if requested:<br />
								<font color="red">* </font> <select name="slctlevel"
									id="slctlevel" style="width: 50%">
										<option value="" selected="selected">--Select--</option>
										<%
											List<Level> levelList = Level.getAllLevels();
											Iterator<Level> levelItr = levelList.iterator();
											levelList = null;
											while (levelItr.hasNext()) {
												Level level = levelItr.next();
										%>
										<option value="<%=level.getId()%>"><%=level.getLevelName()%></option>
										<%
											}//end while loop
										%>
								</select>
								</td>
								<td><br /></td>
							</tr>
						</table>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<fieldset>
						<legend>2. Previous Schools Attended</legend>
						<div align="right">
							<a href="#.jsp"
								onclick="insertNewGridRow(document.getElementById('educationGrid'));">
								[Add School Attended] </a> | <a href="#.jsp"
								onclick="removeTableRow(document.getElementById('educationGrid'));">
								[Remove School Attended] </a>
						</div>
						<table border="1" width="100%" id="educationGrid">
							<thead>
								<tr>
									<th style="background: #eeeeee; color: black;">Name of
										School</th>
									<th style="background: #eeeeee; color: black;">Type of
										School</th>
									<th style="background: #eeeeee; color: black;">Years</th>
									<th style="background: #eeeeee; color: black;">Classes</th>
									<th style="background: #eeeeee; color: black;">Language
										Used</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td width="50%"><input type="text" name="txtnameofschool1"
										id="txtnameofschool1" size="40" /></td>
									<td><input type="text" name="txttypeofschool1"
										id="txttypeofschool1" /></td>
									<td><input type="text" name="txtyears1" id="txtyears1" />
									</td>
									<td><input type="text" name="txtclasses1" id="txtclasses1" />
									</td>
									<td><input type="text" name="txtlanguageused1"
										id="txtlanguageused1" /></td>
								</tr>
							</tbody>
						</table>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td>4. Please mark any areas in which your child has
					difficulties in the past:</td>
				<td>
					<table border="0" width="100%">
						<tr>
							<td>Reading <input type="checkbox"
								name="chkdifficulityreading" id="chkdifficulityreading" /></td>
							<td>Mathematics <input type="checkbox"
								name="chkdifficulitymathematics" id="chkdifficulitymathematics" /></td>
							<td>Language <input type="checkbox"
								name="chkdifficulitylanguage" id="chkdifficulitylanguage" /></td>
							<td>Behavioral <input type="checkbox"
								name="chkdifficulitybehavioral" id="chkdifficulitybehavioral" /></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>5. Please mark any areas in which your child is
					gifted/talented</td>
				<td>
					<table border="0" width="100%">
						<tr>
							<td>Reading <input type="checkbox" name="chkgiftedreading"
								id="chkgiftedreading" /></td>
							<td>Mathematics <input type="checkbox"
								name="chkgiftedmathematics" id="chkgiftedmathematics" /></td>
							<td>Language <input type="checkbox" name="chkgiftedlanguage"
								id="chkgiftedlanguage" /></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>6. Others (Specify):</td>
				<td><textarea cols="80" rows="2" name="textareaothers"
						id="textareaothers">Others...</textarea></td>
			</tr>
			<tr>
				<td>Give details of any disability, medication which is likely
					to affect normal school activity:</td>
				<td><textarea cols="80" rows="2" name="textareamedication"
						id="textareamedication">Disability information...</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<fieldset>
						<legend>7. Father's Information</legend>
						<table border="1" width="100%">
							<tr>
								<td width="33%">7.1. First Name:<br /> <font color="red">*
								</font><input type="text" name="txtfatherfirstname"
									id="txtfatherfirstname" value="First Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td width="33%">7.2. Middle Name:<br />
								<input type="text" name="txtfathermiddlename"
									id="txtfathermiddlename" value="Middle Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td width="33%">7.3. Last Name:<br /> <font color="red">*
								</font><input type="text" name="txtfatherlastname"
									id="txtfatherlastname"  value="Last Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>7.4. Passport Number:<br /> <font color="red">*
								</font><input type="text" name="txtfatherpassportnumber"
									id="txtfatherpassportnumber" value="Passport Number" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.5. Country of Issue:<br /><font color="red">* </font><input type="text"
									name="txtfathercountryofissue" id="txtfathercountryofissue" value="Country of Issue"  style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.6. Religion:<br /> <font color="red">* </font> <select
									name="slctfatherreligion" id="slctfatherreligion"
									style="width: 50%">
										<option value="" selected="selected">--Select--</option>
										<option value="Bahai">Bahai</option>
										<option value="Budihism">Budihism</option>
										<option value="Catholic">Catholic</option>
										<option value="Conficious">Conficious</option>
										<option value="Protestant">Protestant</option>
										<option value="Muslim">Muslim</option>
										<option value="Orthodox">Orthodox</option>
										<option value="Christian">Christian</option>
										<option value="Jehovah Witness">Jehovah Witness</option>
										<option value="Other">Other</option>
								</select>
								</td>
							</tr>
							<tr>
								<td>7.7. Occupation:<br /> <font color="red">* </font><input type="text"
									name="txtfatheroccupation" id="txtfatheroccupation" value="Occupation" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.8. Place of Work:<br /> <font color="red">* </font><input
									type="text" name="txtfatherplaceofwork"
									id="txtfatherplaceofwork" value="Place of Work" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.9. Name of Org.<br /> <input type="text"
									name="txtfathernameoforganization"
									id="txtfathernameoforganization" value="Name of Org." style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>7.10. Office Tel:<br /> <input type="text"
									name="txtfatherofficetelephone" id="txtfatherofficetelephone" value="Office Tele." style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.11. Fax:<br /> <input
									type="text" name="txtfatherfax" id="txtfatherfax" value="Fax" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.12. P.O.Box No.<br /> <input type="text"
									name="txtfatherpobox" id="txtfatherpobox" value="P.O.Box" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>7.13. Email:<br /> <font color="red">* </font> <input
									type="text" name="txtfatheremail" id="txtfatheremail" value="Email" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.14. Home Tel:<br />
								<input type="text"
									name="txtfatherhometelephone" id="txtfatherhometelephone" value="Home Tele" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.15. Mobile:<br /> <font color="red">* </font><input type="text"
									name="txtfathermobile" id="txtfathermobile" value="Mobile" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>7.16. Home Pobox:<br />  <input
									type="text" name="txtfatherhomepobox" id="txtfatherhomepobox" value="Home POBox" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>7.17. Is Staff:<br /> <font color="red">* </font><select name="slctfatherisstaff"
									id="slctfatherisstaff" style="width: 30%">
										<option value="" selected="selected">--Select--</option>
										<option value="true">Yes</option>
										<option value="false">No</option>
								</select>
								</td>
								<td></td>
							</tr>
						</table>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<fieldset>
						<legend>8. Mother's Information</legend>
						<table border="1" width="100%">
							<tr>
								<td width="33%">8.1. First Name:<br /> <font color="red">*
								</font><input type="text" name="txtmotherfirstname"
									id="txtmotherfirstname" value="First Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td width="33%">8.2. Middle Name:<br />
								<input type="text" name="txtmothermiddlename"
									id="txtmothermiddlename" value="Middle Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td width="33%">8.3. Last Name:<br /> <font color="red">*
								</font><input type="text" name="txtmotherlastname"
									id="txtmotherlastname" value="Last Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>8.4. Passport Number:<br /> <font color="red">*
								</font><input type="text" name="txtmotherpassportnumber"
									id="txtmotherpassportnumber" value="Passport Number" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.5. Country of Issue:<br /> <font color="red">* </font><input type="text"
									name="txtmothercountryofissue" id="txtmothercountryofissue" value="Country of Issue" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.6. Religion:<br /> <font color="red">* </font> <select
									name="slctmotherreligion" id="slctmotherreligion"
									style="width: 50%">
										<option value="" selected="selected">--Select--</option>
										<option value="Bahai">Bahai</option>
										<option value="Budihism">Budihism</option>
										<option value="Catholic">Catholic</option>
										<option value="Conficious">Conficious</option>
										<option value="Protestant">Protestant</option>
										<option value="Muslim">Muslim</option>
										<option value="Orthodox">Orthodox</option>
										<option value="Christian">Christian</option>
										<option value="Jehovah Witness">Jehovah Witness</option>
										<option value="Other">Other</option>
								</select>
								</td>
							</tr>
							<tr>
								<td>8.7. Occupation:<br /> <font color="red">* </font><input type="text"
									name="txtmotheroccupation" id="txtmotheroccupation" value="Occupation" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.8. Place of Work:<br /> <font color="red">* </font><input
									type="text" name="txtmotherplaceofwork"
									id="txtmotherplaceofwork" value="Place of Work" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.9. Name of Org.<br /> <input type="text"
									name="txtmothernameoforganization"
									id="txtmothernameoforganization" value="Name of Org." style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>8.10. Office Tel:<br /> <input type="text"
									name="txtmotherofficetelephone" id="txtmotherofficetelephone" value="Office Tel." style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.11. Fax:<br /> <input
									type="text" name="txtmotherfax" id="txtmotherfax" value="Fax" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.12. P.O.Box No.<br /> <input type="text"
									name="txtmotherpobox" id="txtmotherpobox" value="POBox" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>8.13. Email:<br /> <font color="red">* </font> <input
									type="text" name="txtmotheremail" id="txtmotheremail" value="Email" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.14. Home Tel:<br />
								<input type="text"
									name="txtmotherhometelephone" id="txtmotherhometelephone" value="Home Tel." style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.15. Mobile:<br /> <font color="red">* </font><input type="text"
									name="txtmothermobile" id="txtmothermobile" value="Mobile" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>8.16. Home Pobox:<br /> <input
									type="text" name="txtmotherhomepobox" id="txtmotherhomepobox" value="Home POBox" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>8.17. Is Staff:<br /><font color="red">* </font> <select name="slctmotherisstaff"
									id="slctmotherisstaff" style="width: 30%">
										<option value="" selected="selected">--Select--</option>
										<option value="true">Yes</option>
										<option value="false">No</option>
								</select>
								</td>
								<td></td>
							</tr>
						</table>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td>9. Language spoken at Home:</td>
				<td><textarea cols="80" rows="2"
						name="textarealanguagespokenathome"
						id="textarealanguagespokenathome" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);">Language spoken at home...</textarea></td>
			</tr>
			<tr>
				<td>9.1. Other language spoken:</td>
				<td><textarea cols="80" rows="2"
						name="textareaotherlanguagespoken"
						id="textareaotherlanguagespoken" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);">Other languages spoken...</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<fieldset>
						<legend>10. Emergency Contact Information</legend>
						<table border="1" width="100%">
							<tr>
								<td width="33%">10.1. Full Name:<br /> <font color="red">*
								</font><input type="text" name="txtemergencycontactfullname"
									id="txtemergencycontactfullname" value="Full Name" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td width="33%">10.2. Relationship:<br /> <font color="red">*
								</font><input type="text" name="txtrelationship" id="txtrelationship" value="Relationship" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td width="33%">10.3. Office Tel:<br /> 
								<input type="text" name="txtemergencycontactofficetelephone"
									id="txtemergencycontactofficetelephone" value="Office Tel." style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
							</tr>
							<tr>
								<td>10.4. Home Tel:<br /> <input
									type="text" name="txtemergencycontacthometelephone"
									id="txtemergencycontacthometelephone" value="Home Tel." style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td>10.5. Mobile:<br /> <font color="red">*</font><input type="text"
									name="txtemergencycontactmobile" id="txtemergencycontactmobile" value="Mobile" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/>
								</td>
								<td></td>
							</tr>
						</table>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td>10.5. Person/Organization responsible for paying fees:</td>
				<td><font color="red">*</font><input type="text" name="txtpersonpayingfee"
					id="txtpersonpayingfee" value="Person/Organization Responsible for paying fees" style="color:gray;font-weight:bolder" onclick="clearTextOnThisField(this.id);"/></td>
			</tr>
			<tr>
				<td>10.6. Expected date of arrival/Admission:</td>
				<td><font color="red">*</font><input type="text" name="txtarrivaldate"
					id="txtarrivaldate" /> <img src="sample/images/cal.gif"
					onclick="javascript:NewCssCal('txtarrivaldate')" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<fieldset>
						<legend>11. List of Sisters and Brothers Currently
							Attending Sandford International School</legend>
						<div align="right">
							<a href="#.jsp"
								onclick="insertNewSiblingsGridRow(document.getElementById('siblingGrid'));">
								[Add Sibling] </a> | <a href="#.jsp"
								onclick="removeTableRow(document.getElementById('siblingGrid'));">
								[Remove Sibling] </a>
						</div>
						<table border="1" width="100%" id="siblingGrid">
							<thead>
								<tr>
									<th style="background: #eeeeee; color: black;">First Name</th>
									<th style="background: #eeeeee; color: black;">Middle Name</th>
									<th style="background: #eeeeee; color: black;">Last Name</th>
									<th style="background: #eeeeee; color: black;">Relation</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="text" name="txtsiblingfirstname1"
										id="txtsiblingfirstname1" size="40" /></td>
									<td><input type="text" name="txtsiblingmiddlename1"
										id="txtsiblingmiddlename1" size="40" /></td>
									<td><input type="text" name="txtsiblinglastname1"
										id="txtsiblinglastname1" size="40" /></td>
									<td><select name="slctsiblingrelation1"
										id="slctsiblingrelation1">
											<option value="" selected="selected">--Select--</option>
											<option value="Brother">Brother</option>
											<option value="Sister">Sister</option>
									</select> <input type="hidden" name="hiddenformtype" id="hiddenformtype"
										value="international" /></td>
								</tr>
							</tbody>
						</table>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td align="right" colspan="2"><input type="button"
					value="Register" class="input-submit"
					onclick="saveStudentApplication(
							document.getElementById('txtstudentfirstname').value,document.getElementById('txtstudentmiddlename').value,
							document.getElementById('txtstudentlastname').value,document.getElementById('slctsex').value,
							document.getElementById('txtdateofbirth').value,document.getElementById('txtstudentpassportnumber').value,
							document.getElementById('txtstudentcountryofissue').value,document.getElementById('txtstudentnationality').value,
							document.getElementById('slctstudentreligion').value,document.getElementById('txtstudentcountryofbirth').value,
							document.getElementById('slctlevel').value,document.getElementById('educationGrid'),
							document.getElementById('chkdifficulityreading'),document.getElementById('chkdifficulitymathematics'),
							document.getElementById('chkdifficulitylanguage'),document.getElementById('chkdifficulitybehavioral'),
							document.getElementById('chkgiftedreading'),document.getElementById('chkgiftedmathematics'),
							document.getElementById('chkgiftedlanguage'),
							document.getElementById('textareaothers').value,document.getElementById('textareamedication').value,
							document.getElementById('txtfatherfirstname').value,document.getElementById('txtfathermiddlename').value,
							document.getElementById('txtfatherlastname').value,document.getElementById('txtfatherpassportnumber').value,
							document.getElementById('txtfathercountryofissue').value,document.getElementById('slctfatherreligion').value,
							document.getElementById('txtfatheroccupation').value,document.getElementById('txtfatherplaceofwork').value,
							document.getElementById('txtfathernameoforganization').value,document.getElementById('txtfatherofficetelephone').value,
							document.getElementById('txtfatherfax').value,document.getElementById('txtfatherpobox').value,
							document.getElementById('txtfatheremail').value,document.getElementById('txtfatherhometelephone').value,
							document.getElementById('txtfathermobile').value,document.getElementById('txtfatherhomepobox').value,
							document.getElementById('txtmotherfirstname').value,document.getElementById('txtmothermiddlename').value,
							document.getElementById('txtmotherlastname').value,document.getElementById('txtmotherpassportnumber').value,
							document.getElementById('txtmothercountryofissue').value,document.getElementById('slctmotherreligion').value,
							document.getElementById('txtmotheroccupation').value,document.getElementById('txtmotherplaceofwork').value,
							document.getElementById('txtmothernameoforganization').value,document.getElementById('txtmotherofficetelephone').value,
							document.getElementById('txtmotherfax').value,document.getElementById('txtmotherpobox').value,
							document.getElementById('txtmotheremail').value,document.getElementById('txtmotherhometelephone').value,
							document.getElementById('txtmothermobile').value,document.getElementById('txtmotherhomepobox').value,
							document.getElementById('textarealanguagespokenathome').value,document.getElementById('textareaotherlanguagespoken').value,
							document.getElementById('txtemergencycontactfullname').value,document.getElementById('txtrelationship').value,
							document.getElementById('txtemergencycontactofficetelephone').value,document.getElementById('txtemergencycontacthometelephone').value,
							document.getElementById('txtemergencycontactmobile').value,document.getElementById('txtpersonpayingfee').value,
							document.getElementById('txtarrivaldate').value,document.getElementById('siblingGrid'),'international',
							document.getElementById('slctfatherisstaff').value,document.getElementById('slctmotherisstaff').value);" />
					<input type="reset" value="Clear All" class="input-submit" /></td>
			</tr>
		</table>
	</form>

</fieldset>