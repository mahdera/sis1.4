function testAddApplicant(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(textField).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "testAddApplicant.jsp", true);
	xmlhttp.send();
}

function pageScroll() {
    	window.scrollBy(0,50); // horizontal and vertical scroll increments
    	scrolldelay = setTimeout('pageScroll()',100); // scrolls every 100 milliseconds
}
/*
function performThisFunction(menuName) {
	// //alert(menuName);
	if (menuName == "adminFieldsManagement") {
		
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "adminfieldsmanagementinnercontent.jsp", true);
		xmlhttp.send();
	} else if (menuName == "studentEvaluationManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "studentevaluationinnercontent.jsp", true);
		xmlhttp.send();
	} else if (menuName == "accountManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "accountmanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "userManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "usermanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "roleManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "rolemanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "reportManagement") {
		// //alert("report");
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "reportmanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "applicationRequestManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "applicationrequestmanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "admissionProcessManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "admissionprocessmanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "gradeCardsManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "gradecardsmanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "achievementEffortEvaluationManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "achievementeffortevaluationmanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "attendanceManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "attendancemanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "notificationManagement" || menuName == "contactInfoManagement") {
		// //alert("muskat");
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		// //alert("inside notification management call");
		xmlhttp.open("GET", "notificationmanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "importDataManagement") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "importdatamanagement.jsp", true);
		xmlhttp.send();
	} else if (menuName == "changePass"){
		////alert("at change");
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "change.jsp", true);
		xmlhttp.send();
	}
else if (menuName == "feeManagement") {
		
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("content").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "feeManagement.jsp", true);
		// xmlhttp.open("GET", "notificationmanagement.jsp", true);
		xmlhttp.send();
	} 
}*/

function showImportDataFormFor(actionType) {
	if (actionType == "listOfApplicants") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("importDataDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "importapplicantsdatafromexcelform.jsp", true);
		xmlhttp.send();
	}
}

function showstudentevaluationInnerMenu(menu) {
	if (menu == "Reception") {
		document.getElementById('showdetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showdetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "reseptionmenu.jsp", true);
		xmlhttp.send();
	} else if (menu == "Key Stage One") {
		document.getElementById('showdetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showdetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "keystageonemenu.jsp", true);
		xmlhttp.send();
	} else if (menu == "Key Stage Two") {
		document.getElementById('showdetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showdetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "keystagetwomenu.jsp", true);
		xmlhttp.send();
	} else if (menu == "Primary") {
		document.getElementById('showdetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showdetail").innerHTML = xmlhttp.responseText;
			}
		}
		// xmlhttp.open("GET", "", true);
		// xmlhttp.send();
	} else if (menu == "Specialist") {
		document.getElementById('showdetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showdetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "menuforspecialist.jsp", true);
		xmlhttp.send();
	} else if (menu == "Report") {
		document.getElementById('showdetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showdetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "report.jsp", true);
		xmlhttp.send();
	}

}

function showAddAttendanceForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddattendanceformnow.jsp", true);
	xmlhttp.send();
}
function showFeeEnteranceForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showFeeEntrance.jsp", true);
	xmlhttp.send();
}


function showListOfStudentsForAttendance(supervisor, date, session,
		section) {
	if (supervisor == "") {
		document.getElementById("slctsupervisor").style.borderColor = "red";
		document.getElementById("slctsupervisor").focus();
		return false;
	} else if (date == "") {
		document.getElementById("txtdate").style.borderColor = "red";
		document.getElementById("txtdate").focus();
		return false;
	} else if (session == "") {
		document.getElementById("slctsession").style.borderColor = "red";
		document.getElementById("slctsession").focus();
		return false;
	} else if (section == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else  {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			//alert("xmlhttp.readyState = "+xmlhttp.readyState+"   xmlhttp.status = "+xmlhttp.status);
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("attendanceDiv").innerHTML = xmlhttp.responseText;
			}
		}
		
		xmlhttp.open("GET", "showlistofstudentsforattendance.jsp?supervisor="
				+ supervisor + "&date=" + date + "&session=" + session
				+ "&section=" + section, true);
		xmlhttp.send();
	}
}
function showListOfStudentsForFee(levelId, sectionId, accademicYear) {
	if (levelId == "") {
		document.getElementById("selectLevel").style.borderColor = "red";
		document.getElementById("selectLevel").focus();
		return false;
	}  else if (sectionId == "") {
		document.getElementById("slctsession").style.borderColor = "red";
		document.getElementById("slctsession").focus();
		return false;
	} else if (accademicYear == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else  {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			//alert("xmlhttp.readyState = "+xmlhttp.readyState+"   xmlhttp.status = "+xmlhttp.status);
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("attendanceDiv").innerHTML = xmlhttp.responseText;
			}
		}
		
		xmlhttp.open("GET", "showlistofstudentforfee.jsp?levelId="
				+ levelId  + "&sectionId=" + sectionId
				+ "&accademicYear=" + accademicYear, true);
		xmlhttp.send();
	}
}
function showTheSectionThisTeacherIsTeaching(teacherId) {
	// //alert(teacherId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showthesectionthisteacheristeaching.jsp?teacherId="
			+ teacherId, true);
	xmlhttp.send();
}

/*
 * function showListOfStudentsForAttendance(teacherId,attendanceDate,sectionId){
 * ////alert(teacherId+":"+attendanceDate+":"+sectionId); if
 * (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, // Safari
 * xmlhttp = new XMLHttpRequest(); } else {// code for IE6, IE5 xmlhttp = new
 * ActiveXObject("Microsoft.XMLHTTP"); } xmlhttp.onreadystatechange = function() {
 * if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
 * document.getElementById("attendanceDiv").innerHTML = xmlhttp.responseText; } }
 * xmlhttp.open("GET",
 * "showlistofstudentsforattendance.jsp?teacherId="+teacherId+"&attendanceDate="+attendanceDate+"&sectionId="+sectionId,
 * true); xmlhttp.send(); }
 */

function showAddAchievementEffortEvaluationForm() {
	// //alert("eval");
	// document.getElementById('subReportParameterSelectorDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddachievementefforteacherselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfAchievementEffortEvaluationsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showaddachievementefforteacherselectorbarforaeeedit.jsp", true);
	xmlhttp.send();
}

function showListOfAchievementEffortEvaluations() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddachievementefforteacherselectorbarforshow.jsp",
			true);
	xmlhttp.send();
}

function showListOfLevelsManagedByThisTeacherInThisAcademicYearAndTermForShow(
		teacherId, academicYearId, termId) {
	if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else if (termId == "") {
		document.getElementById("slctterm").style.borderColor = "red";
		document.getElementById("slctterm").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("levelListDivShow").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp
				.open(
						"GET",
						"showlistoflevelsmanagedbythisteacherinthisacademicyearandtermforshow.jsp?teacherId="
								+ teacherId
								+ "&academicYearId="
								+ academicYearId + "&termId=" + termId, true);
		xmlhttp.send();
	}
}

function showListOfStudentsInThisTeachesValueForShow(teachesId, teacherId,
		academicYearId, termId) {
	if (teachesId == "") {
		document.getElementById("slctteaches").style.borderColor = "red";
		document.getElementById("slctteaches").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListDivShow").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp
				.open(
						"GET",
						"showlistoflevelsmanagedbythisteacherinthisacademicyeartermandevaluationforshow.jsp?teacherId="
								+ teacherId
								+ "&academicYearId="
								+ academicYearId
								+ "&termId="
								+ termId
								+ "&teachesId=" + teachesId, true);
		xmlhttp.send();
	}
}

function showListOfLevelsManagedByThisTeacherInThisAcademicYearAndTerm(
		teacherId, academicYearId, termId) {
	if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else if (termId == "") {
		document.getElementById("slctterm").style.borderColor = "red";
		document.getElementById("slctterm").focus();
		return false;
	} else {
		// //alert(teacherId+":"+academicYearId+":"+termId);
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("levelListDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistoflevelsmanagedbythisteacherinthisacademicyearandterm.jsp?teacherId="
						+ teacherId + "&academicYearId=" + academicYearId
						+ "&termId=" + termId, true);
		xmlhttp.send();
	}
}

function showListOfLevelsManagedByThisTeacherInThisAcademicYearAndTermForAEEEdit(
		teacherId, academicYearId, termId) {
	if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else if (termId == "") {
		document.getElementById("slctterm").style.borderColor = "red";
		document.getElementById("slctterm").focus();
		return false;
	} else {
		// //alert(teacherId+":"+academicYearId+":"+termId);
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("levelListDivEdit").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp
				.open(
						"GET",
						"showlistoflevelsmanagedbythisteacherinthisacademicyearandtermforeeedit.jsp?teacherId="
								+ teacherId
								+ "&academicYearId="
								+ academicYearId + "&termId=" + termId, true);
		xmlhttp.send();
	}
}

function showListOfStudentsInThisTeachesValue(teachesId) {
	// //alert(teachesId);
	if (teachesId == "") {
		document.getElementById("slctteaches").style.borderColor = "red";
		document.getElementById("slctteaches").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsinthisteachesvalue.jsp?teachesId="
						+ teachesId, true);
		xmlhttp.send();
	}
}

function showListOfStudentsInThisTeachesValueForEEEdit(teachesId, teacherId,
		academicYearId, termId) {
	// //alert(teachesId);
	if (teachesId == "") {
		document.getElementById("slctteaches").style.borderColor = "red";
		document.getElementById("slctteaches").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsinthisteachesvalueforeeedit.jsp?teachesId="
						+ teachesId + "&teacherId=" + teacherId
						+ "&academicYearId=" + academicYearId + "&termId="
						+ termId, true);
		xmlhttp.send();
	}
}

function showReportServiceInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportserviceinnermenu.jsp", true);
	xmlhttp.send();
}

function showClassStudentSummaryReportNow(teacherId, sectionId) {
	if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("displayReportContentDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showclassstudentsummaryreportnow.jsp?teacherId="
				+ teacherId + "&sectionId=" + sectionId, true);
		xmlhttp.send();
	}
}

function showReport(reportType) {
	// //alert(reportType);
	if (reportType == "") {
		document.getElementById("slctreporttype").style.borderColor = "red";
		document.getElementById("slctreporttype").focus();
		return false;
	} else {
		if (reportType == "classstudentsummery") {
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showclassstudentsummeryreport.jsp", true);
			xmlhttp.send();
		} else if (reportType == "letteroftransfer") {
			// document.getElementById('subReportParameterSelectorDiv').innerHTML
			// = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showletteroftranferreport.jsp", true);
			xmlhttp.send();
		} else if (reportType == "guardiancontactlist") {
			// document.getElementById('subReportParameterSelectorDiv').innerHTML
			// = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showguardiancontactlistreport.jsp", true);
			xmlhttp.send();
		} else if (reportType == "towhomitmayconcern") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showtowhomitmayconcernreport.jsp", true);
			xmlhttp.send();
		} else if (reportType == "summaryofprimaryclasses") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showsummaryofprimaryclassesreport.jsp", true);
			xmlhttp.send();
		} else if (reportType == "specialcoursegradingreport") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showspecialcoursegradingreport.jsp", true);
			xmlhttp.send();
		} else if (reportType == "endofyeargradecard79") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showendofyeargradecard79report.jsp", true);
			xmlhttp.send();
		} else if (reportType == "endofyeargradecardIGCSE1") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showendofyeargradecardigcse1.jsp", true);
			xmlhttp.send();
		} else if (reportType == "gradecardib") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showgradecardibreport.jsp", true);
			xmlhttp.send();
		} else if (reportType == "studentcourseperformancematrix") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showstudentcourseperformancematrixreport.jsp",
					true);
			xmlhttp.send();
		} else if (reportType == "listCumulativeSalesByCashierDateRange") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"listcumulativesalesbycashierdaterangeselectorbar.jsp",
					true);
			xmlhttp.send();
		} else if (reportType == "listCumulativeCreditSalesByCashierDateRange") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp
					.open(
							"GET",
							"listcumulativecreditsalesbycashierdaterangeselectorbar.jsp",
							true);
			xmlhttp.send();
		} else if (reportType == "detailCreditSalesByCashier") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "detailcreditsalesbycashierselectorbar.jsp",
					true);
			xmlhttp.send();
		} else if (reportType == "detailCreditSalesByCashierDateRange") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"detailcreditsalesbycashierdaterangeselectorbar.jsp", true);
			xmlhttp.send();
		} else if (reportType == "expiryDateReport") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "expirydatereportselectorbar.jsp", true);
			xmlhttp.send();
		} else if (reportType == "itemReorderReport") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "itemreorderreportselectorbar.jsp", true);
			xmlhttp.send();
		} else if (reportType == "shortageOverageReport") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "branchselectorbar.jsp", true);
			xmlhttp.send();
		} else if (reportType == "creditSalesCustomersAndAmountToBePaiedByDateRange") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp
					.open(
							"GET",
							"creditsalescustomersandamounttobepaidbydaterangeselectorbar.jsp",
							true);
			xmlhttp.send();
		} else if (reportType == "creditSalesSummaryListByCreditCustomerEmployees") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp
					.open(
							"GET",
							"creditsalessummarylistbycreditcustomeremployeesselectorbar.jsp",
							true);
			xmlhttp.send();
		} else if (reportType == "cashCreditSalesSummaryReport") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"cashcreditsalessummaryreportparameterselectorbar.jsp",
					true);
			xmlhttp.send();
		} else if (reportType == "detailsalescashcreditforbranchbycashier") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"detailsalescashcreditforbranchbycashierselectorbar.jsp",
					true);
			xmlhttp.send();
		} else if (reportType == "detailsalescashcreditforbranchbycashiervatonly") {
			// //alert("here");
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp
					.open(
							"GET",
							"detailsalescashcreditforbranchbycashiervatonlyselectorbar.jsp",
							true);
			xmlhttp.send();
		} else if (reportType == "detailsalescashcreditforbranchbycashiermanualonly") {
			document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("subReportParameterSelectorDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp
					.open(
							"GET",
							"detailsalescashcreditforbranchbycashiermanualonlyselectorbar.jsp",
							true);
			xmlhttp.send();
		} else if (reportType == "attendancetakesby") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showattendancereportselectorbarfordirector.jsp", true);
			xmlhttp.send();
		}else if (reportType == "attendancereport") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showattendancereportselectorbar.jsp", true);
			xmlhttp.send();
		}else if (reportType == "attendancereportforcoordinators") {
			// document.getElementById('reportDetailDiv').innerHTML = "";
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome,
				// Opera,
				// Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "showattendancereportselectorbarforcoordinators.jsp", true);
			xmlhttp.send();
		}
	}
}
function showListOfStudentsInThisSectionForEndOfYearGradeCardIGCSE1(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document
						.getElementById("displayReportContentDivEndOfYearIGCSE1").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsinthisthissectionforendofyeargradecardigcse1.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function showListOfStudentsInThisSectionForIB(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("displayReportContentDivIB").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsinthisthissectionforib.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function generateIBNarrativeForThisStudent(sectionId, studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showIBFinal").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showibnarrativereportforthisstudent.jsp?sectionId=" + sectionId
			+ "&studentId=" + studentId, true);
	xmlhttp.send();
}

function generateIBYearGradeCardForThisStudent(sectionId, studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showIBFinal").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showibreportforthisstudent.jsp?sectionId=" + sectionId
			+ "&studentId=" + studentId, true);
	xmlhttp.send();
}

function showListOfStudentsInThisSectionForEndOfYearGradeCard79(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("displayReportContentDivEndOfYear79").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsinthisthissectionforendofyeargradecard79.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function generateEndOfNarrativeIGCSE1ForThisStudent(sectionId, studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showEndOfYearIGCSE1Final").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showendofyearnarrativeigcse1reportforthisstudent.jsp?sectionId="
					+ sectionId + "&studentId=" + studentId, true);
	xmlhttp.send();
}

function generateEndOfYearGradeCardIGCSE1ForThisStudent(sectionId, studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showEndOfYearIGCSE1Final").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showendofyeargradeigcse1reportforthisstudent.jsp?sectionId="
					+ sectionId + "&studentId=" + studentId, true);
	xmlhttp.send();
}

function generateStudentPerformanceMatrixForThisSection(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showStudentPerformanceMatrixFinal").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showstudentperformancematrixforthissection.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function generateEndOfYearGradeCardForThisStudent(sectionId, studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showEndOfYearFinal").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showendofyeargradereportforthisstudent.jsp?sectionId="
			+ sectionId + "&studentId=" + studentId, true);
	xmlhttp.send();
}

function generateEndOfYearNarrativeForThisStudent(sectionId, studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showEndOfYearFinal").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showendofyearnarrativereportforthisstudent.jsp?sectionId="
			+ sectionId + "&studentId=" + studentId, true);
	xmlhttp.send();
}

function showListOfStudentsInThisSectionForSpecialCourseGrading(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("displayReportContentDivSpecialCourse").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsinthisthissectionforspecialcoursegrading.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function generateSpecialCourseGradingForThisStudent(sectionId, studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showSpecialCourseFinal").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showspecialcoursegradingforthisstudent.jsp?sectionId="
			+ sectionId + "&studentId=" + studentId, true);
	xmlhttp.send();
}

function showAttendanceReportUsingTheseParametersForDirector(teacherId, sectionIdFrom, sectionIdTo, attendanceSession, startDate, endDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceReportDivForDirector").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
					"showattendancereportusingtheseparametersfordirector.jsp?teacherId="
					+ teacherId + "&sectionIdFrom="	+ sectionIdFrom + "&sectionIdTo=" + sectionIdTo + "&attendanceSession=" + attendanceSession
					+ "&startDate="	+ startDate + "&endDate=" + endDate, true);
	xmlhttp.send();
}

function showAttendanceReportUsingTheseParametersForCoordinators(teacherId, sectionIdFrom, 
		sectionIdTo,attendanceSession, attendanceType, startDate, endDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceReportDivForCoordinators").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
					"showattendancereportusingtheseparametersforcoordinators.jsp?teacherId="
					+ teacherId + "&sectionIdFrom="
					+ sectionIdFrom + "&sectionIdTo=" + sectionIdTo
					+ "&attendanceSession=" + attendanceSession
					+ "&attendanceType=" + attendanceType + "&startDate="
					+ startDate + "&endDate=" + endDate, true);
	xmlhttp.send();
}

function showAttendanceReportUsingTheseParameters(teacherId, levelId,
		sectionId, attendanceSession, attendanceType, startDate, endDate) {
	// //alert(teacherId+":"+levelId+":"+sectionId+":"+attendanceSession+":"+attendanceType+":"+startDate+":"+endDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attendanceReportDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showattendancereportusingtheseparameters.jsp?teacherId="
					+ teacherId + "&levelId=" + levelId + "&sectionId="
					+ sectionId + "&attendanceSession=" + attendanceSession
					+ "&attendanceType=" + attendanceType + "&startDate="
					+ startDate + "&endDate=" + endDate, true);
	xmlhttp.send();
}


function showAllAttendanceGridsOfThisStudentDuringThisPeriod(studentId,
		startDate, endDate) {
	var divId = "attendanceDiv" + studentId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showallattendancegridsofthisstudentduringthisperiod.jsp?studentId="
					+ studentId + "&startDate=" + startDate + "&endDate="
					+ endDate, true);
	xmlhttp.send();
}
function hideAttendanceGridsOfThisStudent(studentId) {
	var divId = "attendanceDiv" + studentId;
	document.getElementById(divId).innerHTML = "";
}
function showListOfStudentsInThisSectionForToWhom(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("displayReportContentDivToWhom").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsinthisthissectionfortowhom.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function generateToWhomItMayConcernForThisStudent(studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showToWhomFinal").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtowhomitmayconcernforthisstudent.jsp?studentId="
			+ studentId, true);
	xmlhttp.send();
}

function showListOfStudentsInThisSectionForReport(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("displayReportContentDivContact").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsinthisthissectionforreport.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function generateGuardianContactReportForThisStudent(studentId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showGuardianContactListFinal").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"generateguardiancontactreportforthisstudent.jsp?studentId="
					+ studentId, true);
	xmlhttp.send();
}

function showDetailSalesCashCreditForBranchByCashierReport(branchId, cashierId,
		fromDate, toDate) {
	// //alert(branchId+":"+cashierId+":"+fromDate+":"+toDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("cashCreditDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showdetailsalescashcreditforbranchbycashierreport.jsp?branchId="
					+ branchId + "&cashierId=" + cashierId + "&fromDate="
					+ fromDate + "&toDate=" + toDate, true);
	xmlhttp.send();
}

function showDetailSalesCashCreditForBranchByCashierVATOnlyReport(branchId,
		cashierId, fromDate, toDate) {
	// //alert("vat only rpt");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("cashCreditDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showdetailsalescashcreditforbranchbycashiervatonlyreport.jsp?branchId="
					+ branchId + "&cashierId=" + cashierId + "&fromDate="
					+ fromDate + "&toDate=" + toDate, true);
	xmlhttp.send();
}

function showDetailSalesCashCreditForBranchByCashierManualOnlyReport(branchId,
		cashierId, fromDate, toDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("cashCreditDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showdetailsalescashcreditforbranchbycashiermanualonlyreport.jsp?branchId="
					+ branchId + "&cashierId=" + cashierId + "&fromDate="
					+ fromDate + "&toDate=" + toDate, true);
	xmlhttp.send();
}

function showCreditSalesSummaryListByCreditCustomerEmployees(creditCustomerId,
		fromDate, toDate, branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("creditCustomerByEmployeeDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showcreditsalessummarylistbycreditcustomeremployees.jsp?creditCustomerId="
					+ creditCustomerId + "&fromDate=" + fromDate + "&toDate="
					+ toDate + "&branchId=" + branchId, true);
	xmlhttp.send();
}

function showAllTheInventorySheetForThisBranch(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("inventorySheetDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showalltheinventorysheetforthisbranch.jsp?branchId="
			+ branchId, true);
	xmlhttp.send();
}

function showShortageOverageReportFor(branchId, countDate, uptoDate) {
	// //alert(branchId+":"+startingDate);
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("shortageOverageReportDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showshortageoveragereportfor.jsp?branchId=" + branchId
			+ "&countDate=" + countDate + "&uptoDate=" + uptoDate, true);
	xmlhttp.send();
}

function showListOfCreditSalesCustomersAndAmountToBePaidByDateRangeReport(
		fromDate, toDate) {
	// //alert(fromDate+":"+toDate);
	// document.getElementById('ajaxLoaderSpanTab').style.visibility =
	// "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("creditSalesAmountDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp
			.open(
					"GET",
					"showlistofcreditsalescustomersandamounttobepaidbydaterangereport.jsp?fromDate="
							+ fromDate + "&toDate=" + toDate, true);
	xmlhttp.send();
}

function showCashSalesReportOfThisBranchOnThisDate(branchId, cashSalesDate) {
	// //alert(branchId+":"+cashSalesDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showcashsalesreportofthisbranchonthisdate.jsp?branchId="
					+ branchId + "&cashSalesDate=" + cashSalesDate, true);
	xmlhttp.send();
}

function showCashSalesReportOfThisBranchOnThisDateRange(branchId, fromDate,
		toDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showcashsalesreportofthisbranchonthisdaterange.jsp?branchId="
					+ branchId + "&fromDate=" + fromDate + "&toDate=" + toDate,
			true);
	xmlhttp.send();
}

function showCashSalesReportOfThisCashierOnThisDate(cashierId, cashSalesDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showcashsalesreportofthiscashieronthisdate.jsp?cashierId="
					+ cashierId + "&cashSalesDate=" + cashSalesDate, true);
	xmlhttp.send();
}

function showCashSalesReportOfThisCashierOnThisDateRange(cashierId, fromDate,
		toDate) {
	// //alert(cashierId+":"+fromDate+":"+toDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET",
					"showcashsalesreportofthiscashieronthisdaterange.jsp?cashierId="
							+ cashierId + "&fromDate=" + fromDate + "&toDate="
							+ toDate, true);
	xmlhttp.send();
}

function showCumulativeCashSalesReportOfThisCashierOnThisDateRange(cashierId,
		fromDate, toDate) {
	// //alert(cashierId+":"+fromDate+":"+toDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET",
					"showcumulativecashsalesreportofthiscashieronthisdaterange.jsp?cashierId="
							+ cashierId + "&fromDate=" + fromDate + "&toDate="
							+ toDate, true);
	xmlhttp.send();
}

function showListOfCumulativeCashSalesReportOfAllCashiersOnThisDateRange(
		fromDate, toDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofcumulativecashsalesreportofallcashiersonthisdaterange.jsp?fromDate="
					+ fromDate + "&toDate=" + toDate, true);
	xmlhttp.send();
}

function showItemListBySupplier(supplierId, storeId) {
	// //alert(supplierId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("itemBySupplierReportDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitemlistbysupplier.jsp?supplierId=" + supplierId
			+ "&storeId=" + storeId, true);
	xmlhttp.send();
}

function showItemQuantitySoldDuringThisDateRangeForThisItem(itemId, fromDate,
		toDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("itemQuantitySoldDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showitemquantitysoldduringthisdaterangeforthisitem.jsp?fromDate="
					+ fromDate + "&toDate=" + toDate + "&itemId=" + itemId,
			true);
	xmlhttp.send();
}

function showListOfCumulativeCreditSalesReportOfAllCashiersOnThisDateRange(
		fromDate, toDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open(
					"GET",
					"showlistofcumulativecreditsalesreportofallcashiersonthisdaterange.jsp?fromDate="
							+ fromDate + "&toDate=" + toDate, true);
	xmlhttp.send();
}

function showCreditSalesReportOfThisCashierOnThisDate(cashierId,
		creditSalesDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showcreditsalesreportofthiscashieronthisdate.jsp?cashierId="
					+ cashierId + "&creditSalesDate=" + creditSalesDate, true);
	xmlhttp.send();
}

function showCreditSalesReportOfThisCashierOnThisDateRange(cashierId, fromDate,
		toDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET",
					"showcreditsalesreportofthiscashieronthisdaterange.jsp?cashierId="
							+ cashierId + "&fromDate=" + fromDate + "&toDate="
							+ toDate, true);
	xmlhttp.send();
}

function checkIfThisItemIsInStoreForThisBranch(branchId, itemId) {
	// //alert(branchId+":"+itemId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("errorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "checkifthisitemisinstoreforthisbranch.jsp?branchId="
			+ branchId + "&itemId=" + itemId, true);
	xmlhttp.send();
}

function checkIfThisItemIsInDispensingForThisBranch(branchId, itemId) {
	// //alert(branchId+":"+itemId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("errorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"checkifthisitemisindispensingforthisbranch.jsp?branchId="
					+ branchId + "&itemId=" + itemId, true);
	xmlhttp.send();
}

function checkIfThisInsertedItemIsInDispensingForThisBranch(branchId, itemId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("theMsgDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"checkifthisitemisindispensingforthisbranch.jsp?branchId="
					+ branchId + "&itemId=" + itemId, true);
	xmlhttp.send();
}

function showCreditSalesReportOfThisBranchOnThisDate(branchId, creditSalesDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showcreditsalesreportofthisbranchonthisdate.jsp?branchId="
					+ branchId + "&creditSalesDate=" + creditSalesDate, true);
	xmlhttp.send();
}

function showCreditSalesReportOfThisBranchOnThisDateRange(branchId, fromDate,
		toDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showcreditsalesreportofthisbranchonthisdaterange.jsp?branchId="
					+ branchId + "&fromDate=" + fromDate + "&toDate=" + toDate,
			true);
	xmlhttp.send();
}

function showExpiryDateReportForBranchWithItemSourceAndMonthRange(branchId,
		itemSource, monthRange) {
	// //alert(branchId+":"+itemSource+":"+monthRange);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showexpirydatereportforbranchwithitemsourceandmonthrange.jsp?branchId="
					+ branchId + "&itemSource=" + itemSource + "&monthRange="
					+ monthRange, true);
	xmlhttp.send();
}

function showItemReorderLevelReportForBranchWithItemSource(branchId, itemSource) {
	// //alert(branchId+":"+itemSource);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showitemreorderlevelreportforbranchwithitemsource.jsp?branchId="
					+ branchId + "&itemSource=" + itemSource, true);
	xmlhttp.send();
}

function showItemDetailForThisItem(branchId, itemId, num) {
	// //alert(branchId+":"+itemId+":"+num);
	var unitPriceName = "txtunitprice" + num;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// document.getElementById("reportDetailDiv").innerHTML =
			// xmlhttp.responseText;
			document.getElementById(unitPriceName).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitemdetailforthisitem.jsp?branchId=" + branchId
			+ "&itemId=" + itemId + "&num=" + num, true);
	xmlhttp.send();
}

function showStudentRecordEntryLogInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showstudentrecordentryloginnermenu.jsp", true);
	xmlhttp.send();
}

function showReportAcademicUnitInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportacademicunitinnermenu.jsp", true);
	xmlhttp.send();
}

function showAutomaticBackupConfigurationInnerMenu() {
	//alert("Not yet...");
}

function showTakeManualBackupLink() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("saftyRuleSection").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtakemanualbackuplink.jsp", true);
	xmlhttp.send();
}

function showListOfStudentsFromThisBranchAndGradeLevel(branchId, gradeLevelId) {
	// //alert(branchId+":"+gradeLevelId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("studentListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofstudentsfromthisbranchandgradelevel.jsp?branchId="
					+ branchId + "&gradeLevelId=" + gradeLevelId, true);
	xmlhttp.send();
}

function takeManualBackupNow(databaseName, username, password, location) {
	// //alert(location);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("saftyRuleSection").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "takemanualbackupnow.jsp?databaseName=" + databaseName
			+ "&username=" + username + "&password=" + password, true);
	xmlhttp.send();
}

function showManualBackupOptionInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showmanualbackupoptioninnermenu.jsp", true);
	xmlhttp.send();
}

function showReportEmployeeInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreportemployeesinnermenu.jsp", true);
	xmlhttp.send();
}

function showToWhomItMayConcernTemplate() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtowhomitmayconcerntemplate.jsp", true);
	xmlhttp.send();
}

function showMediumOfInstructionTemplate() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showmediumofinstructiontemplate.jsp", true);
	xmlhttp.send();
}

function showAllFacultiesReport() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("reportSection").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallfacultiesreport.jsp", true);
	xmlhttp.send();
}

function showServiceDetailForm(serviceId) {
	document.getElementById('ajaxLoaderSpan').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("serviceDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showservicedetailform.jsp?serviceId=" + serviceId,
			true);
	xmlhttp.send();
}

function showRoleForEmployee(empId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("roleDetailForEmployee").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showroleforemployee.jsp?empId=" + empId, true);
	xmlhttp.send();
}

function updateRole(roleId, accountId, functionalityId, chkRead, chkWrite,
		chkUpdate, chkDelete) {
	// now compose the check box names to get the actual selected item from the
	// list
	// //alert(roleId+":"+accountId+":"+functionalityId+":"+chkRead+":"+chkWrite+":"+chkUpdate+":"+chkDelete);

	hasReadAccess = false;
	hasWriteAccess = false;
	hasUpdateAccess = false;
	hasDeleteAccess = false;

	if (chkRead.checked == true)
		hasReadAccess = true;
	if (chkWrite.checked == true)
		hasWriteAccess = true;
	if (chkUpdate.checked == true)
		hasUpdateAccess = true;
	if (chkDelete.checked == true)
		hasDeleteAccess = true;
	// ///////////////////////////////////////now comes the ajax...
	// //alert("role id: "+roleId+"account id: "+accountId+" operation id:
	// "+operationId+" read : "+hasReadAccess+" : write : "+hasWriteAccess+" :
	// update : "+hasUpdateAccess+" : delete : "+hasDeleteAccess);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("content").innerHTML = xmlhttp.responseText;
			document.getElementById("roleDetailForEmployee").innerHTML = "<strong><font color='green'>Role updated successfully!</font></strong>";
		}
	}
	xmlhttp.open("GET", "updaterole.jsp?roleId=" + roleId + "&accountId="
			+ accountId + "&functionalityId=" + functionalityId
			+ "&hasReadAccess=" + hasReadAccess + "&hasWriteAccess="
			+ hasWriteAccess + "&hasUpdateAccess=" + hasUpdateAccess
			+ "&hasDeleteAccess=" + hasDeleteAccess, true);
	xmlhttp.send();
}

function saveFaculty(facultyCode, facultyName) {
	if (facultyCode == "") {
		document.getElementById('txtfacultycode').style.borderColor = "red";
		document.getElementById('facultySaveDiv').innerHTML = "<p class='msg warning'>Please enter the faculty code!</p>";
		document.getElementById('txtfacultycode').focus();
		return false;
	} else if (facultyName == "") {
		document.getElementById('txtfacultyname').style.borderColor = "red";
		document.getElementById('facultySaveDiv').innerHTML = "<p class='msg warning'>Please enter the name of the faculty!</p>";
		document.getElementById('txtfacultyname').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("facultySaveDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('txtfacultycode').value = "";
				document.getElementById('txtfacultyname').value = "";
			}
		}
		xmlhttp.open("GET", "savefaculty.jsp?facultyCode=" + facultyCode
				+ "&facultyName=" + facultyName, true);
		xmlhttp.send();
	}
}

function saveAcademicUnit(facultyId, academicUnitCode, academicUnitName) {
	if (facultyId == "") {
		document.getElementById('slctfaculty').style.borderColor = "red";
		document.getElementById('academicUnitSaveDiv').innerHTML = "<p class='msg warning'>Please select the faculty!</p>";
		document.getElementById('slctfaculty').focus();
		return false;
	} else if (academicUnitCode == "") {
		document.getElementById('slctfaculty').style.borderColor = "green";
		document.getElementById('academicUnitSaveDiv').innerHTML = "<p class='msg warning'>Please enter the academic unit code!</p>";
		document.getElementById('txtacademicunitcode').style.borderColor = "red";
		document.getElementById('txtacademicunitcode').focus();
		return false;
	} else if (academicUnitName == "") {
		document.getElementById('slctfaculty').style.borderColor = "green";
		document.getElementById('academicUnitSaveDiv').innerHTML = "<p class='msg warning'>Please enter the academic unit name!</p>";
		document.getElementById('txtacademicunitname').style.borderColor = "red";
		document.getElementById('txtacademicunitname').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("academicUnitSaveDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('txtacademicunitname').value = "";
			}
		}
		xmlhttp.open("GET", "saveacademicunit.jsp?facultyId=" + facultyId
				+ "&academicUnitName=" + academicUnitName
				+ "&academicUnitCode=" + academicUnitCode, true);
		xmlhttp.send();
	}
}

function saveEmployee(firstName, fatherName, mobilePhone, employeePosition,
		branchId, idNumber) {
	// //alert(firstName+":"+fatherName+":"+mobilePhone+":"+employeePosition+":"+branchId+":"+idNumber);
	if (firstName == "") {
		document.getElementById('txtfirstname').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the first name!</p>";
		document.getElementById('txtfirstname').focus();
	} else if (fatherName == "") {
		document.getElementById('txtfirstname').style.borderColor = "green";
		document.getElementById('txtfathername').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the father name!</p>";
		document.getElementById('txtfathername').focus();
		return false;
	} else if (mobilePhone == "") {
		document.getElementById('txtfathername').style.borderColor = "green";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the mobile phone!</p>";
		document.getElementById('txtmobilephone').style.borderColor = "red";
		document.getElementById('txtmobilephone').focus();
		return false;
	} else if (employeePosition == "") {
		document.getElementById('txtmobilephone').style.borderColor = 'green';
		document.getElementById('txtemployeeposition').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the employee position!</p>";
		document.getElementById('txtemployeeposition').focus();
		return false;
	} else if (branchId == "") {
		document.getElementById('txtemployeeposition').style.borderColor = "green";
		document.getElementById('slctbranch').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please select the employee branch!</p>";
		document.getElementById('slctbranch').focus();
		return false;
	} else if (idNumber == "") {
		document.getElementById('slctbranch').style.borderColor = "green";
		document.getElementById('txtidnumber').style.borderColor = "red";
		document.getElementById('employeeSaveDiv').innerHTML = "<p class='msg warning'>Please enter the id number of the emplyee!</p>";
		document.getElementById('txtidnumber').focus();
		return false;
	} else {
		// //alert(firstName+":"+fatherName+":"+mobilePhone+":"+employeePosition+":"+branchId+":"+idNumber);
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("employeeSaveDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "saveemployee.jsp?firstName=" + firstName
				+ "&fatherName=" + fatherName + "&mobilePhone=" + mobilePhone
				+ "&employeePosition=" + employeePosition + "&branchId="
				+ branchId + "&idNumber=" + idNumber, true);
		xmlhttp.send();
	}
}

function showListOfFaculties() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showlistoffaculties.jsp", true);
	xmlhttp.send();
}

function showListOfUsers() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusers.jsp", true);
	xmlhttp.send();
}

function showListOfUsersForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusersforedit.jsp", true);
	xmlhttp.send();
}

function showListOfUsersForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusersfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfEmployees() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployees.jsp", true);
	xmlhttp.send();
}

function showListOfOrderRequests() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoforderrequests.jsp", true);
	xmlhttp.send();
}

function showListOfOrderRequestsForApproval() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoforderrequestsforapproval.jsp", true);
	xmlhttp.send();
}

function showListOfOrderRequestsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoforderrequestsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfOrderRequestsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoforderrequestsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfPaymentRequests() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpaymentrequests.jsp", true);
	xmlhttp.send();
}

function showListOfPaymentRequestsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpaymentrequestsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfPaymentRequestsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpaymentrequestsfordelete.jsp", true);
	xmlhttp.send();
}

function showOrderRequestDetail(orderRequestId) {
	var uniqueDiv = "orderRequestDetailDiv" + orderRequestId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showorderrequestdetail.jsp?orderRequestId="
			+ orderRequestId, true);
	xmlhttp.send();
}

function showOrderRequestDetailForApproval(orderRequestId) {
	var uniqueDiv = "orderRequestDetailDiv" + orderRequestId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showorderrequestdetailforapproval.jsp?orderRequestId="
			+ orderRequestId, true);
	xmlhttp.send();
}

function approvedThisOrderRequest(ctr) {
	//alert(document.getElementById("txtapprovedquantity2").value);
	var hiddenControlName = "hiddenid";
	var stringValues = "";
	for (i = 1; i <= ctr; i++) {
		var hiddenControlName = "hiddenid" + i;
		var controlName = "txtapprovedquantity" + i;
		var hiddenControlVal = document.getElementById(hiddenControlName).value;
		var controlVal = document.getElementById(controlName).value;
		stringValues += hiddenControlName + "=" + hiddenControlVal + "&"
				+ controlName + "=" + controlVal;
	}
	//alert(stringValues);
}

function showListOfEmployeesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfEmployee(employeeId) {
	// //alert(employeeId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("employeeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofemployee.jsp?employeeId=" + employeeId, true);
	xmlhttp.send();
}

function changeTheBranchIdForThisEmployee(branchId) {
	document.getElementById('hiddenbranchid').value = branchId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// document.getElementById("employeeEditDiv").innerHTML =
			// xmlhttp.responseText;
			document.getElementById('txteditbranch').value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethebranchidforthisemployee.jsp?branchId="
			+ branchId, true);
	xmlhttp.send();
}

function showListOfEmployeesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofemployeesfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisEmployee(employeeId) {
	// //alert(employeeId);
	if (window.confirm("Are you sure you want to delete this employee?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisemployee.jsp?employeeId=" + employeeId,
				true);
		xmlhttp.send();
	}
}

function showListOfAcademicUnits() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showlistofacademicunits.jsp", true);
	xmlhttp.send();
}

function showListOfFacultiesForEdit() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showlistoffacultiesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfAcademicUnitsForEdit() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showlistofacademicunitsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfFacultiesForDelete() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showlistoffacultiesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfAcademicUnitsForDelete() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showlistofacademicunitsfordelete.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfFaculty(facultyId) {
	// //alert(facultyId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("facultyEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsoffaculty.jsp?facultyId=" + facultyId,
			true);
	xmlhttp.send();
}

function showEditFieldsOfUser(accountId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("userEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofuser.jsp?accountId=" + accountId,
					true);
	xmlhttp.send();
}

function showEditFieldsOfAcademicUnit(academicUnitId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("academicUnitEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofacademicunit.jsp?academicUnitId="
			+ academicUnitId, true);
	xmlhttp.send();
}

function updateFaculty(facultyId, facultyCode, facultyName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatefaculty.jsp?facultyId=" + facultyId
			+ "&facultyCode=" + facultyCode + "&facultyName=" + facultyName,
			true);
	xmlhttp.send();
}


function updateUserType(accountId, memberType) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateusertype.jsp?accountId=" + accountId
			+ "&memberType=" + memberType, true);
	xmlhttp.send();
}

function updateAcademicUnit(academicUnitId, facultyId, academicUnitCode,
		academicUnitName) {
	// //alert(academicUnitId+":"+facultyId+":"+academicUnitName);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateacademicunit.jsp?academicUnitId="
			+ academicUnitId + "&facultyId=" + facultyId + "&academicUnitName="
			+ academicUnitName + "&academicUnitCode=" + academicUnitCode, true);
	xmlhttp.send();
}

function updateEmployee(empId, idNumber, firstName, fatherName, mobilePhone,
		employeePosition, branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateemployee.jsp?empId=" + empId + "&firstName="
			+ firstName + "&fatherName=" + fatherName + "&mobilePhone="
			+ mobilePhone + "&employeePosition=" + employeePosition
			+ "&branchId=" + branchId + "&idNumber=" + idNumber, true);
	xmlhttp.send();
}

function deleteThisFaculty(facultyId) {
	if (window.confirm('Are you sure you want to delete this faculty?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisfaculty.jsp?facultyId=" + facultyId,
				true);
		xmlhttp.send();
	}
}

/*
 * function deleteThisUser(accountId, empId) { if (window .confirm('Are you sure
 * you want to delete this employee account?')) { if (window.XMLHttpRequest) {//
 * code for IE7+, Firefox, Chrome, Opera, // Safari xmlhttp = new
 * XMLHttpRequest(); } else {// code for IE6, IE5 xmlhttp = new
 * ActiveXObject("Microsoft.XMLHTTP"); } xmlhttp.onreadystatechange = function() {
 * if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
 * document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText; } }
 * xmlhttp.open("GET", "deletethisuser.jsp?accountId=" + accountId + "&empId=" +
 * empId, true); xmlhttp.send(); } }
 */

function deleteThisAcademicUnit(academicUnitId) {
	if (window.confirm('Are you sure you want to delete this academic unit?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisacademicunit.jsp?academicUnitId="
				+ academicUnitId, true);
		xmlhttp.send();
	}
}

function changeTheFacultyValues(facultyId) {
	// //alert(facultyId);
	document.getElementById('hiddenfacultyid').value = facultyId;

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditfacultyname").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethefacultyvalues.jsp?facultyId=" + facultyId,
			true);
	xmlhttp.send();
}

function suggestUsername(val) {
	document.getElementById('txtusername').value = val;
	var suggestedPassword = val + "123";
	document.getElementById('txtpassword').value = suggestedPassword;
}

function changeSexValue(newSex) {
	document.getElementById("txtsex").value = newSex;
}

function showAcademicYearInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showacademicyearinnermenu.jsp", true);
	xmlhttp.send();
}

function showBranchInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbrachinnermenu.jsp", true);
	xmlhttp.send();
}

function showItemInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showiteminnermenu.jsp", true);
	xmlhttp.send();
}

function showInventorySheetInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showinventorysheetinnermenu.jsp", true);
	xmlhttp.send();
}

function showImportDataFromExcelInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showimportdatafromexcelinnermenu.jsp", true);
	xmlhttp.send();
}

function showImportForm(iType) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("importDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showimportform.jsp?iType=" + iType, true);
	xmlhttp.send();
}

function showCashSalesFor(itemType, cashSalesDate, cashierId) {
	// //alert(itemType+":"+cashSalesDate);
	if (itemType == "Cosmotics") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("cashSalesFormDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showcashsalesform.jsp?cashSalesDate="
				+ cashSalesDate + "&cashierId=" + cashierId, true);
		xmlhttp.send();
	} else if (itemType == "Medicine") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("cashSalesFormDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showcashsalesformformedicine.jsp?cashSalesDate="
				+ cashSalesDate + "&cashierId=" + cashierId, true);
		xmlhttp.send();
	}
}

function showCreditSalesFor(itemType, creditSalesDate, cashierId) {
	if (itemType == "Cosmotics") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("creditSalesFormDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showcreditsalesform.jsp?creditSalesDate="
				+ creditSalesDate + "&cashierId=" + cashierId, true);
		xmlhttp.send();
	} else if (itemType == "Medicine") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("creditSalesFormDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showcreditsalesformformedicine.jsp?creditSalesDate="
						+ creditSalesDate + "&cashierId=" + cashierId, true);
		xmlhttp.send();
	}
}

function showCategoryInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcategoryinnermenu.jsp", true);
	xmlhttp.send();
}

function showEvaluationCriteriaInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showevaluationcriteriainnermenu.jsp", true);
	xmlhttp.send();
}

function showListOfEvaluationCriteriasForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofevaluationcriteriasforedit.jsp", true);
	xmlhttp.send();
}

function showCreditCustomerInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcreditcustomerinnermenu.jsp", true);
	xmlhttp.send();
}

function showStoreInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showstoreinnermenu.jsp", true);
	xmlhttp.send();
}

function showPriceAdjustmentInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showpriceadjustmentinnermenu.jsp", true);
	xmlhttp.send();
}

function showSupplierInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsupplierinnermenu.jsp", true);
	xmlhttp.send();
}

function showAdmissionAgeRuleInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showadmissionageruleinnermenu.jsp", true);
	xmlhttp.send();
}

function showListOfEvaluationCriteriasForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofevaluationcriteriasfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfEvaluationCriteriaForLevelAndSubjectForDelete(levelId,
		subjectId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofevaluationcriteriaforlevelandsubjectfordelete.jsp?levelId="
					+ levelId + "&subjectId=" + subjectId, true);
	xmlhttp.send();
}
function showListOfContacts(){
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "viewcontacts.jsp", true);
	xmlhttp.send();	
}

function showListOfNotifications() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "viewmissing.jsp", true);
	xmlhttp.send();
}

function showListOfNotificationsEdit() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "viewmissingedit.jsp", true);
	xmlhttp.send();
}

function showListOfApplicationRequests(status,level) {
	// //alert(status);
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofapplicationrequests.jsp?status=" + status +"&level="+level,
			true);
	xmlhttp.send();
}

function showListOfApplicationRequestsForPrinting() {
	// //alert("abe");
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofapplicationrequestsforprinting.jsp", true);
	xmlhttp.send();
}
function showListOfWaitingRequestsForAdmission(status,level) {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofwaiting.jsp?status=" + status+"&level="+level, true);
	xmlhttp.send();
}
function showListOfApplicationRequestsForAdmission(status) {
	// //alert("here");
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofapplicationrequestsforadmission.jsp?status="
			+ status, true);
	xmlhttp.send();
}

function showlistofstudentsinlevelselectorbar() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentsinlevelselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfStudentsInSectionSelectorBar() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentsinsectionselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfStudentsInSectionSelectorBarForEdit() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentsinsectionselectorbarforedit.jsp",
			true);
	xmlhttp.send();
}

function showListOfStudentsFromThisLevel(level) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("studentListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentsfromthislevel.jsp?levelId=" + level,
			true);
	xmlhttp.send();
}

function showListOfStudentsFromThisSectionForContactEdit(sectionId){
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListEditDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsfromthissectionforcontactedit.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}

}

function showListOfStudentsFromThisSectionForEdit(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListEditDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsfromthissectionforedit.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function showDetailsOfThisApplicantForContactEdit(applicantId){
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shiwdetailsofthisapplicantforadmissionforcontactedit.jsp?applicantId="
					+ applicantId, true);
	xmlhttp.send();

}

function showDetailsOfThisApplicantForEdit(applicantId) {
	// //alert(applicantId);
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shiwdetailsofthisapplicantforadmissionforedit.jsp?applicantId="
					+ applicantId, true);
	xmlhttp.send();
}
function showDetailofThisStudentforFee(studentId) {
	// //alert(applicantId);
	var divId = "studentDetail" + studentId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showdetailofthisstudentfee.jsp?studentId="
					+ studentId, true);
	xmlhttp.send();
}

function showListOfStudentsFromThisSectionContacts(sectionId){
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showlistofstudentsfromthissectionemergency.jsp?sectionId="
				+ sectionId, true);
		xmlhttp.send();
	}	
}

function showListOfStudentsFromThisSection(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showlistofstudentsfromthissection.jsp?sectionId="
				+ sectionId, true);
		xmlhttp.send();
	}
}

function putThisApplicantToWaitingList(applicantId, admissionRequestedDate,level) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	////alert(level);
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "putthisapplicanttowaitinglist.jsp?applicantId="
					+ applicantId + "&admissionRequestedDate="
					+ admissionRequestedDate + "&level="+level, true);
	xmlhttp.send();
}

function showDetailsOfThisApplicant(applicantId) {
	// //alert(applicantId);
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shiwdetailsofthisapplicantforadmission.jsp?applicantId="
					+ applicantId, true);
	xmlhttp.send();
}

function rejectThisApplicant(applicantId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "rejectthisapplicant.jsp?applicantId=" + applicantId,
			true);
	xmlhttp.send();
}

function showDetailsOfThisApplicantForView(applicantId) {
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shiwdetailsofthisapplicantforadmissionforview.jsp?applicantId="
					+ applicantId, true);
	xmlhttp.send();
}

function showChangeLevelFormForThisStudent(applicantId) {
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showchangelevelformforthisstudent.jsp?applicantId="
			+ applicantId, true);
	xmlhttp.send();

}

function showChangeSectionFormForThisStudent(applicantId, curr_section) {
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showchangesectionformforthisstudent.jsp?applicantId="
			+ applicantId + "&sectionId=" + curr_section, true);
	xmlhttp.send();
}

function updateLevelForThisStudent(levelId, applicantId, sectionId) {
	// //alert(levelId+","+applicantId+","+sectionId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("confDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatelevelforthisstudent.jsp?studentId="
			+ applicantId + "&sectionId=" + sectionId + "&levelId=" + levelId,
			true);
	xmlhttp.send();
}

function updateSectionForThisStudent(sectionId, applicantId) {
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatesectionforthisstudent.jsp?studentId="
			+ applicantId + "&sectionId=" + sectionId, true);
	xmlhttp.send();
}

function hideDetailsOfThisApplicant(applicantId) {
	var divId = "applicantDetail" + applicantId;
	document.getElementById(divId).innerHTML = "";
}

function showDetailsOfThisApplicantForPrinting(applicantId) {
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shiwdetailsofthisapplicantforprinting.jsp?applicantId="
					+ applicantId, true);
	xmlhttp.send();
}

function hideDetailsOfThisApplicantForPrinting(applicantId) {
	var divId = "applicantDetail" + applicantId;
	document.getElementById(divId).innerHTML = "";
}

function showDetailsOfThisApplicantForAdmission(applicantId) {
	var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shiwdetailsofthisapplicantforadmission.jsp?applicantId="
					+ applicantId, true);
	xmlhttp.send();
}

function updateThisStudentAdmissionContact2(applicantId, fOccupation,
		fOfficeTel, fMail, fHomeTel,fMobile, fMobile2,mOccupation, 
		mOfficeTel, mMail, mMobile, mMobile2, eMobile,
		fatherId, fatherAddress, motherId,
		motherAddress, emergencyId){
//	//alert(applicantId+", "+ fOccupation+", "+
//			fOfficeTel+", "+ fMail+", "+ fHomeTel+", "+fMobile+", "+mOccupation+", "+ 
//			mOfficeTel+", "+ mMail+", "+ mMobile+", "+ eMobile+", "+
//			fatherId+", "+ fatherAddress+", "+ motherId+", "+
//			motherAddress+", "+ emergencyId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateThisStudentAdmissionContact2.jsp?applicantId="
			+ applicantId + "&fOccupation="
			+ fOccupation + "&fOfficeTel=" + fOfficeTel 
			+ "&fMail=" + fMail + "&fHomeTel=" + fHomeTel
			+ "&fMobile=" + fMobile + "&fMobile2=" + fMobile2
			+ "&mOccupation=" + mOccupation + "&mOfficeTel=" + mOfficeTel
			+ "&mMail=" + mMail + "&mMobile=" + mMobile+ "&mMobile2=" + mMobile2 + "&fatherId="
			+ fatherId + "&fatherAddress=" + fatherAddress + "&motherId="
			+ motherId + "&eMobile=" + eMobile + "&motherAddress="
			+ motherAddress + "&emergencyId=" + emergencyId, true);
	xmlhttp.send();
}

function updateThisStudentAdmissionContact(applicantId,fFirstName,
		fLastName, fPassportNumber, fCountryOfIssue, fReligion, fOccupation,
		fPlaceOfWork, fPlaceOfOrg, fOfficeTel, fFax, fPobox, fMail, fHomeTel,
		fMobile, fHomePobox, fIsStaff, mFirstName, mLastName, mPassportNumber,
		mCountryOfIssue, mReligion, mOccupation, mPlaceOfWork, mPlaceOfOrg,
		mOfficeTel, mFax, mPobox, mMail, mHomeTel, mMobile, mHomePobox,
		mIsStaff, eFullName, eRelationship, eOfficeTel, eHomeTel, eMobile,
		fatherId, fatherAddress, motherId,
		motherAddress, emergencyId){
	
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateThisStudentAdmissionContact.jsp?applicantId="
			+ applicantId + "&fFirstName=" + fFirstName + "&fLastName=" + fLastName
			+ "&fPassportNumber=" + fPassportNumber + "&fCountryOfIssue="
			+ fCountryOfIssue + "&fReligion=" + fReligion + "&fOccupation="
			+ fOccupation + "&fPlaceOfWork=" + fPlaceOfWork + "&fPlaceOfOrg="
			+ fPlaceOfOrg + "&fOfficeTel=" + fOfficeTel + "&fFax=" + fFax
			+ "&fPobox=" + fPobox + "&fMail=" + fMail + "&fHomeTel=" + fHomeTel
			+ "&fMobile=" + fMobile + "&fHomePobox=" + fHomePobox
			+ "&fIsStaff=" + fIsStaff + "&mFirstName=" + mFirstName
			+ "&mLastName=" + mLastName + "&mPassportNumber=" + mPassportNumber
			+ "&mCountryOfIssue=" + mCountryOfIssue + "&mReligion=" + mReligion
			+ "&mOccupation=" + mOccupation + "&mPlaceOfWork=" + mPlaceOfWork
			+ '&mPlaceOfOrg=' + mPlaceOfOrg + "&mOfficeTel=" + mOfficeTel
			+ "&mFax=" + mFax + "&mPobox=" + mPobox + "&mMail=" + mMail
			+ '&mHomeTel=' + mHomeTel + "&mMobile=" + mMobile + "&mHomePobox="
			+ mHomePobox + "&mIsStaff=" + mIsStaff + "&fatherId="
			+ fatherId + "&fatherAddress=" + fatherAddress + "&motherId="
			+ motherId + "&eFullName=" + eFullName + "&eRelationship="
			+ eRelationship + "&eOfficeTel=" + eOfficeTel + "&eHomeTel="
			+ eHomeTel + "&eMobile=" + eMobile + "&motherAddress="
			+ motherAddress + "&emergencyId=" + emergencyId, true);
	xmlhttp.send();
}

function updateThisStudentAdmission(applicantId, applicantFirstName,
		applicantMiddleName, applicantLastName, sex, dateOfBirth,
		passportNumber, countryOfIssue, nationality, religion, countryOfBirth,
		entryRequested, reading, mathematics, language, behavioural, creading,
		cmathematics, clanguage, others, disablityMedication, fFirstName,
		fLastName, fPassportNumber, fCountryOfIssue, fReligion, fOccupation,
		fPlaceOfWork, fPlaceOfOrg, fOfficeTel, fFax, fPobox, fMail, fHomeTel,
		fMobile,fMobile2, fHomePobox, fIsStaff, mFirstName, mLastName, mPassportNumber,
		mCountryOfIssue, mReligion, mOccupation, mPlaceOfWork, mPlaceOfOrg,
		mOfficeTel, mFax, mPobox, mMail, mHomeTel, mMobile, mMobile2, mHomePobox,
		mIsStaff, languageSpokenAtHome, otherLanguageSpoken, eFullName,
		eRelationship, eOfficeTel, eHomeTel, eMobile,
		personResponsibleForPayingFees, expectedDateOfArrival,
		childDifficulties, childTalent, fatherId, fatherAddress, motherId,
		motherAddress, emergencyId, siblingCoun) {
		
		str = '';
		siblingFirstName = '';
		siblingMiddleName = '';
		siblingLastName = '';
		siblingRelationship = '';

		siblingFirstNameVal = '';
		siblingMiddleNameVal = '';
		siblingLastNameVal = '';
		siblingRelationshipVal = '';
		var siblingCounVal = siblingCoun.rows.length - 1;
		for ( var i = 1; i <= siblingCounVal; i++) {
			
				siblingFirstName = 'txtsiblingfirstname'+i;
				siblingMiddleName = 'txtsiblingmiddlename'+i;
				siblingLastName = 'txtsiblinglastname'+i;
				siblingRelationship = 'slctsiblingrelation'+i;
				
				siblingFirstNameVal = document.getElementById(siblingFirstName).value;
				siblingMiddleNameVal = document.getElementById(siblingMiddleName).value;
				siblingLastNameVal = document.getElementById(siblingLastName).value;
				siblingRelationshipVal = document.getElementById(siblingRelationship).value;
			
				str += "&" + siblingFirstName + "=" + siblingFirstNameVal + "&" + siblingMiddleName + "=" + siblingMiddleNameVal + 
				"&" + siblingLastName + "=" + siblingLastNameVal + "&" + siblingRelationship + "=" + siblingRelationshipVal;
				
			}
		var divId = "applicantDetail" + applicantId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = "";
		}
	}
	xmlhttp.open("GET", "updateThisStudentAdmission.jsp?applicantId="
			+ applicantId + "&applicantFirstName=" + applicantFirstName
			+ "&applicantMiddleName=" + applicantMiddleName
			+ "&applicantLastName=" + applicantLastName + "&sex=" + sex
			+ "&dateOfBirth=" + dateOfBirth + "&passportNumber="
			+ passportNumber + "&countryOfIssue=" + countryOfIssue
			+ "&nationality=" + nationality + "&religion=" + religion
			+ "&countryOfBirth=" + countryOfBirth + "&entryRequested="
			+ entryRequested + "&others=" + others + "&disablityMedication="
			+ disablityMedication + "&languageSpokenAtHome="
			+ languageSpokenAtHome + "&otherLanguageSpoken="
			+ otherLanguageSpoken + "&expectedDateOfArrival="
			+ expectedDateOfArrival + "&personResponsibleForPayingFees="
			+ personResponsibleForPayingFees + "&reading=" + reading
			+ "&mathematics=" + mathematics + "&language=" + language
			+ "&behavioural=" + behavioural + "&cReading=" + creading
			+ "&cMathematcs=" + cmathematics + "&cLanguage=" + clanguage
			+ "&fFirstName=" + fFirstName + "&fLastName=" + fLastName
			+ "&fPassportNumber=" + fPassportNumber + "&fCountryOfIssue="
			+ fCountryOfIssue + "&fReligion=" + fReligion + "&fOccupation="
			+ fOccupation + "&fPlaceOfWork=" + fPlaceOfWork + "&fPlaceOfOrg="
			+ fPlaceOfOrg + "&fOfficeTel=" + fOfficeTel + "&fFax=" + fFax
			+ "&fPobox=" + fPobox + "&fMail=" + fMail + "&fHomeTel=" + fHomeTel
			+ "&fMobile=" + fMobile + "&fMobile2=" + fMobile2 + "&fHomePobox=" + fHomePobox
			+ "&fIsStaff=" + fIsStaff + "&mFirstName=" + mFirstName
			+ "&mLastName=" + mLastName + "&mPassportNumber=" + mPassportNumber
			+ "&mCountryOfIssue=" + mCountryOfIssue + "&mReligion=" + mReligion
			+ "&mOccupation=" + mOccupation + "&mPlaceOfWork=" + mPlaceOfWork
			+ '&mPlaceOfOrg=' + mPlaceOfOrg + "&mOfficeTel=" + mOfficeTel
			+ "&mFax=" + mFax + "&mPobox=" + mPobox + "&mMail=" + mMail
			+ '&mHomeTel=' + mHomeTel + "&mMobile=" + mMobile+ "&mMobile2=" + mMobile2 + "&mHomePobox="
			+ mHomePobox + "&mIsStaff=" + mIsStaff + "&childDifficulties="
			+ childDifficulties + "&childTalent=" + childTalent + "&fatherId="
			+ fatherId + "&fatherAddress=" + fatherAddress + "&motherId="
			+ motherId + "&eFullName=" + eFullName + "&eRelationship="
			+ eRelationship + "&eOfficeTel=" + eOfficeTel + "&eHomeTel="
			+ eHomeTel + "&eMobile=" + eMobile + "&motherAddress="
			+ motherAddress + "&emergencyId=" + emergencyId + "&siblingCounId=" + siblingCounVal + str, true);
	xmlhttp.send();
}

function showListOfStudentsInSectionSelectorBarForDelete() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentsinsectionselectorbarfordelete.jsp",
			true);
	xmlhttp.send();
}

function showlistofwaitinginthislevel(status){
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	// xmlhttp.open("GET",
	// "showlistofstudentsinsectionselectorbarforclassprogress.jsp", true);
	xmlhttp.open("GET", "waitinginlevel.jsp?status="+status, true);
	xmlhttp.send();
}

function showlistofapplicantsinthislevel(status){
	////alert(status);
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	// xmlhttp.open("GET",
	// "showlistofstudentsinsectionselectorbarforclassprogress.jsp", true);
	xmlhttp.open("GET", "applicantsinlevel.jsp?status="+status, true);
	xmlhttp.send();
}

function showListOfStudentsInSectionSelectorBarForClassProgress() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	// xmlhttp.open("GET",
	// "showlistofstudentsinsectionselectorbarforclassprogress.jsp", true);
	xmlhttp.open("GET", "showlistofstudentsinlevelselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfStudentsFromThisSectionForDelete(sectionId) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListDeleteDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsfromthissectionfordelete.jsp?sectionId="
						+ sectionId, true);
		xmlhttp.send();
	}
}

function showListOfStudentsFromThisSectionForMaintainingClassProgressInformation(
		sectionId) {
	// //alert(sectionId);
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListClassProgressDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp
				.open(
						"GET",
						"showlistofstudentsfromthissectionformaintainingclassprogressinformation.jsp?sectionId="
								+ sectionId, true);
		xmlhttp.send();
	}
}

function deleteThisAdmissionProcess(applicantId, sec) {
	// //alert(sec);
	if (window
			.confirm("Are you sure you want to delete this admission process")) {
		document.getElementById('subTabDetailDiv').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deleteThisAdmissionProcess.jsp?applicantId="
				+ applicantId + "&sec=" + sec, true);
		xmlhttp.send();
	}
}

function showLevelInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlevelinnermenu.jsp", true);
	xmlhttp.send();
}

function showListOfLevelsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoflevelsforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfLevel(levelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsoflevel.jsp?levelId=" + levelId, true);
	xmlhttp.send();
}

function updateLevel(levelId, levelName, category) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatelevel.jsp?levelId=" + levelId + "&levelName="
			+ levelName + "&category=" + category, true);
	xmlhttp.send();
}

function showCategoryInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoflevelsforedit.jsp", true);
	xmlhttp.send();
}

function showCategoryInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcategoryinnermenu.jsp", true);
	xmlhttp.send();
}

function showPrimarySecondaryInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showprimarysecondaryinnermenu.jsp", true);
	xmlhttp.send();
}

function showListOfPrimarySecondariesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("primarySecondaryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showprimarysecondariesforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfPrimarySecondary(id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("primarySeconadryEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofprimarysecondary.jsp?id=" + id, true);
	xmlhttp.send();
}

function updatePrimarySecondaryForm(id, primarySecondaryName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("primarySecondaryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateprimarysecondaryform.jsp?id=" + id
			+ "&primarysecondaryname=" + primarySecondaryName, true);
	xmlhttp.send();
}

function showAddAdmissionAgeRuleForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("admissionAgeRuleDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddadmissionageruleform.jsp", true);
	xmlhttp.send();
}

function showListOfAdmissionAgeRules() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("admissionAgeRuleDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissionagerules.jsp", true);
	xmlhttp.send();
}

function showListOfAdmissionAgeRulesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("admissionAgeRuleDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissionagerulesforedit.jsp", true);
	xmlhttp.send();
}

function updateAdmissionAgeRule(admissionAgeRuleId, levelId, lowerBoundary,
		upperBoundary) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("admissionAgeRuleDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateadmissionagerule.jsp?admissionAgeRuleId="
			+ admissionAgeRuleId + "&levelId=" + levelId + "&lowerBoundary="
			+ lowerBoundary + "&upperBoundary=" + upperBoundary, true);
	xmlhttp.send();
}

function showEditFieldsOfAdmissionRule(admissionAgeRuleId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("admissionRuleEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofadmissionrule.jsp?admissionAgeRuleId="
			+ admissionAgeRuleId, true);
	xmlhttp.send();
}

function changeLevelForThisAdmissionAgeRule(levelId) {
	document.getElementById('hiddenlevelid').value = levelId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditlevelname").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changelevelforthisadmissionagerule.jsp?levelId="
			+ levelId, true);
	xmlhttp.send();
}

function showAddPrimarySecondaryForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("primarySecondaryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddprimarysecondaryform.jsp", true);
	xmlhttp.send();
}

function showListOfPrimarySecondaries() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("primarySecondaryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofprimarysecondaries.jsp", true);
	xmlhttp.send();
}

function savePrimarySecondaryForm(primarySecondaryName) {
	if (primarySecondaryName == "") {
		document.getElementById("txtprimarysecondaryname").style.borderColor = "red";
		document.getElementById("txtprimarysecondaryname").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("primarySecondaryDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"saveprimarysecondaryform.jsp?primarySecondaryName="
						+ primarySecondaryName, true);
		xmlhttp.send();
	}
}

function saveSection(levelId, sectionName, classSize) {
	if (levelId == "") {
		document.getElementById("slctlevel").style.borderColor = "red";
		document.getElementById("slctlevel").focus();
		return false;
	} else if (sectionName == "") {
		document.getElementById("txtsectionname").style.borderColor = "red";
		document.getElementById("txtsectionname").focus();
		return false;
	} else if (classSize == "") {
		document.getElementById("txtclasssize").style.borderColor = "red";
		document.getElementById("txtclasssize").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savesection.jsp?levelId=" + levelId
				+ "&sectionName=" + sectionName + "&classSize=" + classSize,
				true);
		xmlhttp.send();
	}
}

function saveTeacher(userFullName, email, mobile,
		nationality, passportNumber,shortname) {
	if (userFullName == "") {
		document.getElementById("slctuser").style.borderColor = "red";
		document.getElementById("slctuser").focus();
		return false;
	}  else if (email == "") {
		document.getElementById("txtemail").style.borderColor = "red";
		document.getElementById("txtemail").focus();
		return false;
	} else if (mobile == "") {
		document.getElementById("txtmobile").style.borderColor = "red";
		document.getElementById("txtmobile").focus();
		return false;
	} else if (nationality == "") {
		document.getElementById("txtnationality").style.borderColor = "red";
		document.getElementById("txtnationality").focus();
		return false;
	} else if (passportNumber == "") {
		document.getElementById("txtpassportnumber").style.borderColor = "red";
		document.getElementById("txtpassportnumber").focus();
		return false;
	}else if (shortname == "") {
		document.getElementById("txtshortname").style.borderColor = "red";
		document.getElementById("txtshortname").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("teacherDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "saveteacher.jsp?userFullName=" + userFullName
				+ "&email=" + email + "&mobile=" + mobile + "&nationality="
				+ nationality + "&passportNumber=" + passportNumber + "&shortname=" + shortname, true);
		xmlhttp.send();
	}
}
function saveSupervisors(type,user,section,levelfrom,levelto,status,date) {
	if (type == "") {
		document.getElementById("slcttype").style.borderColor = "red";
		document.getElementById("slcttype").focus();
		return false;
	} else if (user == "") {
		document.getElementById("slctuser").style.borderColor = "red";
		document.getElementById("slctuser").focus();
		return false;
	} else if (status == "") {
		document.getElementById("slctstatus").style.borderColor = "red";
		document.getElementById("slctstatus").focus();
		return false;
	} else if (date == "") {
		document.getElementById("txtdate").style.borderColor = "red";
		document.getElementById("txtdate").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("supervisorsDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savesupervisors.jsp?type=" + type
				+ "&user=" + user + "&section=" + section
				+ "&levelfrom=" + levelfrom + "&levelto=" + levelto + "&status="
				+ status + "&date=" + date, true);
		
		xmlhttp.send();
	}
}
function updateSupervisors(id,type,supervisor,section,levelfrom,levelto,status,	date) {
	if (type == "") {
		document.getElementById("slcttype").style.borderColor = "red";
		document.getElementById("slcttype").focus();
		return false;
	} else if (supervisor == "") {
		document.getElementById("slctuser").style.borderColor = "red";
		document.getElementById("slctuser").focus();
		return false;
	} else if (status == "") {
		document.getElementById("slctstatus").style.borderColor = "red";
		document.getElementById("slctstatus").focus();
		return false;
	} else if (date == "") {
		document.getElementById("txtdate").style.borderColor = "red";
		document.getElementById("txtdate").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("supervisorsDiv").innerHTML = xmlhttp.responseText;
			}
		}
		//alert("2 id = "+id);
		xmlhttp.open("GET", "updatesupervisors.jsp?id=" + id + "&type=" + type
				+ "&supervisor=" + supervisor + "&section=" + section
				+ "&levelfrom=" + levelfrom + "&levelto=" + levelto + "&status="
				+ status + "&date=" + date, true);
		xmlhttp.send();
	}
}
function showAddLevelForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddlevelform.jsp", true);
	xmlhttp.send();
}

function saveLevel(levelName, categoryId) {
	if (levelName == "") {
		document.getElementById("txtlevelname").style.borderColor = "red";
		document.getElementById("txtlevelname").focus();
		return false;
	} else if (categoryId == "") {
		document.getElementById("slctcategory").style.borderColor = "red";
		document.getElementById("slctcategory").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savelevel.jsp?levelName=" + levelName
				+ "&categoryId=" + categoryId, true);
		xmlhttp.send();
	}
}

function showListOfLevels() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoflevels.jsp", true);
	xmlhttp.send();
}

function showListOfSections() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsections.jsp", true);
	xmlhttp.send();
}

function showAddCategoryForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddcategoryform.jsp", true);
	xmlhttp.send();
}

function showAddEvaluationCriteriaForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddevaluationcriteriaform.jsp", true);
	xmlhttp.send();
}

function showListOfEvaluationCriterias() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlevelandsubjectselectorbarforevalcriteria.jsp",
			true);
	xmlhttp.send();
}

function showListOfEvaluationCriteriaForLevelAndSubject(levelId, subjectId) {
	// //alert(levelId+":"+subjectId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofevaluationcriteriaforlevelandsubject.jsp?levelId="
					+ levelId + "&subjectId=" + subjectId, true);
	xmlhttp.send();
}

function showListOfEvaluationCriteriaForLevelAndSubjectForEdit(levelId,
		subjectId) {
	// //alert(levelId+":"+subjectId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofevaluationcriteriaforlevelandsubjectforedit.jsp?levelId="
					+ levelId + "&subjectId=" + subjectId, true);
	xmlhttp.send();
}

function showEditFieldsOfEvaluationCriteria(id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaListEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofevaluationcriteria.jsp?id=" + id,
					true);
	xmlhttp.send();
}

function updateEvaluationCriteria(id, subject, level, criteriaName) {
	//alert(level + " " + subject);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateevaluationcriteria.jsp?id=" + id + "&subject="
			+ subject + "&level=" + level + "&criteriaName=" + criteriaName,
			true);
	xmlhttp.send();
}

function saveEvaluationCriteria(subjectId, levelId, criteriaName) {
	if (subjectId == "") {
		document.getElementById("slctsubject").style.borderColor = "red";
		document.getElementById("slctsubject").focus();
		return false;
	} else if (levelId == "") {
		document.getElementById("slctlevel").style.borderColor = "red";
		document.getElementById("slctlevel").focus();
		return false;
	} else if (criteriaName == "") {
		document.getElementById("txtcriterianame").style.borderColor = "red";
		document.getElementById("txtcriterianame").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("evaluationCriteriaDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp
				.open("GET", "saveevaluationcriteria.jsp?subjectId="
						+ subjectId + "&levelId=" + levelId + "&criteriaName="
						+ criteriaName, true);
		xmlhttp.send();
	}
}

function showListOfCategories() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcategories.jsp", true);
	xmlhttp.send();
}

function saveCategoryForm(categoryName, primarySecondaryId) {
	if (categoryName == "") {
		document.getElementById("txtcategoryname").style.borderColor = "red";
		document.getElementById("txtcategoryname").focus();
		return false;
	} else if (primarySecondaryId == "") {
		document.getElementById("slctprimarysecondary").style.borderColor = "red";
		document.getElementById("slctprimarysecondary").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savecategoryform.jsp?categoryName=" + categoryName
				+ "&primarySecondaryId=" + primarySecondaryId, true);
		xmlhttp.send();
	}
}

function showUserInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showuserinnermenu.jsp", true);
	xmlhttp.send();
}
function showFeeLookup() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showFeeLookup.jsp", true);
	xmlhttp.send();
}

function showSectionInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsectioninnermenu.jsp", true);
	xmlhttp.send();
}

function showListOfSectionsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsectionsforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfSection(id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofsection.jsp?id=" + id, true);
	xmlhttp.send();
}

function updateSection(id, level, sectionName, classSize) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatesection.jsp?id=" + id + "&level=" + level
			+ "&sectionName=" + sectionName + "&classSize=" + classSize, true);
	xmlhttp.send();
}

function showTeacherInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showteacherinnermenu.jsp", true);
	xmlhttp.send();
}

function showListOfTeacherForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teacherDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofteachersforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfteacher(teacherId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teacherEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofteacher.jsp?teacherId=" + teacherId,
			true);
	xmlhttp.send();
}
function showeditfieldsofsupervisors(supervisorId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("supervisorsEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofsupervisor.jsp?supervisorId=" + supervisorId,
			true);
	xmlhttp.send();
}

function updateTeacher(teacherId, firstName, middleName, lastName, email,
		mobile, nationality, passport, shortname) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teacherDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateTeacher.jsp?teacherId=" + teacherId
			+ "&firstName=" + firstName + "&middleName=" + middleName
			+ "&lastName=" + lastName + "&email=" + email + "&mobile=" + mobile
			+ "&nationality=" + nationality + "&passport=" + passport + "&shortname=" + shortname, true);
	xmlhttp.send();
}

function showTeachesStudentInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showteachesstudentinnermenu.jsp", true);
	xmlhttp.send();
}

function showTeachesInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showteachesinnermenu.jsp", true);
	xmlhttp.send();
}
function showSupervisorsInnerMenu(){
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsupervisorsinnermenu.jsp", true);
	xmlhttp.send();
}

function showListOfTeachesForEdit(id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofteachesforedit.jsp", true);
	xmlhttp.send();
}

function showTeachesStudentParameters() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("takesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showteachesstudentparameters.jsp", true);
	xmlhttp.send();
}

function showListOfTeaches() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showteacherandsemesteracademicyearselectorbar.jsp",
			true);
	xmlhttp.send();
}

function showListOfTeachesForEdit() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showteacherandsemesteracademicyearselectorbarforedit.jsp", true);
	xmlhttp.send();
}

function showListOfTeachesForDelete() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showteacherandsemesteracademicyearselectorbarfordelete.jsp", true);
	xmlhttp.send();
}

function showTeachesInfoForTeacherInTermAndAcademicYearForDelete(teacherId,
		termId, academicYearId) {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showteachesinfoforteacherintermandacademicyearfordelete.jsp?teacherId="
					+ teacherId + "&termId=" + termId + "&academicYearId="
					+ academicYearId, true);
	xmlhttp.send();
}

function deleteThisTeaches(id) {
	if (window.confirm("Are you sure you want to delete this teaches")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("teachesDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisteaches.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showTeachesInfoForTeacherInTermAndAcademicYear(teacherId, termId,
		academicYearId) {
	// //alert(teacherId+":"+termId+":"+academicYearId);
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showteachesinfoforteacherintermandacademicyear.jsp?teacherId="
					+ teacherId + "&termId=" + termId + "&academicYearId="
					+ academicYearId, true);
	xmlhttp.send();
}

function showTeachesInfoForTeacherInTermAndAcadamicYearForEdit(teacherId,
		termId, academicYearId) {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showteachesinfoforteacherintermandacademicyearforedit.jsp?teacherId="
					+ teacherId + "&termId=" + termId + "&academicYearId="
					+ academicYearId, true);
	xmlhttp.send();
}

function showEditFieldsOfteaches(id) {

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofteaches.jsp?id=" + id, true);
	xmlhttp.send();
}

function updateTeaches(id, subject, level) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateteaches.jsp?id=" + id + "&level=" + level
			+ "&subject=" + subject, true);
	xmlhttp.send();
}

function showTeachesInfoForTeacherInTermAndAcademicYearForEdit(teacherId,
		termId, academicYearId) {
	// //alert(teacherId+":"+termId+":"+academicYearId);
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showteachesinfoforteacherintermandacademicyearforedit.jsp?teacherId="
					+ teacherId + "&termId=" + termId + "&academicYearId="
					+ academicYearId, true);
	xmlhttp.send();
}
function showAddSupervisorsForm() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("supervisorsDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddsupervisorsform.jsp", true);
	xmlhttp.send();
}
function showListOfSupervisorsForm() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("supervisorsDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsupervisorsform.jsp", true);
	xmlhttp.send();
}
function showListOfSupervisorsFormForEdit() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("supervisorsDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsupervisorsforedit.jsp", true);
	xmlhttp.send();
}
function showListOfSupervisorsFormForDelete() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("supervisorsDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsupervisorsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisSupervisor(supervisorId) {
	if (window.confirm("Are you sure you want to delete this Supervisor?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethissupervisor.jsp?supervisorId=" + supervisorId,
				true);
		xmlhttp.send();
	}
}
function showAddTeachesForm() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teachesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddteachesform.jsp", true);
	xmlhttp.send();
}

function showAddTeachesStudentForm() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("takesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddteachesstudentform.jsp", true);
	xmlhttp.send();
}

function showTeachesStudent(teacher, academicyear, term, subject) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("takingDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showTeachesStudent.jsp?teacher=" + teacher + "&academicyear=" + academicyear
			+ "&term=" + term + "&subject=" + subject, true);
	xmlhttp.send();
}


function dropSubject(subject, term, stud, level, year) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("all").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "dropsubject.jsp?studId=" + stud + "&levelId=" + level
			+ "&termId=" + term + "&academicYearId=" + year + "&subjectId="
			+ subject, true);
	xmlhttp.send();
}

 var checked=function  isChecked(studentAndSubject){
	 if(document.getElementById(studentAndSubject).checked){
		return true;
	 }else{
		return false;
	 }	
}

function saveTakes(subjects, level, stud, year, term) {
	// //alert(subject + ", " + level + ", " + stud + ", " + year + ", " + term);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("takenDiv").innerHTML = xmlhttp.responseText;
		}
	}
	//System.out.println(" on ajax stud = "+stud+ "  subject1 = "+subject1+ "  subject2 = "+subject2);
	xmlhttp.open("GET", "savetakes.jsp?studId=" + stud + "&subjectId="
			+ subjects + "&levelId=" + level + "&termId=" + term
			+ "&academicYearId=" + year, true);
	xmlhttp.send();
	 //alert(subject + ", " + level + ", " + stud + ", " + year + ", " + term+ ", " + subject1+ ", " + subject2);
}

function saveTeachesStudent(action, teacher, year, term, level, studCount, subject) {
	var checkedCount=0;
	var str="";

	for(var i=1;i<=studCount;i++){			
			var chId = i+""+subject;	
			if(document.getElementById(chId).checked){
				checkedCount++;
				str += "&" + "studentId" + checkedCount + "=" + i
			}
		
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("takenSubjectDiv").innerHTML = xmlhttp.responseText;
		}
	}
	//System.out.println(" on ajax stud = "+stud+ "  subject1 = "+subject1+ "  subject2 = "+subject2);
	xmlhttp.open("GET", "saveteachesstudent.jsp?action=" + action + "&teacherId=" + teacher + "&academicYearId=" + year + "&termId=" + term + "&levelId=" + level +"&checkedCount=" + checkedCount +"&subject=" + subject + str , true);
	xmlhttp.send();
}

function saveTeaches(teacherId, subjectId, sectionId, termId, academicYearId) {	
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (subjectId == "") {
		document.getElementById("slctsubject").style.borderColor = "red";
		document.getElementById("slctsubject").focus();
		return false;
	} else if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else if (termId == "") {
		document.getElementById("slctterm").style.borderColor = "red";
		document.getElementById("slctterm").focus();
		return false;
	} else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("teachesDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "saveteaches.jsp?teacherId=" + teacherId
				+ "&subjectId=" + subjectId + "&sectionId=" + sectionId
				+ "&termId=" + termId + "&academicYearId=" + academicYearId,
				true);
		xmlhttp.send();
	}
}

function showSubjectInnerMenu() {
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsubjectinnermenu.jsp", true);
	xmlhttp.send();
}

function showSponsorInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsponsorinnermenu.jsp", true);
	xmlhttp.send();
}

function showUniversityRegistrarInnerMenu() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showuniversityregistrarinnermenu.jsp", true);
	xmlhttp.send();
}

function showPriceInformationInnerMenu() {
	// //alert("here mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showpriceinformationinnermenu.jsp", true);
	xmlhttp.send();
}

function showAddAcademicYearForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddacademicyearform.jsp", true);
	xmlhttp.send();
}

function showListOfAcademicYears() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofacademicyears.jsp", true);
	xmlhttp.send();
}

function showListOfAcademicYearsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofacademicyearsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfAcademicYearsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofacademicyearsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisAcademicYear(academicYearId) {
	if (window.confirm("Are you sure you want to delete this academic year?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisacademicyear.jsp?academicYearId="
				+ academicYearId, true);
		xmlhttp.send();
	}
}

function showEditFieldsOfAcademicYear(academicYearId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("academicYearEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofacademicyear.jsp?academicYearId="
			+ academicYearId, true);
	xmlhttp.send();
}

function updateAcademicYear(academicYearId, academicYear, semester, quarter,
		monthRange, description) {
	// //alert(academicYearId+":"+academicYear+":"+semester+":"+quarter+":"+monthRange+":"+description);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateacademicyear.jsp?academicYearId="
			+ academicYearId + "&academicYear=" + academicYear + "&semester="
			+ semester + "&quarter=" + quarter + "&monthRange=" + monthRange
			+ "&description=" + description, true);
	xmlhttp.send();
}

function showAddBranchForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddbranchform.jsp", true);
	xmlhttp.send();
}

function showAddItemForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showadditemform.jsp", true);
	xmlhttp.send();
}

function showCreateInventorySheetForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcreateinventorysheetform.jsp", true);
	xmlhttp.send();
}

function showListOfInventorySheets() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbranchandinventorysheetdateselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfInventorySheetsForEdit() {
	// //alert("Mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showbranchandinventorysheetforeditdateselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfInventorySheetsOnlyForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showbranchandinventorysheetonlyforeditdateselectorbar.jsp", true);
	xmlhttp.send();
}

function showTheDetailsOfThisInventorySheet(inventorySheetType, storeId,
		countDate) {
	// //alert(inventorySheetType+":"+storeId+":"+countDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("inventorySheetListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showthedetailsofthisinventorysheet.jsp?inventorySheetType="
					+ inventorySheetType + "&storeId=" + storeId
					+ "&countDate=" + countDate, true);
	xmlhttp.send();
}

function showTheDetailsOfThisInventorySheetForEdit(inventorySheetType, storeId,
		countDate) {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("inventorySheetListDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET",
			"showthedetailsofthisinventorysheetforedit.jsp?inventorySheetType="
					+ inventorySheetType + "&storeId=" + storeId
					+ "&countDate=" + countDate, true);
	xmlhttp.send();
}

function showTheDetailsOfThisInventoryOnlySheetForEdit(inventorySheetType,
		storeId, countDate) {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("inventorySheetListDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET",
			"showthedetailsofthisinventoryonlysheetforedit.jsp?inventorySheetType="
					+ inventorySheetType + "&storeId=" + storeId
					+ "&countDate=" + countDate, true);
	xmlhttp.send();
}

function showEditFiedlsOfThisInventorySheet(inventorySheetId, ctr, storeId,
		invSheetId) {
	var divId = "inventorySheetEditDiv" + ctr;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofthisinventorysheet.jsp?inventorySheetId="
					+ inventorySheetId + "&ctr=" + ctr + "&storeId=" + storeId
					+ "&invSheetId=" + invSheetId, true);
	xmlhttp.send();
}

function showEditFiedlsOfThisInventorySheetOnly(inventorySheetId, ctr, storeId,
		invSheetId) {
	var divId = "inventorySheetEditDiv" + ctr;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofthisinventorysheetonly.jsp?inventorySheetId="
					+ inventorySheetId + "&ctr=" + ctr + "&storeId=" + storeId
					+ "&invSheetId=" + invSheetId, true);
	xmlhttp.send();
}

function changeThisItemForInventorySheetEdit(itemId, ctr) {
	// //alert(itemId+":"+ctr);
	var txtCtrName = "hiddenitemid" + ctr;
	document.getElementById(txtCtrName).value = itemId;
}

function updateThisInventorySheetDetail(ctr, inventorySheetId, hiddenItemId,
		storeQty, dispensingQty, unitPrice, expDate, storeId) {
	// //alert(inventorySheetId+":"+hiddenItemId+":"+storeQty+":"+dispensingQty+":"+unitPrice+":"+expDate+":"+ctr);
	// //alert(ctr);
	var divId = "inventorySheetEditDiv" + ctr;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET", "updatethisinventorysheetdetail.jsp?inventorySheetId="
			+ inventorySheetId + "&ctr=" + ctr + "&hiddenItemId="
			+ hiddenItemId + "&storeQty=" + storeQty + "&dispensingQty="
			+ dispensingQty + "&unitPrice=" + unitPrice + "&expDate=" + expDate
			+ "&storeId=" + storeId, true);
	xmlhttp.send();
}

function updateThisInventorySheetDetailOnly(ctr, inventorySheetId,
		hiddenItemId, storeQty, dispensingQty, unitPrice, expDate, storeId) {
	var divId = "inventorySheetEditDiv" + ctr;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp
			.open("GET",
					"updatethisinventorysheetdetailonly.jsp?inventorySheetId="
							+ inventorySheetId + "&ctr=" + ctr
							+ "&hiddenItemId=" + hiddenItemId + "&storeQty="
							+ storeQty + "&dispensingQty=" + dispensingQty
							+ "&unitPrice=" + unitPrice + "&expDate=" + expDate
							+ "&storeId=" + storeId, true);
	xmlhttp.send();
}

function showNonVATCashSalesCashierSelectorForThisBranch(branchId) {
	// //alert(branchId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"shownonvatcashsalescashierselectorforthisbranch.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showVATCashSalesCashierSelectorForThisBranch(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showvatcashsalescashierselectorforthisbranch.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showVATCreditSalesCashierSelectorForThisBranch(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showvatcreditsalescashierselectorforthisbranch.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showNonVATCreditSalesCashierSelectorForThisBranch(branchId) {
	// //alert(branc//h);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shownonvatcreditsalescashierselectorforthisbranch.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showVATCreditSalesCashierSelectorForThisBranchForEdit(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showvatcreditsalescashierselectorforthisbranchforedit.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showNonVATCreditSalesCashierSelectorForThisBranchForEdit(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shownonvatcreditsalescashierselectorforthisbranchforedit.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showVATCreditSalesCashierSelectorForThisBranchForDelete(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showvatcreditsalescashierselectorforthisbranchfordelete.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showNonVATCreditSalesCashierSelectorForThisBranchForDelete(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"shownonvatcreditsalescashierselectorforthisbranchfordelete.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showNonVATCashSalesCashierSelectorForThisBranchForEdit(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"shownonvatcashsalescashierselectorforthisbranchforedit.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showVATCashSalesCashierSelectorForThisBranchForEdit(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showvatcashsalescashierselectorforthisbranchforedit.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showNonVATCashSalesCashierSelectorForThisBranchForDelete(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"shownonvatcashsalescashierselectorforthisbranchfordelete.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showVATCashSalesCashierSelectorForThisBranchForDelete(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showvatcashsalescashierselectorforthisbranchfordelete.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function showReceiptNumberEntryForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showreceiptnumberentryform.jsp", true);
	xmlhttp.send();
}

function showCreditReceiptNumberEntryForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcreditreceiptnumberentryform.jsp", true);
	xmlhttp.send();
}

function showCreditReceiptNumberEntryFormForNonVAT() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcreditreceiptnumberentryformfornonvat.jsp", true);
	xmlhttp.send();
}

function showReceiptNumberEntryFormForNonVAT() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET", "showreceiptnumberentryformfornonvat.jsp", true);
	xmlhttp.send();
}

function showThisReceiptByUsingReceiptNumber(receiptNumber) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fetchedReceiptDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showthisreceiptbyusingreceiptnumber.jsp?receiptNumber="
					+ receiptNumber, true);
	xmlhttp.send();
}

function showThisReceiptByUsingReceiptNumberForNonVAT(receiptNumber) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fetchedReceiptDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showthisreceiptbyusingreceiptnumberfornonvat.jsp?receiptNumber="
					+ receiptNumber, true);
	xmlhttp.send();
}

function showThisReceiptByUsingReceiptNumberForCredit(receiptNumber) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fetchedReceiptDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showthisreceiptbyusingreceiptnumberforcredit.jsp?receiptNumber="
					+ receiptNumber, true);
	xmlhttp.send();
}

function showThisReceiptByUsingReceiptNumberForCreditNonVAT(receiptNumber) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fetchedReceiptDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showthisreceiptbyusingreceiptnumberforcreditnonvar.jsp?receiptNumber="
					+ receiptNumber, true);
	xmlhttp.send();
}

function showInsertItemOnVATCashSalesReceipt(cashSalesId, branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("cashReceiptAddItemDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showinsertitemonvatcashsalesreceipt.jsp?cashSalesId="
			+ cashSalesId + "&branchId=" + branchId, true);
	xmlhttp.send();
}

function showInsertItemOnVATCreditSalesReceipt(creditSalesId, branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("cashReceiptAddItemDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showinsertitemonvatcreditsalesreceipt.jsp?creditSalesId="
					+ creditSalesId + "&branchId=" + branchId, true);
	xmlhttp.send();
}

function showInsertItemOnNonVATCreditSalesReceipt() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("cashReceiptAddItemDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showinsertitemonnonvatcreditsalesreceipt.jsp?creditSalesId="
					+ creditSalesId + "&branchId=" + branchId, true);
	xmlhttp.send();
}

function showInsertItemOnNonVATCashSalesReceipt(cashSalesId, branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("cashReceiptAddItemDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showinsertitemonnonvatcashsalesreceipt.jsp?cashSalesId="
					+ cashSalesId + "&branchId=" + branchId, true);
	xmlhttp.send();
}

function showAllNonVATCashSalesOfThisCashier(cashierId, branchId, receiptDate) {
	// //alert(cashierId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("nonVATCashSalesDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET", "showallnonvatcashsalesofthiscashier.jsp?cashierId="
			+ cashierId + "&branchId=" + branchId + "&receiptDate="
			+ receiptDate, true);
	xmlhttp.send();
}

function showAllVATCashSalesOfThisCashier(cashierId, branchId, receiptDate) {
	// //alert(cashierId+":"+branchId+":"+receiptDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("VATCashSalesDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallvatcashsalesofthiscashier.jsp?cashierId="
			+ cashierId + "&branchId=" + branchId + "&receiptDate="
			+ receiptDate, true);
	xmlhttp.send();
}

function showEditFieldsOfThisCashSales(cashSalesId) {
	var cashSalesDivId = "cashSalesEditDiv" + cashSalesId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDivId).innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET", "showeditfieldsofthiscashsales.jsp?cashSalesId="
			+ cashSalesId, true);
	xmlhttp.send();
}

function showEditFieldsOfThisVATCashSales(cashSalesId) {
	var cashSalesDivId = "cashSalesEditDiv" + cashSalesId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDivId).innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET", "showeditfieldsofthisvatcashsales.jsp?cashSalesId="
			+ cashSalesId, true);
	xmlhttp.send();
}

function showEditFieldsOfThisVATCreditSales(creditSalesId) {
	var cashSalesDivId = "cashSalesEditDiv" + creditSalesId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofthisvatcreditsales.jsp?creditSalesId="
			+ creditSalesId, true);
	xmlhttp.send();
}

function showEditFieldsOfThisNonVATCreditSales(creditSalesId) {
	var cashSalesDivId = "cashSalesEditDiv" + creditSalesId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofthisnonvatcreditsales.jsp?creditSalesId="
					+ creditSalesId, true);
	xmlhttp.send();
}

function changeTheCreditCustomerForThisCreditSales(creditCustomerId,
		creditSalesId) {
	var hiddenCreditCustomerId = "hiddenreceiptto" + creditSalesId;
	document.getElementById(hiddenCreditCustomerId).value = creditCustomerId;
}

function showEditFieldsOfThisCashSalesDetail(cashSalesDetailId, branchId) {
	var cashSalesDetailDivId = "cashSalesDetailDiv" + cashSalesDetailId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDetailDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofthiscashsalesdetail.jsp?cashSalesDetailId="
					+ cashSalesDetailId + "&branchId=" + branchId, true);
	xmlhttp.send();
}

function showEditFieldsOfThisCreditSalesDetail(creditSalesDetailId, branchId) {
	var cashSalesDetailDivId = "cashSalesDetailDiv" + creditSalesDetailId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDetailDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofthiscreditsalesdetail.jsp?creditSalesDetailId="
					+ creditSalesDetailId + "&branchId=" + branchId, true);
	xmlhttp.send();
}

function changeThisItemForEditingCashSalesDetail(itemId, cashSalesDetailId) {
	// //alert(itemId+":"+cashSalesDetailId);
	var hiddenItemIdName = "hiddenitemid" + cashSalesDetailId;
	document.getElementById(hiddenItemIdName).value = itemId;
}

function updateThisCashSales(cashSalesId, fsNo, receiptDate, receiptNumber,
		total) {
	// //alert(cashSalesId+":"+fsNo+":"+receiptDate+":"+receiptNumber+":"+total);
	var cashSalesDivId = "cashSalesEditDiv" + cashSalesId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethiscashsales.jsp?cashSalesId=" + cashSalesId
			+ "&fsNo=" + fsNo + "&receiptDate=" + receiptDate
			+ "&receiptNumber=" + receiptNumber + "&total=" + total, true);
	xmlhttp.send();
}

function updateThisVATCashSales(cashSalesId, fsNo, receiptDate, receiptNumber,
		total, totalIncludingVAT) {
	var cashSalesDivId = "cashSalesEditDiv" + cashSalesId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethisvatcashsales.jsp?cashSalesId=" + cashSalesId
			+ "&fsNo=" + fsNo + "&receiptDate=" + receiptDate
			+ "&receiptNumber=" + receiptNumber + "&total=" + total
			+ "&totalIncludingVAT=" + totalIncludingVAT, true);
	xmlhttp.send();
}

function updateThisVATCreditSales(creditSalesId, receiptToId, receiptDate,
		receiptNumber, fsNumber, employeeName, total, totalIncludingVAT) {
	// //alert(creditSalesId+":"+receiptToId+":"+receiptDate+":"+receiptNumber+":"+total+":"+totalIncludingVAT);
	var cashSalesDivId = "cashSalesEditDiv" + creditSalesId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethisvatcreditsales.jsp?creditSalesId="
			+ creditSalesId + "&receiptToId=" + receiptToId + "&receiptDate="
			+ receiptDate + "&receiptNumber=" + receiptNumber + "&total="
			+ total + "&totalIncludingVAT=" + totalIncludingVAT + "&fsNumber="
			+ fsNumber + "&employeeName=" + employeeName, true);
	xmlhttp.send();
}

function updateThisNonVATCreditSales(creditSalesId, receiptToId, receiptDate,
		receiptNumber, fsNumber, employeeName, total) {
	var cashSalesDivId = "cashSalesEditDiv" + creditSalesId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethisnonvatcreditsales.jsp?creditSalesId="
			+ creditSalesId + "&receiptToId=" + receiptToId + "&receiptDate="
			+ receiptDate + "&receiptNumber=" + receiptNumber + "&fsNumber="
			+ fsNumber + "&total=" + total + "&employeeName=" + employeeName,
			true);
	xmlhttp.send();
}

function updateThisCashSalesDetail(cashSalesDetailId, newItemId, oldItemId,
		oldQuantity, newQuantity, unitPrice, totalAmount, storeId) {
	// //alert(cashSalesDetailId+":"+newItemId+":"+oldItemId+":"+oldQuantity+":"+newQuantity+":"+unitPrice+":"+totalAmount+":"+storeId);
	var cashSalesDetailDivId = "cashSalesDetailDiv" + cashSalesDetailId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDetailDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethiscashsalesdetail.jsp?cashSalesDetailId="
			+ cashSalesDetailId + "&newItemId=" + newItemId + "&oldItemId="
			+ oldItemId + "&oldQuantity=" + oldQuantity + "&newQuantity="
			+ newQuantity + "&unitPrice=" + unitPrice + "&totalAmount="
			+ totalAmount + "&storeId=" + storeId, true);
	xmlhttp.send();
}

function updateThisCreditSalesDetail(creditSalesDetailId, newItemId, oldItemId,
		oldQuantity, newQuantity, unitPrice, totalAmount, storeId) {
	var cashSalesDetailDivId = "cashSalesDetailDiv" + creditSalesDetailId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(cashSalesDetailDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethiscreditsalesdetail.jsp?creditSalesDetailId="
			+ creditSalesDetailId + "&newItemId=" + newItemId + "&oldItemId="
			+ oldItemId + "&oldQuantity=" + oldQuantity + "&newQuantity="
			+ newQuantity + "&unitPrice=" + unitPrice + "&totalAmount="
			+ totalAmount + "&storeId=" + storeId, true);
	xmlhttp.send();
}

function showAllNonVATCashSalesOfThisCashierForEdit(cashierId, branchId,
		receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("nonVATCashSalesEditDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showallnonvatcashsalesofthiscashierforedit.jsp?cashierId="
					+ cashierId + "&branchId=" + branchId + "&receiptDate="
					+ receiptDate, true);
	xmlhttp.send();
}

function showAllVATCashSalesOfThisCashierForEdit(cashierId, branchId,
		receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("VATCashSalesEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showallvatcashsalesofthiscashierforedit.jsp?cashierId="
					+ cashierId + "&branchId=" + branchId + "&receiptDate="
					+ receiptDate, true);
	xmlhttp.send();
}

function showAllVATCreditSalesOfThisCashier(cashierId, branchId, receiptDate) {
	// //alert(cashierId+":"+branchId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("VATCreditSalesEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallvatcreditsalesofthiscashier.jsp?cashierId="
			+ cashierId + "&branchId=" + branchId + "&receiptDate="
			+ receiptDate, true);
	xmlhttp.send();
}

function showAllNonVATCreditSalesOfThisCashier(cashierId, branchId, receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("NonVATCreditSalesEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallnonvatcreditsalesofthiscashier.jsp?cashierId="
			+ cashierId + "&branchId=" + branchId + "&receiptDate="
			+ receiptDate, true);
	xmlhttp.send();
}

function showAllVATCreditSalesOfThisCashierForEdit(cashierId, branchId,
		receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("VATCreditSalesEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showallvatcreditsalesofthiscashierforedit.jsp?cashierId="
					+ cashierId + "&branchId=" + branchId + "&receiptDate="
					+ receiptDate, true);
	xmlhttp.send();
}

function showAllNonVATCreditSalesOfThisCashierForEdit(cashierId, branchId,
		receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("NonVATCreditSalesEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showallnonvatcreditsalesofthiscashierforedit.jsp?cashierId="
					+ cashierId + "&branchId=" + branchId + "&receiptDate="
					+ receiptDate, true);
	xmlhttp.send();
}

function showAllVATCreditSalesOfThisCashierForDelete(cashierId, branchId,
		receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("VATCreditSalesEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showallvatcreditsalesofthiscashierfordelete.jsp?cashierId="
					+ cashierId + "&branchId=" + branchId + "&receiptDate="
					+ receiptDate, true);
	xmlhttp.send();
}

function showAllNonVATCreditSalesOfThisCashierForDelete(cashierId, branchId,
		receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("NonVATCreditSalesEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showallnonvatcreditsalesofthiscashierfordelete.jsp?cashierId="
					+ cashierId + "&branchId=" + branchId + "&receiptDate="
					+ receiptDate, true);
	xmlhttp.send();
}

function showAllNonVATCashSalesOfThisCashierForDelete(cashierId, branchId,
		receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("nonVATCashSalesDeleteDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showallnonvatcashsalesofthiscashierfordelete.jsp?cashierId="
					+ cashierId + "&branchId=" + branchId + "&receiptDate="
					+ receiptDate, true);
	xmlhttp.send();
}

function showAllVATCashSalesOfThisCashierForDelete(cashierId, branchId,
		receiptDate) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("VATCashSalesDeleteDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility =
			// "hidden";
		}
	}
	xmlhttp.open("GET",
			"showallvatcashsalesofthiscashierfordelete.jsp?cashierId="
					+ cashierId + "&branchId=" + branchId + "&receiptDate="
					+ receiptDate, true);
	xmlhttp.send();
}

function deleteThisCashSales(cashSalesId, branchId) {
	if (window
			.confirm("Are you sure you want to delete this cash sales receipt?")) {
		var cashSalesDiv = "cashSalesEditDiv" + cashSalesId;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(cashSalesDiv).innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethiscashsales.jsp?cashSalesId="
				+ cashSalesId + "&branchId=" + branchId, true);
		xmlhttp.send();
	}
}

function deleteThisCashSalesDetail(cashSalesDetailId, branchId) {
	if (window
			.confirm("Are you sure you want to delete this cash sales detail?")) {
		var cashSalesDiv = "cashSalesDetailDiv" + cashSalesDetailId;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(cashSalesDiv).innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethiscashsalesdetails.jsp?cashSalesDetailId="
				+ cashSalesDetailId + "&branchId=" + branchId, true);
		xmlhttp.send();
	}
}

function deleteThisCreditSalesDetail(creditSalesDetailId, branchId) {
	if (window
			.confirm("Are you sure you want to delete this credit sales detail?")) {
		var cashSalesDiv = "cashSalesDetailDiv" + creditSalesDetailId;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(cashSalesDiv).innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"deletethiscreditsalesdetails.jsp?creditSalesDetailId="
						+ creditSalesDetailId + "&branchId=" + branchId, true);
		xmlhttp.send();
	}
}

function deleteThisCreditSales(creditSalesId, branchId) {
	if (window
			.confirm("Are you sure you want to delete this credit sales receipt?")) {
		var cashSalesDiv = "cashSalesEditDiv" + creditSalesId;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(cashSalesDiv).innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethiscreditsales.jsp?creditSalesId="
				+ creditSalesId + "&branchId=" + branchId, true);
		xmlhttp.send();
	}
}

function updateInventorySheet(storeId, inventorySheetType, itemId,
		storeQuantity, dispensingQuantity, unitPrice, expiryDate, ctr,
		countDate) {
	// //alert(storeId+":"+inventorySheetType+":"+itemId+":"+storeQuantity+":"+dispensingQuantity+":"+expiryDate+":"+ctr);

	var itemIdName = "slctitem" + ctr;
	var storeQuantityName = "txtstoreqty" + ctr;
	var dispensingQuantityName = "txtdispensingqty" + ctr;
	var unitPriceName = "txtunitprice" + ctr;
	var expiryDateName = "txtexpirydate" + ctr;

	if (storeId == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the store!";
		document.getElementById('slctstore').style.borderColor = "red";
		document.getElementById('slctstore').focus();
		return false;
	}
	if (inventorySheetType == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the inventory sheet type!";
		document.getElementById('slctstore').style.borderColor = "green";
		document.getElementById('slctinventorysheettype').style.borderColor = "red";
		document.getElementById('slctinventorysheettype').focus();
		return false;
	}
	if (itemId == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the item!";
		document.getElementById('slctinventorysheettype').style.borderColor = "green";
		document.getElementById(itemIdName).style.borderColor = "red";
		document.getElementById(itemIdName).focus();
		return false;
	}
	if (storeQuantity == "") {
		document.getElementById('errorDiv').innerHTML = "Please enter the store quantity!";
		document.getElementById(itemIdName).style.borderColor = "green";
		document.getElementById(storeQuantityName).style.borderColor = "red";
		document.getElementById(storeQuantityName).focus();
		return false;
	}
	if (dispensingQuantity == "") {
		document.getElementById('errorDiv').innerHTML = "Please enter the dispensing quantity!";
		document.getElementById(storeQuantityName).style.borderColor = "green";
		document.getElementById(dispensingQuantityName).style.borderColor = "red";
		document.getElementById(dispensingQuantityName).focus();
		return false;
	}
	if (unitPrice == "") {
		document.getElementById('errorDiv').innerHTML = "Please enter the unit price!";
		document.getElementById(dispensingQuantityName).style.borderColor = "green";
		document.getElementById(unitPriceName).style.borderColor = "red";
		document.getElementById(unitPriceName).focus();
		return false;
	}
	if (expiryDate == "") {
		document.getElementById('errorDiv').innerHTML = "Please enter the expiry date!";
		document.getElementById(unitPriceName).style.borderColor = "green";
		document.getElementById(expiryDateName).style.borderColor = "red";
		document.getElementById(expiryDateName).focus();
		return false;
	}
	var divId = "inventorySheetDiv" + ctr;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateinventorysheet.jsp?storeId=" + storeId
			+ "&inventorySheetType=" + inventorySheetType + "&itemId=" + itemId
			+ "&storeQuantity=" + storeQuantity + "&dispensingQuantity="
			+ dispensingQuantity + "&expiryDate=" + expiryDate + "&unitPrice="
			+ unitPrice + "&ctr=" + ctr + "&countDate=" + countDate, true);
	xmlhttp.send();
}

function showListOfItems() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitemlistingcategoryselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfItemsOfThisCategory(categoryId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofitems.jsp?categoryId=" + categoryId, true);
	xmlhttp.send();
}

function showListOfItemsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitemlistingcategoryforeditselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfItemsOfThisCategoryForEdit(categoryId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofitemsforedit.jsp?categoryId=" + categoryId,
			true);
	xmlhttp.send();
}

function showListOfItemsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showitemlistingcategoryfordeleteselectorbar.jsp",
					true);
	xmlhttp.send();
}

function showListOfItemsOfThisCategoryForDelete(categoryId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofitemsfordelete.jsp?categoryId=" + categoryId, true);
	xmlhttp.send();
}

function showAddStoreForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddstoreform.jsp", true);
	xmlhttp.send();
}

function showAddCategoryForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddcategoryform.jsp", true);
	xmlhttp.send();
}

function showAddCreditCustomerForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddcreditcustomerform.jsp", true);
	xmlhttp.send();
}

function showAddSupplierForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddsupplierform.jsp", true);
	xmlhttp.send();
}

function showAddSectionForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddsectionform.jsp", true);
	xmlhttp.send();
}

function showAddTeacherForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teacherDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddteacherform.jsp", true);
	xmlhttp.send();
}

function showAddSubjectForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subjectDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddsubjectform.jsp", true);
	xmlhttp.send();
}

function showListOfTeachers() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teacherDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofteachers.jsp", true);
	xmlhttp.send();
}

function showAddUserForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showadduserform.jsp", true);
	xmlhttp.send();
}

function showListOfSuppliers() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsuppliers.jsp", true);
	xmlhttp.send();
}

function showListOfCreditCustomers() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcreditcustomers.jsp", true);
	xmlhttp.send();
}

function showListOfCreditCustomersForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcreditcustomersforedit.jsp", true);
	xmlhttp.send();
}

function showListOfCreditCustomersForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcreditcustomersfordelete.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfCreditCustomer(id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("creditCustomerEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofcreditcustomer.jsp?id=" + id, true);
	xmlhttp.send();
}

function showListOfSuppliersForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsuppliersforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsofSupplier(supplierId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("supplierEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofsupplier.jsp?supplierId=" + supplierId, true);
	xmlhttp.send();
}

function showListOfSuppliersForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsuppliersfordelete.jsp", true);
	xmlhttp.send();
}

function saveStore(branchId, storeName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savestore.jsp?branchId=" + branchId + "&storeName="
			+ storeName, true);
	xmlhttp.send();
}

function showListOfClassRooms() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofclassrooms.jsp", true);
	xmlhttp.send();
}

function showListOfClassRoomsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofclassroomsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfClassRoomsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofclassroomsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisClassRoom(classRoomId) {
	if (window.confirm("Are you sure you want to delete this classroom?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisclassroom.jsp?classRoomId="
				+ classRoomId, true);
		xmlhttp.send();
	}
}

function showEditFieldsOfClassRoom(classRoomId) {
	// //alert(classRoomId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("classRoomEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofclassroom.jsp?classRoomId="
			+ classRoomId, true);
	xmlhttp.send();
}

function updateClassRoom(classRoomId, branchId, classRoomName, classRoomSize,
		description) {
	// //alert(classRoomId+":"+branchId+":"+classRoomName+":"+classRoomSize+":"+description);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"updateclassroom.jsp?classRoomId=" + classRoomId + "&branchId="
					+ branchId + "&classRoomName=" + classRoomName
					+ "&classRoomSize=" + classRoomSize + "&description="
					+ description, true);
	xmlhttp.send();
}

function changeThisBranchForClassRoom(branchId) {
	// //alert(branchId);
	document.getElementById('hiddenbranchid').value = branchId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		// //alert(branchId);
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditbranchname").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"changethisbranchforclassroom.jsp?branchId=" + branchId, true);
	xmlhttp.send();
}

function saveBranch(branchName, location, description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savebranch.jsp?branchName=" + branchName
			+ "&location=" + location + "&description=" + description, true);
	xmlhttp.send();
}

function saveCreditCustomer(name, officePhone, mobilePhone) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savecreditcustomer.jsp?name=" + name + "&officePhone="
			+ officePhone + "&mobilePhone=" + mobilePhone, true);
	xmlhttp.send();
}

function showListOfGIVs() {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchSelectorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbranchselectortoviewgiv.jsp", true);
	xmlhttp.send();
}

function showListOfGTVs() {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgtvs.jsp", true);
	xmlhttp.send();
}

function showListOfGTVsForEdit() {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgtvsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfGTVsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgtvsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfGRVs() {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchSelectorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbranchselectortoviewgrv.jsp", true);
	xmlhttp.send();
}

function showListOfGRVsForEdit() {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchSelectorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbranchselectortoeditgrv.jsp", true);
	xmlhttp.send();
}

function showListOfGRVsForDelete() {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchSelectorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbranchselectortodeletegrv.jsp", true);
	xmlhttp.send();
}

function showTheGRVOfThisStore(storeId) {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgrvs.jsp?storeId=" + storeId, true);
	xmlhttp.send();
}

function showTheGIVOfThisStore(storeId) {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgivs.jsp?storeId=" + storeId, true);
	xmlhttp.send();
}

function showTheGIVOfThisStoreToEdit(storeId) {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgivsforedit.jsp?storeId=" + storeId, true);
	xmlhttp.send();
}

function showTheGIVOfThisStoreToDelete(storeId) {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgivsfordelete.jsp?storeId=" + storeId, true);
	xmlhttp.send();
}

function showTheGIVOfThisStoreToDelete(storeId) {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgivsfordelete.jsp?storeId=" + storeId, true);
	xmlhttp.send();
}

function showTheGRVOfThisStoreToEdit(storeId) {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgrvsforedit.jsp?storeId=" + storeId, true);
	xmlhttp.send();
}

function showTheGRVOfThisStoreToDelete(storeId) {
	document.getElementById('tabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgrvsfordelete.jsp?storeId=" + storeId, true);
	xmlhttp.send();
}

function showGRVDetails(grvId) {
	var uniqueDivId = "grvDetailDiv" + grvId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showgrvdetailsfor.jsp?grvId=" + grvId, true);
	xmlhttp.send();
}

function showGRVDetailsForEdit(grvId) {
	var uniqueDivId = "grvDetailDiv" + grvId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showgrvdetailsforedit.jsp?grvId=" + grvId, true);
	xmlhttp.send();
}

function showGRVDetailsForDelete(grvId) {
	var uniqueDivId = "grvDetailDiv" + grvId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showgrvdetailsfordelete.jsp?grvId=" + grvId, true);
	xmlhttp.send();
}

function deleteThisGRVDetail(grvDetailId) {
	if (window.confirm("Are you sure you want to delete this GRV Detail?")) {

	}
}

function showEditFieldsOfThisGRVDetail(grvDetailId) {
	var uniqueDivId = "grvDetailEditDiv" + grvDetailId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofthisgrvdetail.jsp?grvDetailId="
			+ grvDetailId, true);
	xmlhttp.send();
}

function updateGRVDetail(grvDetailId, itemId, description, quantity,
		unitCostPrice, totalPriceCost, unitSellingPrice, expiryDate) {
	// //alert(grvDetailId+":"+itemId+":"+description+":"+quantity+":"+unitCostPrice+":"+totalPriceCost+":"+unitSellingPrice+":"+expiryDate);
	var uniqueDivId = "grvDetailEditDiv" + grvDetailId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updategrvdetail.jsp?grvDetailId=" + grvDetailId
			+ "&itemId=" + itemId + "&description=" + description
			+ "&quantity=" + quantity + "&unitCostPrice=" + unitCostPrice
			+ "&totalPriceCost=" + totalPriceCost + "&unitSellingPrice="
			+ unitSellingPrice + "&expiryDate=" + expiryDate, true);
	xmlhttp.send();
}

function changeTheItemForThisGRVDetail(itemId, grvDetailId) {
	var slctItemName = "txtedititemname" + grvDetailId;
	var hiddenItemIdName = "hiddenitemid" + grvDetailId;
	document.getElementById(hiddenItemIdName).value = itemId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(slctItemName).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changetheitemforthisgrvdetail.jsp?itemId=" + itemId,
			true);
	xmlhttp.send();
}

function hideGRVDetails(grvId) {
	var uniqueDivId = "grvDetailDiv" + grvId;
	// //alert(uniqueDivId);
	document.getElementById(uniqueDivId).innerHTML = "";
}

function showListOfGIVsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchSelectorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbranchselectortoeditgiv.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfGIV(givId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("givEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofgiv.jsp?givId=" + givId, true);
	xmlhttp.send();
}

function showListOfGIVsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchSelectorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbranchselectortodeletegiv.jsp", true);
	xmlhttp.send();
}

function deleteThisGIV(givId) {
	if (window.confirm("Are you sure you want to delete this GIV")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisgiv.jsp?givId=" + givId, true);
		xmlhttp.send();
	}
}

function saveItem(categoryId, itemCode, itemName, description, unit,
		manufacturer, countryOfOrigin) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveitem.jsp?categoryId=" + categoryId + "&itemCode="
			+ itemCode + "&itemName=" + itemName + "&description="
			+ description + "&unit=" + unit + "&manufacturer=" + manufacturer
			+ "&countryOfOrigin=" + countryOfOrigin, true);
	xmlhttp.send();
}

function saveUser(firstName, middleName, lastName, userType, username, password) {
	// //alert(branchId+":"+firstName);
	if (firstName == "") {
		document.getElementById("txtfirstname").style.borderColor = "red";
		document.getElementById("txtfirstname").focus();
		return false;
	} else if (middleName == "") {
		document.getElementById("txtmiddlename").style.borderColor = "red";
		document.getElementById("txtmiddlename").focus();
		return false;
	} else if (lastName == "") {
		document.getElementById("txtlastname").style.borderColor = "red";
		document.getElementById("txtlastname").focus();
		return false;
	} else if (userType == "") {
		document.getElementById("slctusertype").style.borderColor = "red";
		document.getElementById("slctusertype").focus();
		return false;
	} else if (username == "") {
		document.getElementById("txtusername").style.borderColor = "red";
		document.getElementById("txtusername").focus();
		return false;
	} else if (password == "") {
		document.getElementById("txtpassword").style.borderColor = "red";
		document.getElementById("txtpassword").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "saveuser.jsp?firstName=" + firstName
				+ "&middleName=" + middleName + "&lastName=" + lastName
				+ "&userType=" + userType + "&username=" + username
				+ "&password=" + password, true);
		xmlhttp.send();
	}
}

function saveSupplier(supplierName, supplierCountry, supplierCity, phone) {
	// //alert(supplierCountry);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savesupplier.jsp?supplierName=" + supplierName
			+ "&supplierCountry=" + supplierCountry + "&supplierCity="
			+ supplierCity + "&phone=" + phone, true);
	xmlhttp.send();
}

function showListOfBranchs() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofbranchs.jsp", true);
	xmlhttp.send();
}

function showListOfCategories() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcategories.jsp", true);
	xmlhttp.send();
}

function showListOfCategoriesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcategoriesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfCategoriesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcategoriesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfBranchsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofbranchsforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfBranch(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofbranch.jsp?branchId=" + branchId,
					true);
	xmlhttp.send();
}

function showEditFieldsOfItem(itemId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("itemEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofitem.jsp?itemId=" + itemId, true);
	xmlhttp.send();
}

function deleteThisItem(itemId) {
	if (window.confirm("Are you sure you want to delete this item?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisitem.jsp?itemId=" + itemId, true);
		xmlhttp.send();
	}
}

function deleteThisStore(storeId) {
	if (window.confirm("Are you sure you want to delete this store?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisstore.jsp?storeId=" + storeId, true);
		xmlhttp.send();
	}
}

function changeCategoryForThisItem(categoryId) {
	document.getElementById('hiddeneditcategoryid').value = categoryId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditcategory").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changecategoryforthisitem.jsp?categoryId="
			+ categoryId, true);
	xmlhttp.send();
}

function showEditFieldsOfCategory(categoryId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofcategory.jsp?categoryId=" + categoryId, true);
	xmlhttp.send();
}

function showEditFieldsOfUser(userId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("userEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofuser.jsp?userId=" + userId, true);
	xmlhttp.send();
}

function showEditFieldsOfSupplier(supplierId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("supplierEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofsupplier.jsp?supplierId=" + supplierId, true);
	xmlhttp.send();
}

function updateBranch(branchId, branchName, location, description) {
	// //alert(branchId+":"+branchName+":"+location+":"+description);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatebranch.jsp?branchId=" + branchId
			+ "&branchName=" + branchName + "&location=" + location
			+ "&description=" + description, true);
	xmlhttp.send();
}

function updateStore(storeId, branchId, storeName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatestore.jsp?storeId=" + storeId + "&branchId="
			+ branchId + "&storeName=" + storeName, true);
	xmlhttp.send();
}

function updateCategory(categoryId, categoryName, primarysecondary) {
	// var hexColorName = categoryColor.substr(1);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5pr
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("categoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatecategory.jsp?categoryId=" + categoryId
			+ "&categoryName=" + categoryName + "&primarysecondary="
			+ primarysecondary, true);
	xmlhttp.send();
}

function changeCategoryForThisLevel(id) {
	document.getElementById("hiddencategory").value = id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtcategory").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changecategoryforthislevel.jsp?id=" + id, true);
	xmlhttp.send();
}

function changeLevelForThisSection(id) {
	document.getElementById("hiddenlevel").value = id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtlevel").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changelevelforthissection.jsp?id=" + id, true);
	xmlhttp.send();
}

function changeSubjectForThisTeaches(id) {
	document.getElementById("hiddensubject").value = id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtsubject").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changesubjectforthisteaches.jsp?id=" + id, true);
	xmlhttp.send();
}

function changeLevelForThisTeaches(id) {
	document.getElementById("hiddenlevel").value = id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtlevel").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changelevelforthisteaches.jsp?id=" + id, true);
	xmlhttp.send();
}

function changePrimarySecondaryForThisPrimarySecondary(id) {
	document.getElementById("hiddenprimarysecondary").value = id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtprimarysecondary").value = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "changelevelforthisprimarysecondary.jsp?id=" + id,
					true);
	xmlhttp.send();
}

function changeSubjectForThisEvaluationCriteria(id) {
	document.getElementById("hiddensubject").value = id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtsubject").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changesubjectforthisevaluationcriteria.jsp?id=" + id,
			true);
	xmlhttp.send();
}

function changeLevelForThisEvaluationCriteria(id) {
	document.getElementById("hiddenlevel").value = id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtlevel").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changelevelforthisevaluationcriteria.jsp?id=" + id,
			true);
	xmlhttp.send();
}

function updateItem(id, categoryId, itemCode, itemName, description, unit,
		manufacturer, countryOfOrigin) {
	// //alert(id+":"+categoryId+":"+itemCode+":"+itemName+":"+description+":"+unit+":"+manufacturer+":"+countryOfOrigin);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateitem.jsp?categoryId=" + categoryId
			+ "&itemCode=" + itemCode + "&itemName=" + itemName
			+ "&description=" + description + "&unit=" + unit
			+ "&manufacturer=" + manufacturer + "&countryOfOrigin="
			+ countryOfOrigin + "&id=" + id, true);
	xmlhttp.send();
}

function changeThisBranchForUser(branchId) {
	document.getElementById('hiddeneditbranchid').value = branchId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditbranch").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethisbranchforuser.jsp?branchId=" + branchId,
			true);
	xmlhttp.send();
}

function changeThisUserTypeForUser(userType) {
	document.getElementById('txteditusertype').value = userType;
}

function resetUser(userId){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "resetPassword.jsp?userId=" + userId , true);
	xmlhttp.send();
}

function updateUser(userId, firstName, middleName, lastName, userType) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateuser.jsp?userId=" + userId + "&firstName="
			+ firstName + "&middleName=" + middleName + "&lastName=" + lastName
			+ "&userType=" + userType, true);
	xmlhttp.send();
}

function updateSupplier(supplierId, supplierName, supplierCountry,
		supplierCity, phone) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatesupplier.jsp?supplierId=" + supplierId
			+ "&supplierName=" + supplierName + "&supplierCountry="
			+ supplierCountry + "&supplierCity=" + supplierCity + "&phone="
			+ phone, true);
	xmlhttp.send();
}

function updateCreditCustomer(creditCustomerId, name, officePhone, mobilePhone) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatecreditcustomer.jsp?creditCustomerId="
			+ creditCustomerId + "&name=" + name + "&officePhone="
			+ officePhone + "&mobilePhone=" + mobilePhone, true);
	xmlhttp.send();
}

function deleteBranch(branchId) {
	if (window.confirm("Are you sure you want to delete this branch?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletebranch.jsp?branchId=" + branchId, true);
		xmlhttp.send();
	}
}

function deleteThisCategory(categoryId) {
	if (window.confirm("Are you sure you want to delete this category?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethiscategory.jsp?categoryId=" + categoryId,
				true);
		xmlhttp.send();
	}
}

function deleteThisSupplier(supplierId) {
	if (window.confirm("Are you sure you want to delete this supplier?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp
				.open("GET", "deletesupplier.jsp?supplierId=" + supplierId,
						true);
		xmlhttp.send();
	}
}

function deleteThisCreditCustomer(id) {
	if (window.confirm("Are you sure you want to delete this credit customer?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletecreditcustomer.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showListOfStores() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstores.jsp", true);
	xmlhttp.send();
}

function showListOfStoresForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstoresforedit.jsp", true);
	xmlhttp.send();
}

function showItemPriceHistoryInBranch() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitempricehistoryinbranch.jsp", true);
	xmlhttp.send();
}

function showAveragePriceOfItemInBranch() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaveragepriceofiteminbranch.jsp", true);
	xmlhttp.send();
}

function showAveragePriceOfItemInAllBranches() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaveragepriceofiteminallbranches.jsp", true);
	xmlhttp.send();
}

function showItemPriceHistoryInBranchForThisItem(branchId, itemId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("priceHistoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitempricehistoryinbranchforthisitem.jsp?branchId="
			+ branchId + "&itemId=" + itemId, true);
	xmlhttp.send();
}

function showAverageItemPriceInBranchForThisItem(branchId, itemId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("priceHistoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaverageitempriceinbranchforthisitem.jsp?branchId="
			+ branchId + "&itemId=" + itemId, true);
	xmlhttp.send();
}

function showAveragePriceOfItemInBranch() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaveragepriceofiteminbranch.jsp", true);
	xmlhttp.send();
}

function showAveragePriceOfItemInAllBranches() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaveragepriceofiteminallbranches.jsp", true);
	xmlhttp.send();
}

function showItemCurrentPriceInAllBranches() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitemcurrentpriceinallbranches.jsp", true);
	xmlhttp.send();
}

function showAveragePriceOfItemInAllBranchesForThisItem(itemId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("priceHistoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showaveragepriceofiteminallbranchesforthisitem.jsp?itemId="
					+ itemId, true);
	xmlhttp.send();
}

function showItemCurrentPriceInAllBranchesForThisItem(itemId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("priceHistoryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET",
					"showitemcurrentpriceinallbranchesforthisitem.jsp?itemId="
							+ itemId, true);
	xmlhttp.send();
}

function showItemCurrentPriceInAllBranches() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitemcurrentpriceinallbranches.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfStore(storeId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("storeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofstore.jsp?storeId=" + storeId, true);
	xmlhttp.send();
}

function showListOfStoresForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstoresfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfBranchsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofbranchsfordelete.jsp", true);
	xmlhttp.send();
}

function showAddEducationLevelForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddeducationlevelform.jsp", true);
	xmlhttp.send();
}

function saveEducationLevel(educationLevelName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveeducationlevel.jsp?educationLevelName="
			+ educationLevelName, true);
	xmlhttp.send();
}

function showListOfEducationLevels() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofeducationlevel.jsp", true);
	xmlhttp.send();
}

function showListOfEducationLevelsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofeducationlevelsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfEducationLevelsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofeducationlevelsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisEducationLevel(educationLevelId) {
	if (window.confirm("Are you sure you want to delete this education level?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethiseducationlevel.jsp?educationLevelId="
				+ educationLevelId, true);
		xmlhttp.send();
	}
}

function showEditFieldsOfEducationLevel(educationLevelId) {
	// //alert(educationLevelId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("educationLevelEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofeducationlevel.jsp?educationLevelId="
			+ educationLevelId, true);
	xmlhttp.send();
}

function updateEducationLevel(educationLevelId, educationLevelName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateeducationlevel.jsp?educationLevelId="
			+ educationLevelId + "&educationLevelName=" + educationLevelName,
			true);
	xmlhttp.send();
}

function showAddGradeLevelForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddgradelevelform.jsp", true);
	xmlhttp.send();
}

function showListOfGradeLevels() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgradelevels.jsp", true);
	xmlhttp.send();
}

function showListOfGradeLevelsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgradelevelsforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfGradeLevel(gradeLevelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("gradeLevelEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofgradelevel.jsp?gradeLevelId="
			+ gradeLevelId, true);
	xmlhttp.send();
}

function updateGradeLevel(gradeLevelId, gradeLevelName, description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updategradelevel.jsp?gradeLevelId=" + gradeLevelId
			+ "&gradeLevelName=" + gradeLevelName + "&description="
			+ description, true);
	xmlhttp.send();
}

function showListOfGradeLevelsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgradelevelsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisGradeLevel(gradeLevelId) {
	if (window.confirm("Are you sure you want to delete this grade level?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisgradelevel.jsp?gradeLevelId="
				+ gradeLevelId, true);
		xmlhttp.send();
	}
}

function saveGradeLevel(gradeLevelName, description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savegradelevel.jsp?gradeLevelName=" + gradeLevelName
			+ "&description=" + description, true);
	xmlhttp.send();
}

function showListOfSubjects() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subjectDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsubjects.jsp", true);
	xmlhttp.send();
}

function showListOfSubjectForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subjectDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsubjectsforedit.jsp", true);
	xmlhttp.send();
}

function updateSubject(subjectId, subjectName, description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subjectDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatesubject.jsp?subjectId=" + subjectId
			+ "&subjectName=" + subjectName + "&description=" + description,
			true);
	xmlhttp.send();
}

function showEditFieldsOfThisSubject(subjectId) {
	// //alert(subjectId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subjectEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfiedlsofthissubject.jsp?subjectId="
			+ subjectId, true);
	xmlhttp.send();
}

function showListOfSubjectsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsubjectsforedit.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfSubject(subjectId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subjectEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofsubject.jsp?subjectId=" + subjectId,
			true);
	xmlhttp.send();
}

function showListOfSubjectsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsubjectsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisSubject(subjectId) {
	if (window.confirm("Are you sure you want to delete this subject?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethissubject.jsp?subjectId=" + subjectId,
				true);
		xmlhttp.send();
	}
}

function showListOfStudents() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudents.jsp", true);
	xmlhttp.send();
}

function showListOfStudentsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfStudentsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisStudent(studentId) {
	if (window.confirm("Are you sure you want to delete this student?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisstudent.jsp?studentId=" + studentId,
				true);
		xmlhttp.send();
	}
}

function showListOfUsers() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofusers.jsp", true);
	xmlhttp.send();
}

function showListOfTeachersForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofteachersforedit.jsp", true);
	xmlhttp.send();
}

function showListOfTeachersForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofteachersforedit.jsp", true);
	xmlhttp.send();
}

function deleteThisTeacher(teacherId) {
	if (window.confirm("Are you sure you want to delete this teacher?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisteacher.jsp?teacherId=" + teacherId,
				true);
		xmlhttp.send();
	}
}

function showStudentRecordDetailsRightHere(studentRecordId) {
	uniqueStudentRecordEditDiv = "studentEditDiv" + studentRecordId;
	// //alert(uniqueStudentRecordEditDiv);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordEditDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showviewdetailsofstudentrecord.jsp?studentRecordId="
			+ studentRecordId, true);
	xmlhttp.send();
}

function showStudentDetail(studentId) {
	// //alert("here is mahder");
	uniqueStudentDetailDiv = "studentViewDetailDiv" + studentId;
	// //alert(uniqueStudentRecordEditDiv);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showviewdetailsofstudent.jsp?studentId=" + studentId,
			true);
	xmlhttp.send();
}

function showRegistrationDetailForStudent(studentId) {
	uniqueStudentDetailDiv = "studentViewDetailDiv" + studentId;
	// //alert(uniqueStudentRecordEditDiv);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showregistrationdetailforstudent.jsp?studentId="
			+ studentId, true);
	xmlhttp.send();
}

function showListOfRegistrationDetailsSelector() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregistrationdetailsselector.jsp", true);
	xmlhttp.send();
}

function showListOfRegistrationDetailsFromThisBranch(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofregistrationdetailsfromthisbranch.jsp?branchId="
					+ branchId, true);
	xmlhttp.send();
}

function registerThisStudent(studentId, gradeLevelId, academicYearId,
		paymentAmount) {
	// //alert(studentId+":"+gradeLevelId+":"+academicYearId+":"+paymentAmount);
	uniqueStudentDetailDiv = "studentViewDetailDiv" + studentId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "registerthisstudent.jsp?studentId=" + studentId
			+ "&gradeLevelId=" + gradeLevelId + "&academicYearId="
			+ academicYearId + "&paymentAmount=" + paymentAmount, true);
	xmlhttp.send();
}

function showStudentDetailForEdit(studentId) {
	uniqueStudentDetailDiv = "studentViewDetailEditDiv" + studentId;
	// //alert(uniqueStudentRecordEditDiv);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showviewdetailsofstudentforedit.jsp?studentId="
			+ studentId, true);
	xmlhttp.send();
}

function saveSubject(subjectName, description) {
	if (subjectName == "") {
		document.getElementById("txtsubjectname").style.borderColor = "red";
		document.getElementById("txtsubjectname").focus();
		return false;
	} else if (description == "") {
		document.getElementById("textareadescription").style.borderColor = "red";
		document.getElementById("textareadescription").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subjectDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savesubject.jsp?subjectName=" + subjectName
				+ "&description=" + description, true);
		xmlhttp.send();
	}
}

function showListOfFieldOfStudies() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudies.jsp", true);
	xmlhttp.send();
}

function showListOfFieldOfStudiesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudiesforedit.jsp", true);
	xmlhttp.send();
}

function showAddGradeCardForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddgradecardform.jsp", true);
	xmlhttp.send();
}

function showListOfGradeCards() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showgradecardsparameterselectorbar.jsp", true);
	xmlhttp.send();
}

function saveGradeCard(teacherId, sectionId, studentId, subjectId, grade, eff,
		exam, cond, semesterId, academicYearId) {
	if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else if (studentId == "") {
		document.getElementById("slctstudent").style.borderColor = "red";
		document.getElementById("slctstudent").focus();
		return false;
	} else if (subjectId == "") {
		document.getElementById("slctsubject").style.borderColor = "red";
		document.getElementById("slctsubject").focus();
		return false;
	} else if (grade == "") {
		document.getElementById("txtgrade").style.borderColor = "red";
		document.getElementById("txtgrade").focus();
		return false;
	} else if (eff == "") {
		document.getElementById("txteff").style.borderColor = "red";
		document.getElementById("txteff").focus();
		return false;
	} else if (exam == "") {
		document.getElementById("txtexam").style.borderColor = "red";
		document.getElementById("txtexam").focus();
		return false;
	} else if (cond == "") {
		document.getElementById("txtcond").style.borderColor = "red";
		document.getElementById("txtcond").focus();
		return false;
	} else if (semesterId == "") {
		document.getElementById("slctsemester").style.borderColor = "red";
		document.getElementById("slctsemester").focus();
		return false;
	} else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savegradecard.jsp?teacherId=" + teacherId
				+ "&sectionId=" + sectionId + "&studentId=" + studentId
				+ "&subjectId=" + subjectId + "&grade=" + grade + "&eff=" + eff
				+ "&exam=" + exam + "&cond=" + cond + "&semesterId="
				+ semesterId + "&academicYearId=" + academicYearId, true);
		xmlhttp.send();
	}
}

function showListOfGradeCardsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showgradecardsparameterselectorbarforedit.jsp", true);
	xmlhttp.send();
}

function showStudentSelectorFromThisSection(sectionId) {
	// //alert(sectionId);
	if (sectionId != "") {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("selectStudentDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showstudentselectorfromthissection.jsp?sectionId="
				+ sectionId, true);
		xmlhttp.send();
	}
}

function showListOfStudentsForGradeCard(teacherId, levelId, academicYearId, 
        semesterId, subjectId) {
	if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (levelId == "") {
		document.getElementById("slctlevel").style.borderColor = "red";
		document.getElementById("slctlevel").focus();
		return false;
	}else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else if (semesterId == "") {
		document.getElementById("slctsemester").style.borderColor = "red";
		document.getElementById("slctsemester").focus();
		return false;
	} else if (subjectId == "") {
		document.getElementById("slctsubject").style.borderColor = "red";
		document.getElementById("slctsubject").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("gradeCardListDiv").innerHTML = xmlhttp.responseText;
			}
		}

		xmlhttp.open("GET",	"showlistofstudentsforgradecard.jsp?teacherId="
						+ teacherId + "&levelId=" + levelId 
						+ "&academicYearId=" + academicYearId
						+ "&semesterId=" + semesterId + "&subjectId="+ subjectId, true);
		xmlhttp.send();
	}
}


function showTheGradeCardListForThisParameter(teacherId, levelId, academicYearId, semesterId, subjectId) {
	 if (semesterId == "") {
		document.getElementById("slctsemester").style.borderColor = "red";
		document.getElementById("slctsemester").focus();
		return false;
	} else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("gradeCardListDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showthegradecardlistforthisparameter.jsp?teacherId="
						+ teacherId + "&levelId=" + levelId + "&academicYearId="
						+ academicYearId + "&semesterId=" + semesterId
						+ "&subjectId=" + subjectId, true);		
		xmlhttp.send();
	}
}

function showGradeCardForThisStudent(studentId, academicYearId, semesterId) {
	
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("gradeCardListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showgradecardforthisstudent.jsp?studentId="
			+ studentId + "&academicYearId=" + academicYearId 
			+ "&semesterId=" + semesterId, true);
	xmlhttp.send();
}

function showEditFieldsOfGradeCard(id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("editGradeCardDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofgradecard.jsp?id=" + id, true);
	xmlhttp.send();
}

function updateGradeCard(teacherId, sectionId, academicYearId, semesterId, subjectId, counter) {
	str = '';
	studentId = '';
	grade = '';
	eff = '';
	cond = '';
	studentIdVal = '';
	gradeVal = '';
	effVal = '';
	condVal = '';
	
	for ( var i = 1; i < counter; i++) {
		gradeId = 'gradeId_' + i;
		studentId = 'studentId_' + i;
		grade = 'txtGrade_' + i;
		eff = 'txtEff_' + i;
		cond = 'txtCond_' + i;

		gradeIdVal = document.getElementById(gradeId).value;
		studentIdVal = document.getElementById(studentId).value;
		gradeVal = document.getElementById(grade).value;
		effVal = document.getElementById(eff).value;
		condVal = document.getElementById(cond).value;
		
		str += "&" + gradeId + "=" + gradeIdVal 
			 + "&" + studentId + "=" + studentIdVal 
			 + "&" + grade + "="	+ gradeVal 
			 + "&" + eff + "=" + effVal
			 + "&" + cond + "=" + condVal
	}
	
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}

	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('subTabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}

	xmlhttp.open("GET", "updategradecard.jsp?teacherId=" + teacherId			
			+ "&sectionId=" + sectionId + "&academicYearId=" + academicYearId
			+ "&semesterId=" + semesterId + "&subjectId=" + subjectId
			+ "&counter=" + counter	+ str, true);
	xmlhttp.send();
}

function showTheGradeCardListForThisParameterForEdit(teacherId, levelId, academicYearId, semesterId, subjectId) {
	 if (semesterId == "") {
		document.getElementById("slctsemester").style.borderColor = "red";
		document.getElementById("slctsemester").focus();
		return false;
	} else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("gradeCardListDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showthegradecardlistforthisparameterforedit.jsp?teacherId="
						+ teacherId + "&levelId=" + levelId + "&academicYearId="
						+ academicYearId + "&semesterId=" + semesterId
						+ "&subjectId=" + subjectId, true);	
		xmlhttp.send();
	}
}

function showListOfGradeCardsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showgradecardsparameterselectorbarfordelete.jsp",
					true);
	xmlhttp.send();
}


function showTheGradeCardListForThisParameterForDelete(teacherId, levelId, academicYearId, semesterId, subjectId) {
	if (semesterId == "") {
		document.getElementById("slctsemester").style.borderColor = "red";
		document.getElementById("slctsemester").focus();
		return false;
	} else if (academicYearId == "") {
		document.getElementById("slctacademicyear").style.borderColor = "red";
		document.getElementById("slctacademicyear").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("gradeCardListDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showthegradecardlistforthisparameterfordelete.jsp?teacherId="
				+ teacherId + "&levelId=" + levelId + "&academicYearId="
				+ academicYearId + "&semesterId=" + semesterId
				+ "&subjectId=" + subjectId, true);	
		xmlhttp.send();
	}
}

function deleteGradeCard(id) {
	if (window.confirm("Are you sure you want to delete this grade card")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletegradecard.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showListOfFieldOfStudiesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoffieldofstudiesfordelete.jsp", true);
	xmlhttp.send();
}

function contactSubMenu(){
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "contactNotifMenu.jsp", true);
	xmlhttp.send();
}

function passChanger(id,cpass,npass){
	////alert(id+" , "+cpass+" , "+npass);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("conf").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveChange.jsp?id="+id+
			"&cpass="+cpass+"&npass="+npass, true);
	xmlhttp.send();
}

function showEditContactForm(){
	document.getElementById('subTabDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofstudentsinsectionselectorbarforcontactedit.jsp",
			true);
	xmlhttp.send();
}

function showResetUsersAccount() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaccountsforreset.jsp", true);
	xmlhttp.send();
}

function showChangeUsername() {
	// //alert("leki");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showchangeusername.jsp", true);
	xmlhttp.send();
}

function showChangePassword() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showchangepassword.jsp", true);
	xmlhttp.send();
}

function changeUsername(currentUsername, newUsername, password) {
	if (currentUsername == "") {
		document.getElementById('txtcurrentusername').style.borderColor = "red";
		document.getElementById('usernameErrorDiv').innerHTML = "<p class='msg warning'>Enter the current username!</p>";
		document.getElementById('txtcurrentusername').focus();
		return false;
	} else if (newUsername == "") {
		document.getElementById('txtcurrentusername').style.borderColor = "green";
		document.getElementById('txtnewusername').style.borderColor = "red";
		document.getElementById('usernameErrorDiv').innerHTML = "<p class='msg warning'>Enter the new username!</p>";
		document.getElementById('txtnewusername').focus();
		return false;
	} else if (password == "") {
		document.getElementById('txtnewusername').style.borderColor = "green";
		document.getElementById('txtpassword').style.borderColor = "red";
		document.getElementById('usernameErrorDiv').innerHTML = "<p class='msg warning'>Enter the password!</p>";
		document.getElementById('txtpassword').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "changeusername.jsp?currentUsername="
				+ currentUsername + "&newUsername=" + newUsername
				+ "&password=" + password, true);
		xmlhttp.send();
	}
}

function changePassword(currentUsername, currentPassword, newPassword,
		confirmPassword) {
	if (currentUsername == "") {
		document.getElementById('txtcurrentusername').style.borderColor = "red";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>Enter the current username</p>";
		document.getElementById('txtcurrentusername').focus();
		return false;
	} else if (currentPassword == "") {
		document.getElementById('txtcurrentpassword').style.borderColor = "red";
		document.getElementById('txtcurrentusername').style.borderColor = "green";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>Enter the current password!</p>";
		document.getElementById('txtcurrentpassword').focus();
		return false;
	} else if (newPassword == "") {
		document.getElementById('txtcurrentpassword').style.borderColor = "green";
		document.getElementById('txtnewpassword').style.borderColor = "red";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>Enter the new password!</p>";
		document.getElementById('txtnewpassword').focus();
		return false;
	} else if (confirmPassword == "") {
		document.getElementById('txtnewpassword').style.borderColor = "green";
		document.getElementById('txtconfirmpassword').style.borderColor = "red";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>Enter the confirmation password!</p>";
		document.getElementById('txtconfirmpassword').focus();
		return false;
	} else if (newPassword != confirmPassword) {
		document.getElementById('txtnewpassword').style.borderColor = "red";
		document.getElementById('txtconfirmpassword').style.borderColor = "red";
		document.getElementById('passwordErrorDiv').innerHTML = "<p class='msg warning'>New and confirmation password are not identical!</p>";
		document.getElementById('txtnewpassword').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "changepassword.jsp?currentUsername="
				+ currentUsername + "&currentPassword=" + currentPassword
				+ "&newPassword=" + newPassword, true);
		xmlhttp.send();
	}
}

function showLeftMenuListForAdmissionType() {
	// //alert("here mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("leftMenuDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "admissiontypeleftmenulist.jsp", true);
	xmlhttp.send();
}

function showAddRegionForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddregionform.jsp", true);
	xmlhttp.send();
}

function showAddRemarkForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddremarkform.jsp", true);
	xmlhttp.send();
}

function showAddRegistrarServiceForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddregistrarserviceform.jsp", true);
	xmlhttp.send();
}

function showAddSponsorForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddsponsorform.jsp", true);
	xmlhttp.send();
}

function showAddUniversityRegistrarForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showadduniversityregistrarform.jsp", true);
	xmlhttp.send();
}

function showListOfSponsors() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsponsors.jsp", true);
	xmlhttp.send();
}

function showListOfUniversityRegistrars() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofuniversityregistrars.jsp", true);
	xmlhttp.send();
}

function showListOfUniversityRegistrarsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofuniversityregistrarsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfUniversityRegistrarsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofuniversityregistrarsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisUniversityRegistrar(id) {
	if (window
			.confirm("Are you sure you want to delete this university registrar official?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisuniversityregistrar.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showListOfSponsorsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsponsorsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfSponsorsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsponsorsfordelete.jsp", true);
	xmlhttp.send();
}

function showAddPriceInformationForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddpriceinformationform.jsp", true);
	xmlhttp.send();
}

function showAddProgramLevelForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddprogramlevelform.jsp", true);
	xmlhttp.send();
}

function saveAdmissionType(admissionTypeName) {
	if (admissionTypeName == "") {
		document.getElementById('admissionTypeErrorDiv').innerHTML = "<p class='msg warning'>Enter admission type name!</p>";
		document.getElementById('txtadmissiontypename').style.borderColor = "red";
		document.getElementById('txtadmissiontypename').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveadmissiontype.jsp?admissionTypeName="
			+ admissionTypeName, true);
	xmlhttp.send();
}

function saveFieldOfStudy(facultyId, fieldOfStudy) {
	// //alert(fieldOfStudy);
	if (fieldOfStudy == "") {
		document.getElementById('fieldOfStudyErrorDiv').innerHTML = "<p class='msg warning'>Enter field of study!</p>";
		document.getElementById('txtfieldofstudy').style.borderColor = "red";
		document.getElementById('txtfieldofstudy').focus();
		return false;
	} else if (facultyId == "") {
		document.getElementById('fieldOfStudyErrorDiv').innerHTML = "<p class='msg warning'>Select faculty!</p>";
		document.getElementById('txtfieldofstudy').style.borderColor = "red";
		document.getElementById('txtfieldofstudy').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savefieldofstudy.jsp?fieldOfStudy=" + fieldOfStudy
				+ "&facultyId=" + facultyId, true);
		xmlhttp.send();
	}
}

function saveSponsor(sponsorName, description) {
	if (sponsorName == "") {
		document.getElementById('sponsorErrorDiv').innerHTML = "<p class='msg warning'>Enter the sponsor name!</p>";
		document.getElementById('txtsponsorname').style.borderColor = "red";
		document.getElementById('txtsponsorname').focus();
		return false;
	} else if (description == "") {
		document.getElementById('txtsponsorname').style.borderColor = "green";
		document.getElementById('textareadescription').style.borderColor = "red";
		document.getElementById('sponsorErrorDiv').innerHTML = "<p class='msg warning'>Enter the description!</p>";
		document.getElementById('textareadescription').focus();
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "savesponsor.jsp?sponsorName=" + sponsorName
				+ "&description=" + description, true);
		xmlhttp.send();
	}
}

function saveProgramLevel(programLevelName) {
	if (programLevelName == "") {
		document.getElementById('programLevelErrorDiv').innerHTML = "<p class='msg warning'>Enter program level name!</p>";
		document.getElementById('txtprogramlevel').style.borderColor = "red";
		document.getElementById('txtprogramlevel').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveprogramlevel.jsp?programLevelName="
			+ programLevelName, true);
	xmlhttp.send();
}

function saveRegion(regionName) {
	if (regionName == "") {
		document.getElementById('regionErrorDiv').innerHTML = "<p class='msg warning'>Enter region name!</p>";
		document.getElementById('txtregionname').style.borderColor = "red";
		document.getElementById('txtregionname').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveregion.jsp?regionName=" + regionName, true);
	xmlhttp.send();
}

function saveRemark(remark) {
	if (remark == "") {
		document.getElementById('remarkErrorDiv').innerHTML = "<p class='msg warning'>Enter remark!</p>";
		document.getElementById('txtremark').style.borderColor = "red";
		document.getElementById('txtremark').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveremark.jsp?remark=" + remark, true);
	xmlhttp.send();
}

function savePriceInformation(serviceId, price, month, year) {
	if (serviceId == "") {
		document.getElementById('priceInformationErrorDiv').innerHTML = "<p class='msg warning'>Select the registrar service!</p>";
		document.getElementById('slctservice').style.borderColor = "red";
		document.getElementById('slctservice').focus();
		return false;
	}
	if (price == "") {
		document.getElementById('priceInformationErrorDiv').innerHTML = "<p class='msg warning'>Enter the price!</p>";
		document.getElementById('txtprice').style.borderColor = "red";
		document.getElementById('txtprice').focus();
		return false;
	}
	if (month == "") {
		document.getElementById('priceInformationErrorDiv').innerHTML = "<p class='msg warning'>Select the month!</p>";
		document.getElementById('slctmonth').style.borderColor = "red";
		document.getElementById('slctmonth').focus();
		return false;
	}
	if (year == "") {
		document.getElementById('priceInformationErrorDiv').innerHTML = "<p class='msg warning'>Enter the year!</p>";
		document.getElementById('txtyear').style.borderColor = "red";
		document.getElementById('txtyear').focus();
		return false;
	}

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savepriceinformation.jsp?serviceId=" + serviceId
			+ "&price=" + price + "&semester=" + semester + "&year=" + year,
			true);
	xmlhttp.send();
}

function saveRegistrarService(serviceName) {
	// //alert(serviceName);
	if (serviceName == "") {
		document.getElementById('registrarServiceErrorDiv').innerHTML = "<p class='msg warning'>Enter service name!</p>";
		document.getElementById('txtservicename').style.borderColor = "red";
		document.getElementById('txtservicename').focus();
		return false;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveregistrarservice.jsp?serviceName=" + serviceName,
			true);
	xmlhttp.send();
}

function showListOfAdmissionTypes() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissiontypes.jsp", true);
	xmlhttp.send();
}

function showListOfStudentRecords() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showdepartmentselectorbartoviewstudents.jsp", true);
	xmlhttp.send();
}

function sortStudentRecord(sortField, sortOrder) {
	if (sortField == "") {
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortorder').style.borderColor = "red";
		document.getElementById('slctsortorder').focus();
		return false;
	} else {
		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
				document.getElementById('sortTypeSpan').innerHTML = "<p class='msg info'>Student record sorted by <font color='red'>"
						+ sortField
						+ "</font> in <font color='red'>"
						+ sortOrder + "</font> order!</p>";
			}
		}
		xmlhttp.open("GET", "showsortedstudentrecord.jsp?sortField="
				+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function sortFacultyRecord(sortField, sortOrder) {
	if (sortField == "") {
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortorder').style.borderColor = "red";
		document.getElementById('slctsortorder').focus();
		return false;
	} else {
		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('sortTypeSpan').innerHTML = "<p class='msg info'>Faculty sorted by <font color='red'>"
						+ sortField
						+ "</font> in <font color='red'>"
						+ sortOrder + "</font> order!</p>";
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET", "showsortedfacultyrecord.jsp?sortField="
				+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function sortAcademicUnitRecord(sortField, sortOrder) {
	if (sortField == "") {
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortorder').style.borderColor = "red";
		document.getElementById('slctsortorder').focus();
		return false;
	} else {
		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('sortTypeSpan').innerHTML = "<p class='msg info'>Academic Unit/Department sorted by <font color='red'>"
						+ sortField
						+ "</font> in <font color='red'>"
						+ sortOrder + "</font> order!</p>";
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET", "showsortedacademicunitrecord.jsp?sortField="
				+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function verifiyOfficialTranscriptRequest(idNumber, firstName, fatherName,
		grandFatherName, graduationYear) {
	if (idNumber == "") {
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Enter the id number!</p>";
		document.getElementById('txtidnumber').style.borderColor = "red";
		document.getElementById('txtidnumber').focus();
		return false;
	} else if (firstName == "") {
		document.getElementById('txtidnumber').style.borderColor = "green";
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Enter the first name!</p>";
		document.getElementById('txtfirstname').style.borderColor = "red";
		document.getElementById('txtfirstname').focus();
		return false;
	} else if (fatherName == "") {
		document.getElementById('txtfirstname').style.borderColor = "green";
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Enter the father name!</p>";
		document.getElementById('txtfathername').style.borderColor = "red";
		document.getElementById('txtfathername').focus();
		return false;
	} else if (grandFatherName == "") {
		document.getElementById('txtfathername').style.borderColor = "green";
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Enter the grand father name!</p>";
		document.getElementById('txtgrandfathername').style.borderColor = "red";
		document.getElementById('txtgrandfathername').focus();
		return false;
	} else if (graduationYear == "") {
		document.getElementById('txtgrandfathername').style.borderColor = "green";
		document.getElementById('formErrorDiv').innerHTML = "<p class='msg warning'>Select the graduation year!</p>";
		document.getElementById('slctgraduationyear').style.borderColor = "red";
		document.getElementById('slctgraduationyear').focus();
		return false;
	} else {

		document.getElementById('ajaxLoaderSpan').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("verificationStatusDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET", "verifiyofficialtranscriptrequest.jsp?idNumber="
				+ idNumber + "&firstName=" + firstName + "&fatherName="
				+ fatherName + "&grandFatherName=" + grandFatherName
				+ "&graduationYear=" + graduationYear, true);
		xmlhttp.send();
	}
}

function showListOfStudentRecordsForEdit() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showdepartmentselectortoeditstudents.jsp", true);
	xmlhttp.send();
}

function showListOfStudentRecordsForDelete() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showdepartmentselectortodeletestudents.jsp", true);
	xmlhttp.send();
}

function showListOfIdentificationCode() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofidentificationcode.jsp", true);
	xmlhttp.send();
}

function showListOfStudentsFromThisFaculty() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("bestSortBar").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showfacultyselectorbar.jsp", true);
	xmlhttp.send();
}

function showListOfStudentsFromThisDepartment() {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showdepartmentselectorbar.jsp", true);
	xmlhttp.send();
}

function showDepartmentSelectorToGenerateDocument(doc) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			// document.getElementById('ajaxLoaderSpanTab').style.visibility="hidden";
		}
	}
	xmlhttp.open("GET", "showdepartmentselectorbartogeneratedocument.jsp?doc="
			+ doc, true);
	xmlhttp.send();
}

function showStudentRecordsFromThisFaculty(facultyId) {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
		}
	}
	xmlhttp.open("GET", "showstudentrecordsfromthisfaculty.jsp?facultyId="
			+ facultyId, true);
	xmlhttp.send();
}

function showStudentRecordsFromThisAcademicUnit(academicUnitId, graduationYear,
		admissionTypeId, programLevelId) {
	// //alert("academicUnitId: "+academicUnitId);
	if (academicUnitId == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "red";
		document.getElementById('slctchooseacademicunit').focus();
		return false;
	} else if (graduationYear == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "green";
		document.getElementById('slctchoosegraduationyear').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (admissionTypeId == "") {
		document.getElementById('slctchoosegraduationyear').style.borderColor = "green";
		document.getElementById('slctchooseadmissiontype').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (programLevelId == "") {
		document.getElementById('slctchooseadmissiontype').style.borderColor = "green";
		document.getElementById('slctchooseprogramlevel').style.borderColor = "red";
		document.getElementById('slctchooseprogramlevel').focus();
		return false;
	} else {

		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET",
				"showstudentrecordsfromthisdepartment.jsp?academicUnitId="
						+ academicUnitId + "&graduationYear=" + graduationYear
						+ "&admissionTypeId=" + admissionTypeId
						+ "&programLevelId=" + programLevelId, true);
		xmlhttp.send();
	}
}

function showStudentRecordsFromThisAcademicUnitToGenerateDocumentTemplate(
		academicUnitId, graduationYear, admissionTypeId, programLevelId, doc) {
	// //alert("hi mahder!");
	if (academicUnitId == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "red";
		document.getElementById('slctchooseacademicunit').focus();
		return false;
	} else if (graduationYear == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "green";
		document.getElementById('slctchoosegraduationyear').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (admissionTypeId == "") {
		document.getElementById('slctchoosegraduationyear').style.borderColor = "green";
		document.getElementById('slctchooseadmissiontype').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (programLevelId == "") {
		document.getElementById('slctchooseadmissiontype').style.borderColor = "green";
		document.getElementById('slctchooseprogramlevel').style.borderColor = "red";
		document.getElementById('slctchooseprogramlevel').focus();
		return false;
	} else {
		// document.getElementById('ajaxLoaderSpanTab').style.visibility="visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("studentListDiv").innerHTML = xmlhttp.responseText;
				// document.getElementById('ajaxLoaderSpanTab').style.visibility="hidden";
			}
		}
		xmlhttp
				.open(
						"GET",
						"showstudentrecordsfromthisdepartmenttogeneratedocumenttemplate.jsp?academicUnitId="
								+ academicUnitId
								+ "&graduationYear="
								+ graduationYear
								+ "&admissionTypeId="
								+ admissionTypeId
								+ "&programLevelId="
								+ programLevelId + "&doc=" + doc, true);
		xmlhttp.send();
	}
}

function showListOfIdentificationCodeFromThisAcademicUnit(academicUnitId,
		graduationYear, admissionTypeId, programLevelId) {
	if (academicUnitId == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "red";
		document.getElementById('slctchooseacademicunit').focus();
		return false;
	} else if (graduationYear == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "green";
		document.getElementById('slctchoosegraduationyear').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (admissionTypeId == "") {
		document.getElementById('slctchoosegraduationyear').style.borderColor = "green";
		document.getElementById('slctchooseadmissiontype').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (programLevelId == "") {
		document.getElementById('slctchooseadmissiontype').style.borderColor = "green";
		document.getElementById('slctchooseprogramlevel').style.borderColor = "red";
		document.getElementById('slctchooseprogramlevel').focus();
		return false;
	} else {

		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET",
				"showlistofidentificationcodefromthisacademicunit.jsp?academicUnitId="
						+ academicUnitId + "&graduationYear=" + graduationYear
						+ "&admissionTypeId=" + admissionTypeId
						+ "&programLevelId=" + programLevelId, true);
		xmlhttp.send();
	}
}

function showStudentRecordsFromThisAcademicUnitToViewOnly(academicUnitId,
		graduationYear, admissionTypeId, programLevelId, sortField, sortOrder) {
	if (academicUnitId == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "red";
		document.getElementById('slctchooseacademicunit').focus();
		return false;
	} else if (graduationYear == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "green";
		document.getElementById('slctchoosegraduationyear').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (admissionTypeId == "") {
		document.getElementById('slctchoosegraduationyear').style.borderColor = "green";
		document.getElementById('slctchooseadmissiontype').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (programLevelId == "") {
		document.getElementById('slctchooseadmissiontype').style.borderColor = "green";
		document.getElementById('slctchooseprogramlevel').style.borderColor = "red";
		document.getElementById('slctchooseprogramlevel').focus();
		return false;
	} else if (sortField == "") {
		document.getElementById('slctchooseprogramlevel').style.borderColor = "green";
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortfield').style.borderColor = "green";
		document.getElementById('slctorder').style.borderColor = "red";
		document.getElementById('slctorder').focus();
		return false;
	} else {

		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET",
				"showstudentrecordsfromthisdepartmenttoviewonly.jsp?academicUnitId="
						+ academicUnitId + "&graduationYear=" + graduationYear
						+ "&admissionTypeId=" + admissionTypeId
						+ "&programLevelId=" + programLevelId + "&sortField="
						+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function showStudentRecordsFromThisAcademicUnitToEditOnly(academicUnitId,
		graduationYear, admissionTypeId, programLevelId, sortField, sortOrder) {
	if (academicUnitId == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "red";
		document.getElementById('slctchooseacademicunit').focus();
		return false;
	} else if (graduationYear == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "green";
		document.getElementById('slctchoosegraduationyear').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (admissionTypeId == "") {
		document.getElementById('slctchoosegraduationyear').style.borderColor = "green";
		document.getElementById('slctchooseadmissiontype').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (programLevelId == "") {
		document.getElementById('slctchooseadmissiontype').style.borderColor = "green";
		document.getElementById('slctchooseprogramlevel').style.borderColor = "red";
		document.getElementById('slctchooseprogramlevel').focus();
		return false;
	} else if (sortField == "") {
		document.getElementById('slctchooseprogramlevel').style.borderColor = "green";
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortfield').style.borderColor = "green";
		document.getElementById('slctorder').style.borderColor = "red";
		document.getElementById('slctorder').focus();
		return false;
	} else {

		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET",
				"showstudentrecordsfromthisdepartmenttoeditonly.jsp?academicUnitId="
						+ academicUnitId + "&graduationYear=" + graduationYear
						+ "&admissionTypeId=" + admissionTypeId
						+ "&programLevelId=" + programLevelId + "&sortField="
						+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function showStudentRecordsFromThisAcademicUnitToDeleteOnly(academicUnitId,
		graduationYear, admissionTypeId, programLevelId, sortOrder, sortField) {
	if (academicUnitId == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "red";
		document.getElementById('slctchooseacademicunit').focus();
		return false;
	} else if (graduationYear == "") {
		document.getElementById('slctchooseacademicunit').style.borderColor = "green";
		document.getElementById('slctchoosegraduationyear').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (admissionTypeId == "") {
		document.getElementById('slctchoosegraduationyear').style.borderColor = "green";
		document.getElementById('slctchooseadmissiontype').style.borderColor = "red";
		document.getElementById('slctchoosegraduationyear').focus();
		return false;
	} else if (programLevelId == "") {
		document.getElementById('slctchooseadmissiontype').style.borderColor = "green";
		document.getElementById('slctchooseprogramlevel').style.borderColor = "red";
		document.getElementById('slctchooseprogramlevel').focus();
		return false;
	} else if (sortField == "") {
		document.getElementById('slctchooseprogramlevel').style.borderColor = "green";
		document.getElementById('slctsortfield').style.borderColor = "red";
		document.getElementById('slctsortfield').focus();
		return false;
	} else if (sortOrder == "") {
		document.getElementById('slctsortfield').style.borderColor = "green";
		document.getElementById('slctorder').style.borderColor = "red";
		document.getElementById('slctorder').focus();
		return false;
	} else {
		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET",
				"showstudentrecordsfromthisdepartmenttodeleteonly.jsp?academicUnitId="
						+ academicUnitId + "&graduationYear=" + graduationYear
						+ "&admissionTypeId=" + admissionTypeId
						+ "&programLevelId=" + programLevelId + "&sortField="
						+ sortField + "&sortOrder=" + sortOrder, true);
		xmlhttp.send();
	}
}

function deleteThisStudentRecord(studentRecordId) {
	// //alert(studentRecordId);
	if (window.confirm('Are you sure you want to delete this student record?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisstudentrecord.jsp?studentRecordId="
				+ studentRecordId, true);
		xmlhttp.send();
	}
}

function showListOfRegions() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregions.jsp", true);
	xmlhttp.send();
}

function showListOfRemarks() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofremarks.jsp", true);
	xmlhttp.send();
}

function showListOfRegistrarServices() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregistrarservices.jsp", true);
	xmlhttp.send();
}

function showListOfPriceInformation() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpriceinformation.jsp", true);
	xmlhttp.send();
}

function showListOfProgramLevels() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofprogramlevels.jsp", true);
	xmlhttp.send();
}

function showListOfProgramLevelsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofprogramlevelsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfRegionsForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregionsforedit.jsp", true);
	xmlhttp.send();
}

function showListOfRemarksForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofremarksforedit.jsp", true);
	xmlhttp.send();
}

function showListOfRegistrarServicesForEdit() {
	// //alert("for edit service");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregistrarservicesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfPriceInformationForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpriceinformationforedit.jsp", true);
	xmlhttp.send();
}

function showListOfPriceInformationForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofpriceinformationfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfRegistrarServicesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregistrarservicesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfAdmissionTypesForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissiontypesforedit.jsp", true);
	xmlhttp.send();
}

function showListOfAdmissionTypesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissiontypesfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfProgramLevelsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofprogramlevelsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfRegionsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofregionsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfRemarksForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofremarksfordelete.jsp", true);
	xmlhttp.send();
}

function showEditFieldsOfAdmissionType(admissionTypeId) {
	// //alert(admissionTypeId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("admissionTypeEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofadmissiontype.jsp?admissionTypeId="
			+ admissionTypeId, true);
	xmlhttp.send();
}

function showEditFieldsOfProgramLevel(programLevelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("programLevelEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofprogramlevel.jsp?programLevelId="
			+ programLevelId, true);
	xmlhttp.send();
}

function showEditFieldsOfFieldOfStudy(fieldOfStudyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("fieldOfStudyEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsoffieldofstudy.jsp?fieldOfStudyId="
			+ fieldOfStudyId, true);
	xmlhttp.send();
}

function changeFacultyOfFieldOfStudy(newFacultyId) {
	document.getElementById('hiddenfacultyid').value = newFacultyId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditfaculty").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changefacultyoffieldofstudy.jsp?facultyId="
			+ newFacultyId, true);
	xmlhttp.send();
}

function showEditFieldsOfSponsor(sponsorId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sponsorEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofsponsor.jsp?sponsorId=" + sponsorId,
			true);
	xmlhttp.send();
}

function showEditFieldsOfUniversityRegistrar(registrarId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("universityRegistrarEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofuniversityregistrar.jsp?id="
			+ registrarId, true);
	xmlhttp.send();
}

function changeTheAcademicRank(txt, val) {
	document.getElementById(txt).value = val;
}

function showEditFieldsOfStudentRecord(studentRecordId) {
	uniqueStudentRecordEditDiv = "studentRecordEditDiv" + studentRecordId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordEditDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofstudentrecord.jsp?studentRecordId="
			+ studentRecordId, true);
	xmlhttp.send();
}

function showDeleteFieldsOfStudentRecord(studentRecordId) {
	uniqueStudentRecordEditDiv = "studentRecordEditDiv" + studentRecordId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordEditDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showdeletefieldsofstudentrecord.jsp?studentRecordId="
			+ studentRecordId, true);
	xmlhttp.send();
}

function showConfirmDeleteThisStudent(studentRecordId) {
	uniqueStudentRecordEditDiv = "studentRecordEditDiv" + studentRecordId;
	if (window.confirm("Are you sure you want to delete this student record?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(uniqueStudentRecordEditDiv).innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisstudentrecord.jsp?studentRecordId="
				+ studentRecordId, true);
		xmlhttp.send();
	}
}

function showStudentRecordDetailsRightHere(studentRecordId) {
	uniqueStudentRecordEditDiv = "studentRecordEditDiv" + studentRecordId;
	// //alert(uniqueStudentRecordEditDiv);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordEditDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showviewdetailsofstudentrecord.jsp?studentRecordId="
			+ studentRecordId, true);
	xmlhttp.send();
}

function showDocumentTemplateRightHere(studentRecordId, doc) {
	uniqueStudentRecordEditDiv = "studentRecordEditDiv" + studentRecordId;
	// //alert(uniqueStudentRecordEditDiv);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordEditDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showdocumenttemplaterighthere.jsp?studentRecordId="
			+ studentRecordId + "&doc=" + doc, true);
	xmlhttp.send();
}

function showStudentRecordDetail(studentRecordId) {
	uniqueStudentRecordViewDetailDiv = "studentRecordViewDetailDiv"
			+ studentRecordId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showviewdetailsofstudentrecord.jsp?studentRecordId="
			+ studentRecordId, true);
	xmlhttp.send();
}

function checkStudentRecordDetailById(studIdNumber) {
	// //alert(studIdNumber);
	uniqueStudentRecordViewDetailDiv = "studentRecordViewDetailDiv"
			+ studIdNumber;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "checkstudentrecorddetailbyid.jsp?studIdNumber="
			+ studIdNumber, true);
	xmlhttp.send();
}

function showListOfAttachments(oId) {	
	uniqueStudentRecordViewDetailDiv = "attDiv" + oId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofattachments.jsp?oId=" + oId, true);
	xmlhttp.send();
}

function showAddRemarkNote(id) {	
	uniqueStudentRecordViewDetailDiv = "remarkDiv" + id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showaddremarknote.jsp?id=" + id, true);
	xmlhttp.send();
}

function saveRemarkNote(id, theNote) {	
	uniqueStudentRecordViewDetailDiv = "remarkDiv" + id;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueStudentRecordViewDetailDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveremarknote.jsp?id=" + id + "&theNote=" + theNote,
			true);
	xmlhttp.send();
}

function showEditFieldsOfRegion(regionId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("regionEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofregion.jsp?regionId=" + regionId,
					true);
	xmlhttp.send();
}

function showEditFieldsOfRemark(remarkId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("remarkEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showeditfieldsofremark.jsp?remarkId=" + remarkId,
					true);
	xmlhttp.send();
}

function showEditFieldsOfRegistrarService(serviceId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("registrarServiceEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofregistrarservice.jsp?serviceId="
			+ serviceId, true);
	xmlhttp.send();
}

function showEditFieldsOfPriceInformation(priceLookupId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("priceInformationEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofpriceinformation.jsp?priceLookupId="
			+ priceLookupId, true);
	xmlhttp.send();
}

function updateAdmissionType(admissionTypeId, admissionTypeName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "updateadmissiontype.jsp?admissionTypeId="
					+ admissionTypeId + "&admissionTypeName="
					+ admissionTypeName, true);
	xmlhttp.send();
}

function updateProgramLevel(programLevelId, programLevelName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateprogramlevel.jsp?programLevelId="
			+ programLevelId + "&programLevelName=" + programLevelName, true);
	xmlhttp.send();
}

function updateFieldOfStudy(fieldOfStudyId, fieldOfStudy, facultyId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatefieldofstudy.jsp?fieldOfStudyId="
			+ fieldOfStudyId + "&fieldOfStudy=" + fieldOfStudy + "&facultyId="
			+ facultyId, true);
	xmlhttp.send();
}

function updateSponsor(sponsorId, sponsorName, description) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatesponsor.jsp?sponsorId=" + sponsorId
			+ "&sponsorName=" + sponsorName + "&description=" + description,
			true);
	xmlhttp.send();
}

function updateRegion(regionId, regionName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateregion.jsp?regionId=" + regionId
			+ "&regionName=" + regionName, true);
	xmlhttp.send();
}

function updateRemark(remarkId, remarkText) {
	// //alert(remarkId+":"+remarkText);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateremark.jsp?remarkId=" + remarkId
			+ "&remarkText=" + remarkText, true);
	xmlhttp.send();
}

function updateRegistrarService(serviceId, serviceName) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateregistrarservice.jsp?serviceId=" + serviceId
			+ "&serviceName=" + serviceName, true);
	xmlhttp.send();
}

function updatePriceInformation(priceInformationId, serviceId, price, month,
		year) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatepriceinformation.jsp?priceId="
			+ priceInformationId + "&serviceId=" + serviceId + "&price="
			+ price + "&month=" + month + "&year=" + year, true);
	xmlhttp.send();
}

function deleteThisAdmissionType(admissionTypeId) {
	if (window.confirm('Are you sure you want to delete this admission type?')) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisadmissiontype.jsp?admissionTypeId="
				+ admissionTypeId, true);
		xmlhttp.send();
	}
}

function validateThisUser(username, password) {
	// //alert(username+":"+password);
	if (username == "") {
		document.getElementById('txtusername').style.borderColor = "red";
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Please enter the username!</p>";
		document.getElementById('txtusername').focus();
		return false;
	} else if (password == "") {
		document.getElementById('txtusername').style.borderColor = "green";
		document.getElementById('txtpassword').style.borderColor = "red";
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Please enter the password!</p>";
		document.getElementById('txtpassword').focus();
		return false;
	} else {
		// username and password not blank
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlhttp.open("POST", "validateuser.jsp", true);
		xmlhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		var parameters = "username=" + username + "&password=" + password;
		xmlhttp.send(parameters);
	}
}

function fieldChanger(id, newValue) {
	document.getElementById(id).value = newValue;
}

function changeProgramLevelValue(txtId, hiddenId, newValue) {
	if (newValue == "")
		return false;
	document.getElementById(hiddenId).value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(txtId).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeprogramlevelvalue.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function changeAcademicUnitValue(txtId, hiddenId, newValue) {
	// //alert(txtId+":"+hiddenId+":"+newValue);
	if (newValue == "")
		return false;
	document.getElementById(hiddenId).value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(txtId).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeacademicunitvalue.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function changeFieldOfStudy(txtId, hiddenId, newValue) {
	if (newValue == "")
		return false;
	document.getElementById(hiddenId).value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(txtId).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changefieldofstudy.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function changeAdmissionTypeValue(txtId, hiddenId, newValue) {
	if (newValue == "")
		return false;
	document.getElementById(hiddenId).value = newValue;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(txtId).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changeadmissiontypevalue.jsp?id=" + newValue, true);
	xmlhttp.send();
}

function populateStudentRecordData(recId) {
	// //alert(recId);
	document.getElementById('menuPopUp').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document
					.getElementById("showStudentRecordDetailMediumOfInstructionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "populatestudentrecorddata.jsp?recId=" + recId, true);
	xmlhttp.send();
}

function removePopupMenu() {
	document.getElementById('popupTable').style.visibility = "hidden";
}

function refereshIssueServiceCount() {
	// //////////////
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlp.onreadystatechange = function() {
		if (xmlp.readyState == 4 && xmlp.status == 200) {
			document.getElementById("issueServiceDiv").innerHTML = xmlp.responseText;
			document.getElementById('ajaxLoaderSpan').style.visibility = "hidden";
		}
	}
	xmlp.open("GET", "refreshissueservicecount.jsp", true);
	xmlp.send();
}

function showResetFormForThisAccount(accountId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("accountResetDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showresetformforthisaccount.jsp?accountId="
			+ accountId, true);
	xmlhttp.send();
}

function resetThisAccount(accountId, resetedUsername, resetedPassword) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "resetthisaccount.jsp?accountId=" + accountId
			+ "&resetedUsername=" + resetedUsername + "&resetedPassword="
			+ resetedPassword, true);
	xmlhttp.send();
}

function changeMonthValue(txtId, newValue) {
	document.getElementById(txtId).value = newValue;
}

function isLoginFormBlank() {
	if (document.getElementById('txtusername').value == "") {
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Enter the username!</p>";
		document.getElementById('txtusername').style.borderColor = "red";
		document.getElementById('txtusername').focus();
		return false;
	} else if (document.getElementById('txtpassword').value == "") {
		document.getElementById('loginErrorDiv').innerHTML = "<p class='msg warning'>Enter the password!</p>";
		document.getElementById('txtpassword').style.borderColor = "red";
		document.getElementById('txtpassword').focus();
		return false;
	} else
		return true;

}

function insertNewSiblingsGridRow(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDFirstName = document.createElement('td');
	var newTDMiddleName = document.createElement('td');
	var newTDLastName = document.createElement('td');
	var newTDRelation = document.createElement('td');

	// now comes the naming of the tds for each row
	var newFirstName = "txtsiblingfirstname" + newRowId;
	var newMiddleName = "txtsiblingmiddlename" + newRowId;
	var newLastName = "txtsiblinglastname" + newRowId;
	var newRelation = "slctsiblingrelation" + newRowId;

	var firstName = "<input type='text' name='" + newFirstName + "' id='"
			+ newFirstName + "' size='40'/>";
	var middleName = "<input type='text' name='" + newMiddleName + "' id='"
			+ newMiddleName + "' size='40'/>";
	var lastName = "<input type='text' name='" + newLastName + "' id='"
			+ newLastName + "' size='40'/>";
	var relation = "<select name='"
			+ newRelation
			+ "' id='"
			+ newRelation
			+ "'><option value='' selected='selected'>--Select--</option><option value='Brother'>Brother</option><option value='Sister'>Sister</option></select>";

	newTDFirstName.innerHTML = firstName;
	newTDMiddleName.innerHTML = middleName;
	newTDLastName.innerHTML = lastName;
	newTDRelation.innerHTML = relation;

	newTR.appendChild(newTDFirstName);
	newTR.appendChild(newTDMiddleName);
	newTR.appendChild(newTDLastName);
	newTR.appendChild(newTDRelation);

	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function insertNewGridRow(grid) {
	var newRowId = grid.rows.length;
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDNameOfSchool = document.createElement('td');
	var newTDTypeOfSchool = document.createElement('td');
	var newTDYears = document.createElement('td');
	var newTDClasses = document.createElement('td');
	var newTDLanguageUsed = document.createElement('td');

	// now comes the naming of the tds for each row
	var newNameOfSchool = "txtnameofschool" + newRowId;
	var newTypeOfSchool = "txttypeofschool" + newRowId;
	var newYears = "txtyears" + newRowId;
	var newClasses = "txtclasses" + newRowId;
	var newLanguageUsed = "txtlanguageused" + newRowId;

	var nameOfSchool = "<input type='text' name='" + newNameOfSchool + "' id='"
			+ newNameOfSchool + "' size='40'/>";
	var typeOfSchool = "<input type='text' name='" + newTypeOfSchool + "' id='"
			+ newTypeOfSchool + "' />";
	var years = "<input type='text' name='" + newYears + "' id='" + newYears
			+ "' />";
	var classes = "<input type='text' name='" + newClasses + "' id='"
			+ newClasses + "' />";
	var languageUsed = "<input type='text' name='" + newLanguageUsed + "' id='"
			+ newLanguageUsed + "' />";

	newTDNameOfSchool.innerHTML = nameOfSchool;
	newTDTypeOfSchool.innerHTML = typeOfSchool;
	newTDYears.innerHTML = years;
	newTDClasses.innerHTML = classes;
	newTDLanguageUsed.innerHTML = languageUsed;

	newTR.appendChild(newTDNameOfSchool);
	newTR.appendChild(newTDTypeOfSchool);
	newTR.appendChild(newTDYears);
	newTR.appendChild(newTDClasses);
	newTR.appendChild(newTDLanguageUsed);

	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function removeTableRow(table) {
	var rowCount = table.rows.length;
	var computedRowVal = rowCount - 1;
	if (computedRowVal > 1)
		table.deleteRow(computedRowVal);
}

function selectAllCheckBoxesStudentClassProgress(totalNumStud) {
	var chkStud = "";
	var controlName = "";
	var studentId = "";
	for (i = 1; i <= totalNumStud; i++) {
		controlName = "hiddenStudentId" + i;
		studentId = document.getElementById(controlName).value;
		chkStud = "chkstud" + studentId;
		document.getElementById(chkStud).checked = true;
	}
}

function disselectAllCheckBoxesStudentClassProgress(totalNumStud) {
	var chkStud = "";
	var controlName = "";
	var studentId = "";
	for (i = 1; i <= totalNumStud; i++) {
		controlName = "hiddenStudentId" + i;
		studentId = document.getElementById(controlName).value;
		chkStud = "chkstud" + studentId;
		document.getElementById(chkStud).checked = false;
	}
}

function changeLevelsOfAllSelectedStudents(numberOfStudent, newLevelId) {
	// //alert(numberOfStudent+":"+newLevelId);
	if (newLevelId == "") {
		document.getElementById("errorDiv").innerHTML = "Please select!";
		document.getElementById("slctlevel").style.borderColor = "red";
		document.getElementById("slctlevel").focus();
		return false;
	} else {
		document.getElementById("slctlevel").style.borderColor = "green";
		var chkStud = "";
		var controlName = "";
		var studentId = "";

		for (i = 1; i <= numberOfStudent; i++) {
			var studentSelected = false;
			controlName = "hiddenStudentId" + i;
			studentId = document.getElementById(controlName).value;
			chkStud = "chkstud" + studentId;
			if (document.getElementById(chkStud).checked)
				studentSelected = true;
			if (true)
				xmlhttp.open("GET", "updatestudentlevel.jsp?studentId="
						+ studentId + "&studentSelected=" + studentSelected
						+ "&newLevelId=" + newLevelId, true);
			xmlhttp.send();
		}
	}
}

function showChangeSectionSelectorForThisStudent(studentId) {
	var divId = "changeSectionDiv" + studentId
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showchangesectionselectorforthisstudent.jsp?studentId="
					+ studentId, true);
	xmlhttp.send();
}

function changeTheSectionOfThisStudent(studentId, newSectionId) {
	var divId = "changeSectionDiv" + studentId;
	var controlName = "slctnewsection" + studentId;
	if (newSectionId == "") {
		//alert("Please select the new section!");
		document.getElementById(controlName).style.borderColor = "red";
		document.getElementById(controlName).focus;
		return false;
	} else {
		document.getElementById(controlName).style.borderColor = "green";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(divId).innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "changethesectionofthisstudent.jsp?studentId="
				+ studentId + "&newSectionId=" + newSectionId, true);
		xmlhttp.send();
	}
}

function showListOfStudentsFromThisLevelForMaintainingClassProgressInformation(
		levelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("studentListClassProgressDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open(
					"GET",
					"showlistofstudentsfromthislevelformaintainingclassprogressinformation.jsp?levelId="
							+ levelId, true);
	xmlhttp.send();
}

function showAllTheSectionsOfThisLevel(levelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthesectionsofthislevel.jsp?levelId=" + levelId,
			true);
	xmlhttp.send();
}
function showAllTheSectionsOfThisLevelFrom(levelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDivFrom").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthesectionsofthislevel.jsp?levelId=" + levelId,
			true);
	xmlhttp.send();
}
function showAllTheSectionsOfThisLevelTo(levelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDivTo").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthesectionsofthislevel.jsp?levelId=" + levelId,
			true);
	xmlhttp.send();
}

function showAllLevelSections(levelId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("secDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthesections.jsp?levelId=" + levelId, true);
	xmlhttp.send();
}

function showAllTeachesLevelAndSubject(teacher_id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
			document.getElementById("subjectDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthelevelsandsubjectofthisteacher.jsp?teacherId="
			+ teacher_id, true);
	xmlhttp.send();
}

function showAllTeachesLevel(teacher_id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
			document.getElementById("levelToDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthelevelsofthisteacher.jsp?teacherId="
			+ teacher_id, true);
	xmlhttp.send();
}
function showAllTheSectionsOfThisTeacher(teacher_id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthesectionsofthisteacher.jsp?teacherId="
			+ teacher_id, true);
	xmlhttp.send();
}
function showAllTeachesLevelFrom(teacher_id) {
	
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelFromDiv").innerHTML = xmlhttp.responseText;
			showAllTeachesLevelTo(teacher_id);
		}
	}
	xmlhttp.open("GET", "showallthelevelsofthisteacherfrom.jsp?teacherId="
			+ teacher_id, true);
	xmlhttp.send();
	
	
}
function showAllTeachesLevelTo(teacher_id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelToDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthelevelsofthisteacherto.jsp?teacherId="
			+ teacher_id, true);
	xmlhttp.send();
}
function showAllSupervisorsLevelOrSection(supervisorId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthelevelsorsectionofthissupervisor.jsp?supervisorId="
			+ supervisorId, true);
	xmlhttp.send();
}
function showInTakesStudent(level) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("studDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showallthestudentsofthislevel.jsp?levelId=" + level,
			true);
	xmlhttp.send();
}
function showlistofstudentssubjectsforteaches(level, subject) {
	if (level == "") {
		document.getElementById("slctlevel").style.borderColor = "red";
		document.getElementById("slctlevel").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			////alert("xmlhttp.readyState= "+xmlhttp.readyState+"    xmlhttp.status= "+xmlhttp.status);
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				////alert("westt 3 "+level);
				document.getElementById("takenSubjectDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showlistofstudentsandsubjectsforteaches.jsp?levelId=" + level + "&subject=" + subject, true);			
		xmlhttp.send();
	}
}
function selectAllCheckBoxes(totalNumFun) {
	canReadChk = "";
	canWriteChk = "";
	canUpdateChk = "";
	canDeleteChk = "";

	hiddenRoleId = "";
	hiddenRoleIdVal = "";

	for (i = 1; i <= totalNumFun; i++) {
		hiddenRoleId = "hiddenroleid" + i;
		hiddenRoleIdVal = document.getElementById(hiddenRoleId).value;
		canReadChk = "chkcanread" + hiddenRoleIdVal;
		canWriteChk = "chkcanwrite" + hiddenRoleIdVal;
		canUpdateChk = "chkcanupdate" + hiddenRoleIdVal;
		canDeleteChk = "chkcandelete" + hiddenRoleIdVal;
		// //alert(canReadChk);
		document.getElementById(canReadChk).checked = true;
		document.getElementById(canWriteChk).checked = true;
		document.getElementById(canUpdateChk).checked = true;
		document.getElementById(canDeleteChk).checked = true;
	}
}

function disselectAllCheckBoxes(totalNumFun) {
	// //alert(totalNumFun);
	canReadChk = "";
	canWriteChk = "";
	canUpdateChk = "";
	canDeleteChk = "";

	hiddenRoleId = "";
	hiddenRoleIdVal = "";

	for (i = 1; i <= totalNumFun; i++) {
		hiddenRoleId = "hiddenroleid" + i;
		hiddenRoleIdVal = document.getElementById(hiddenRoleId).value;
		canReadChk = "chkcanread" + hiddenRoleIdVal;
		canWriteChk = "chkcanwrite" + hiddenRoleIdVal;
		canUpdateChk = "chkcanupdate" + hiddenRoleIdVal;
		canDeleteChk = "chkcandelete" + hiddenRoleIdVal;
		// //alert(canReadChk);
		document.getElementById(canReadChk).checked = false;
		document.getElementById(canWriteChk).checked = false;
		document.getElementById(canUpdateChk).checked = false;
		document.getElementById(canDeleteChk).checked = false;
	}
}

function updateAllRoles(totalNumFun, accountId) {
	canReadChk = "";
	canWriteChk = "";
	canUpdateChk = "";
	canDeleteChk = "";
	hasReadAccess = false;
	hasWriteAccess = false;
	hasUpdateAccess = false;
	hasDeleteAccess = false;
	hiddenRoleId = "";
	hiddenRolIdVal = "";
	hiddenFunctionalityId = "";
	hiddenFunctionalityIdVal = "";

	// now i need to loop tru each check boxes....read thier value and save it
	// to the database...
	for (i = 1; i <= totalNumFun; i++) {
		hiddenRoleId = "hiddenroleid" + i;
		hiddenFunctionalityId = "hiddenfunctionalityid" + i;
		hiddenRoleIdVal = document.getElementById(hiddenRoleId).value;
		hiddenFunctionalityIdVal = document.getElementById(hiddenRoleId).value;

		canReadChk = "chkcanread" + hiddenRoleIdVal;
		canWriteChk = "chkcanwrite" + hiddenRoleIdVal;
		canUpdateChk = "chkcanupdate" + hiddenRoleIdVal;
		canDeleteChk = "chkcandelete" + hiddenRoleIdVal;

		if (document.getElementById(canReadChk).checked == true)
			hasReadAccess = true;
		if (document.getElementById(canWriteChk).checked == true)
			hasWriteAccess = true;
		if (document.getElementById(canUpdateChk).checked == true)
			hasUpdateAccess = true;
		if (document.getElementById(canDeleteChk).checked == true)
			hasDeleteAccess = true;
		// /////////now update the role value in the database...
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				// document.getElementById("content").innerHTML =
				// xmlhttp.responseText;
				// document.getElementById("roleDetailForEmployee").innerHTML =
				// "<strong><font color='green'>Role updated
				// successfully!</font></strong>";
			}
		}
		xmlhttp
				.open("GET", "updaterole.jsp?roleId=" + hiddenRoleIdVal
						+ "&accountId=" + accountId + "&functionalityId="
						+ hiddenFunctionalityIdVal + "&hasReadAccess="
						+ hasReadAccess + "&hasWriteAccess=" + hasWriteAccess
						+ "&hasUpdateAccess=" + hasUpdateAccess
						+ "&hasDeleteAccess=" + hasDeleteAccess, true);
		xmlhttp.send();
		hasReadAccess = false;
		hasWriteAccess = false;
		hasUpdateAccess = false;
		hasDeleteAccess = false;
	}// end for loop

	document.getElementById("content").innerHTML = xmlhttp.responseText;
	document.getElementById("roleDetailForEmployee").innerHTML = "<strong><font color='green'>Role updated successfully!</font></strong>";
}

function saveStudentApplication(studentFirstName, studentMiddleName,
		studentLastName, sex, dateOfBirth, passportNumber,
		studentCountryOfIssue, studentNationality, studentReligion,
		countryOfBirth, levelId, educationGrid, chkDifficulityReading,
		chkDifficulityMathematics, chkDifficulityLanguage,
		chkDifficulityBehavioral, chkGiftedReading, chkGiftedMathematics,
		chkGiftedLanguage, others, medication, fatherFirstName,
		fatherMiddleName, fatherLastName, fatherPassportNumber,
		fatherCountryOfIssue, fatherReligion, fatherOccupation,
		fatherPlaceOfWork, fatherNameOfOrganization, fatherOfficeTelephone,
		fatherFax, fatherPobox, fatherEmail, fatherHomeTelephone, fatherMobile,
		fatherHomePobox, motherFirstName, motherMiddleName, motherLastName,
		motherPassportNumber, motherCountryOfIssue, motherReligion,
		motherOccupation, motherPlaceOfWork, motherNameOfOrganization,
		motherOfficeTelephone, motherFax, motherPobox, motherEmail,
		motherHomeTelephone, motherMobile, motherHomePobox,
		languageSpokenAtHome, otherLanguageSpoken, emergencyContactFullName,
		emergencyRelation, emergencyOfficeTelephone, emergencyHomeTelephone,
		emergencyMobile, personPayingFees, expectedDateOfArrival, siblingGrid,
		formType, fatherIsStaff, motherIsStaff) {
	if (passportNumber == "") {
		passportNumber = "no passport";
	}
	if (studentCountryOfIssue == "") {
		studentCountryOfIssue = "passport not issued";
	}
	if (others == "") {
		others = "no";
	}
	if (medication == "") {
		medication == "no";
	}
	if (fatherPassportNumber == "") {
		fatherPassportNumber = "no passport";
	}
	if (fatherCountryOfIssue == "") {
		fatherCountryOfIssue = "no passport issued";
	}
	if (motherPassportNumber == "") {
		motherPassportNumber = "no passport";
	}
	if (motherCountryOfIssue == "") {
		motherCountryOfIssue = "no passport issued";
	}
	if (languageSpokenAtHome == "") {
		languageSpokenAtHome = "no";
	}
	if (otherLanguageSpoken == "") {
		otherLanguageSpoken = "no";
	}
	if (studentFirstName == "") {
		document.getElementById("txtstudentfirstname").style.borderColor = "red";
		document.getElementById("txtstudentfirstname").focus();
		return false;
	} 
//	else if (studentMiddleName == "") {
//		document.getElementById("txtstudentmiddlename").style.borderColor = "red";
//		document.getElementById("txtstudentmiddlename").focus();
//		return false;
//	}
	else if (studentLastName == "") {
		document.getElementById("txtstudentlastname").style.borderColor = "red";
		document.getElementById("txtstudentlastname").focus();
		return false;
	} else if (sex == "") {
		document.getElementById("slctsex").style.borderColor = "red";
		document.getElementById("slctsex").focus();
		return false;
	} else if (dateOfBirth == "") {
		document.getElementById("txtdateofbirth").style.borderColor = "red";
		document.getElementById("txtdateofbirth").focus();
		return false;
	} else if (studentNationality == "") {
		document.getElementById("txtstudentnationality").style.borderColor = "red";
		document.getElementById("txtstudentnationality").focus();
		return false;
	} else if (studentReligion == "") {
		document.getElementById("slctstudentreligion").style.borderColor = "red";
		document.getElementById("slctstudentreligion").focus();
		return false;
	} else if (countryOfBirth == "") {
		document.getElementById("txtstudentcountryofbirth").style.borderColor = "red";
		document.getElementById("txtstudentcountryofbirth").focus();
		return false;
	} else if (levelId == "") {
		document.getElementById("slctlevel").style.borderColor = "red";
		document.getElementById("slctlevel").focus();
		return false;
	} else if (fatherFirstName == "") {
		document.getElementById("txtfatherfirstname").style.borderColor = "red";
		document.getElementById("txtfatherfirstname").focus();
		return false;
	} 
//	else if (fatherMiddleName == "") {
//		document.getElementById("txtfathermiddlename").style.borderColor = "red";
//		document.getElementById("txtfathermiddlename").focus();
//		return false;
//	} 
	else if (fatherLastName == "") {
		document.getElementById("txtfatherlastname").style.borderColor = "red";
		document.getElementById("txtfatherlastname").focus();
		return false;
	} else if (fatherReligion == "") {
		document.getElementById("slctfatherreligion").style.borderColor = "red";
		document.getElementById("slctfatherreligion").focus();
		return false;
	} else if (fatherOccupation == "") {
		document.getElementById("txtfatheroccupation").style.borderColor = "red";
		document.getElementById("txtfatheroccupation").focus();
		return false;
	} else if (fatherPlaceOfWork == "") {
		document.getElementById("txtfatherplaceofwork").style.borderColor = "red";
		document.getElementById("txtfatherplaceofwork").focus();
		return false;
	}
	else if (fatherCountryOfIssue == "") {
		document.getElementById("txtfathercountryofissue").style.borderColor = "red";
		document.getElementById("txtfathercountryofissue").focus();
		return false;
	} 
//	else if (fatherOfficeTelephone == "") {
//		document.getElementById("txtfatherofficetelephone").style.borderColor = "red";
//		document.getElementById("txtfatherofficetelephone").focus();
//		return false;
//	} 
//	else if (fatherFax == "") {
//		document.getElementById("txtfatherfax").style.borderColor = "red";
//		document.getElementById("txtfatherfax").focus();
//		return false;
//	} else if (fatherPobox == "") {
//		document.getElementById("txtfatherpobox").style.borderColor = "red";
//		document.getElementById("txtfatherpobox").focus();
//		return false;
//	} 
	else if (fatherEmail == "") {
		document.getElementById("txtfatheremail").style.borderColor = "red";
		document.getElementById("txtfatheremail").focus();
		return false;
	} 
//	else if (fatherHomeTelephone == "") {
//		document.getElementById("txtfatherhometelephone").style.borderColor = "red";
//		document.getElementById("txtfatherhometelephone").focus();
//		return false;
//	} 
	else if (fatherMobile == "") {
		document.getElementById("txtfathermobile").style.borderColor = "red";
		document.getElementById("txtfathermobile").focus();
		return false;
	} 
//	else if (fatherHomePobox == "") {
//		document.getElementById("txtfatherhomepobox").style.borderColor = "red";
//		document.getElementById("txtfatherhomepobox").focus();
//		return false;
//	} 
	else if (fatherIsStaff == "") {
		document.getElementById("slctfatherisstaff").style.borderColor = "red";
		document.getElementById("slctfatherisstaff").focus();
		return false;
	} else if (motherFirstName == "") {
		document.getElementById("txtmotherfirstname").style.borderColor = "red";
		document.getElementById("txtmotherfirstname").focus();
		return false;
	}
//	else if (motherMiddleName == "") {
//		document.getElementById("txtmothermiddlename").style.borderColor = "red";
//		document.getElementById("txtmothermiddlename").focus();
//		return false;
//	} 
	else if (motherLastName == "") {
		document.getElementById("txtmotherlastname").style.borderColor = "red";
		document.getElementById("txtmotherlastname").focus();
		return false;
	} else if (motherReligion == "") {
		document.getElementById("slctmotherreligion").style.borderColor = "red";
		document.getElementById("slctmotherreligion").focus();
		return false;
	} else if (motherOccupation == "") {
		document.getElementById("txtmotheroccupation").style.borderColor = "red";
		document.getElementById("txtmotheroccupation").focus();
		return false;
	} else if (motherPlaceOfWork == "") {
		document.getElementById("txtmotherplaceofwork").style.borderColor = "red";
		document.getElementById("txtmotherplaceofwork").focus();
		return false;
	} 
	else if (motherCountryOfIssue == "") {
		document.getElementById("txtmothercountryofissue").style.borderColor = "red";
		document.getElementById("txtmothercountryofissue").focus();
		return false;
	} 
//	else if (motherOfficeTelephone == "") {
//		document.getElementById("txtmotherofficetelephone").style.borderColor = "red";
//		document.getElementById("txtmotherofficetelephone").focus();
//		return false;
//	}
//	else if (motherFax == "") {
//		document.getElementById("txtmotherfax").style.borderColor = "red";
//		document.getElementById("txtmotherfax").focus();
//		return false;
//	} else if (motherPobox == "") {
//		document.getElementById("txtmotherpobox").style.borderColor = "red";
//		document.getElementById("txtmotherpobox").focus();
//		return false;
//	}
	else if (motherEmail == "") {
		document.getElementById("txtmotheremail").style.borderColor = "red";
		document.getElementById("txtmotheremail").focus();
		return false;
	} 
//	else if (motherHomeTelephone == "") {
//		document.getElementById("txtmotherhometelephone").style.borderColor = "red";
//		document.getElementById("txtmotherhometelephone").focus();
//		return false;
//	} 
	else if (motherMobile == "") {
		document.getElementById("txtmothermobile").style.borderColor = "red";
		document.getElementById("txtmothermobile").focus();
		return false;
	} 
//	else if (motherHomePobox == "") {
//		document.getElementById("txtmotherhomepobox").style.borderColor = "red";
//		document.getElementById("txtmotherhomepobox").focus();
//		return false;
//	} 
	else if (motherIsStaff == "") {
		document.getElementById("slctmotherisstaff").style.borderColor = "red";
		document.getElementById("slctmotherisstaff").focus();
		return false;
	} else if (emergencyContactFullName == "") {
		document.getElementById("txtemergencycontactfullname").style.borderColor = "red";
		document.getElementById("txtemergencycontactfullname").focus();
		return false;
	} else if (emergencyRelation == "") {
		document.getElementById("txtrelationship").style.borderColor = "red";
		document.getElementById("txtrelationship").focus();
		return false;
	} 
//	else if (emergencyOfficeTelephone == "") {
//		document.getElementById("txtemergencycontactofficetelephone").style.borderColor = "red";
//		document.getElementById("txtemergencycontactofficetelephone").focus();
//		return false;
//	} 
//	else if (emergencyHomeTelephone == "") {
//		document.getElementById("txtemergencycontacthometelephone").style.borderColor = "red";
//		document.getElementById("txtemergencycontacthometelephone").focus();
//		return false;
//	} 
	else if (emergencyMobile == "") {
		document.getElementById("txtemergencycontactmobile").style.borderColor = "red";
		document.getElementById("txtemergencycontactmobile").focus();
		return false;
	} else if (personPayingFees == "") {
		document.getElementById("txtpersonpayingfee").style.borderColor = "red";
		document.getElementById("txtpersonpayingfee").focus();
		return false;
	} else if (expectedDateOfArrival == "") {
		document.getElementById("txtarrivaldate").style.borderColor = "red";
		document.getElementById("txtarrivaldate").focus();
		return false;
	} else {
		// //alert("mahder");
		/*
		 * //alert(studentFirstName+":"+studentMiddleName+":"+studentLastName+":"+sex+":"+dateOfBirth+":"+passportNumber+":"+
		 * studentCountryOfIssue+":"+studentNationality+":"+studentReligion+":"+countryOfBirth+":"+levelId+":"+educationGrid+":"+chkDifficulityReading+":"+
		 * chkDifficulityMathematics+":"+chkDifficulityLanguage+":"+chkDifficulityBehavioral+":"+chkGiftedReading+":"+chkGiftedMathematics+":"+
		 * chkGiftedLanguage+":"+chkGiftedBehavioral+":"+others+":"+medication+":"+fatherFirstName+":"+fatherMiddleName+":"+fatherLastName+":"+
		 * fatherPassportNumber+":"+fatherCountryOfIssue+":"+fatherReligion+":"+fatherOccupation+":"+fatherPlaceOfWork+":"+fatherNameOfOrganization+":"+
		 * fatherOfficeTelephone+":"+fatherFax+":"+fatherPobox+":"+fatherEmail+":"+fatherHomeTelephone+":"+fatherMobile+":"+fatherHomePobox+":"+
		 * motherFirstName+":"+motherMiddleName+":"+motherLastName+":"+motherPassportNumber+":"+motherCountryOfIssue+":"+motherReligion+":"+
		 * motherOccupation+":"+motherPlaceOfWork+":"+motherNameOfOrganization+":"+motherOfficeTelephone+":"+motherFax+":"+motherPobox+":"+
		 * motherEmail+":"+motherHomeTelephone+":"+motherMobile+":"+motherHomePobox+":"+languageSpokenAtHome+":"+otherLanguageSpoken+":"+emergencyContactFullName+":"+emergencyRelation+":"+
		 * emergencyOfficeTelephone+":"+emergencyHomeTelephone+":"+emergencyMobile+":"+personPayingFees+":"+expectedDateOfArrival+":"+siblingGrid+":"+formType);
		 */
		// //alert(educationGrid.rows.length-1);
		var educationGridVal = educationGrid.rows.length - 1;
		// //alert(educationGridVal);
		var siblingGridVal = siblingGrid.rows.length - 1;

		stringValues = "";
		// //alert("siblingGridVal: "+siblingGridVal);

		nameOfSchoolName = "";
		typeOfSchoolName = "";
		yearsName = "";
		classesName = "";
		languageUsedName = "";
		siblingFirstNameName = "";
		siblingMiddleNameName = "";
		siblingLastNameName = "";
		siblingRelationNameName = "";

		var educationGridRowCounter = 0;

		for (i = 1; i <= educationGridVal; i++) {
			nameOfSchoolName = 'txtnameofschool' + i;
			typeOfSchoolName = 'txttypeofschool' + i;
			yearsName = 'txtyears' + i;
			classesName = 'txtclasses' + i;
			languageUsedName = 'txtlanguageused' + i;

			// if (document.getElementById(chkName).checked) {
			nameOfSchoolVal = document.getElementById(nameOfSchoolName).value == "" ? "no prev school"
					: document.getElementById(nameOfSchoolName).value;
			typeOfSchoolVal = document.getElementById(typeOfSchoolName).value == "" ? "no prev school"
					: document.getElementById(typeOfSchoolName).value;
			yearsNameVal = document.getElementById(yearsName).value == "" ? "no prev school"
					: document.getElementById(yearsName).value;
			classesNameVal = document.getElementById(classesName).value == "" ? "no prev school"
					: document.getElementById(classesName).value;
			languageUsedNameVal = document.getElementById(languageUsedName).value == "" ? "no prev school"
					: document.getElementById(languageUsedName).value;

			stringValues += "&" + nameOfSchoolName + "=" + nameOfSchoolVal
					+ "&" + typeOfSchoolName + "=" + typeOfSchoolVal + "&"
					+ yearsName + "=" + yearsNameVal + "&" + classesName + "="
					+ classesNameVal + "&" + languageUsedName + "="
					+ languageUsedNameVal;
			educationGridRowCounter++;
		}// end for loop

		// //alert(stringValues);

		var siblingGridRowCounter = 0;
		for (j = 1; j <= siblingGridVal; j++) {

			nameOfSiblingFirstName = 'txtsiblingfirstname' + j;
			nameOfSiblingMiddleName = 'txtsiblingmiddlename' + j;
			nameOfSiblingLastName = 'txtsiblinglastname' + j;
			nameOfSiblingRelation = 'slctsiblingrelation' + j;
			// //alert(nameOfSiblingMiddleName);

			// if (document.getElementById(chkName).checked) {
			nameOfSiblingFirstNameVal = document
					.getElementById(nameOfSiblingFirstName).value == "" ? "no sibling"
					: document.getElementById(nameOfSiblingFirstName).value;
			nameOfSiblingMiddleNameVal = document
					.getElementById(nameOfSiblingMiddleName).value == "" ? "no sibling"
					: document.getElementById(nameOfSiblingMiddleName).value;
			nameOfSiblingLastNameVal = document
					.getElementById(nameOfSiblingLastName).value == "" ? "no sibling"
					: document.getElementById(nameOfSiblingLastName).value;
			nameOfSiblingRelationVal = document
					.getElementById(nameOfSiblingRelation).value == "" ? "no sibling"
					: document.getElementById(nameOfSiblingRelation).value;

			// //alert(nameOfSiblingFirstName+" : "+nameOfSiblingMiddleName+" :
			// "+nameOfSiblingLastName);

			stringValues += "&" + nameOfSiblingFirstName + "="
					+ nameOfSiblingFirstNameVal + "&" + nameOfSiblingMiddleName
					+ "=" + nameOfSiblingMiddleNameVal + "&"
					+ nameOfSiblingLastName + "=" + nameOfSiblingLastNameVal
					+ "&" + nameOfSiblingRelation + "="
					+ nameOfSiblingRelationVal;
			siblingGridRowCounter++;
		}

		// //alert(stringValues);

		difficulityReading = false;
		difficulityMathematics = false;
		difficulityLanguage = false;
		difficulityBehavioral = false;

		giftedReading = false;
		giftedMathematics = false;
		giftedLanguage = false;

		if (chkDifficulityReading.checked == true)
			difficulityReading = true;
		if (chkDifficulityMathematics.checked == true)
			difficulityMathematics = true;
		if (chkDifficulityLanguage.checked == true)
			difficulityLanguage = true;
		if (chkDifficulityBehavioral.checked == true)
			difficulityBehavioral = true;
		if (chkGiftedReading.checked == true)
			giftedReading = true;
		if (chkGiftedMathematics.checked == true)
			giftedMathematics = giftedMathematics;
		if (chkGiftedLanguage == true)
			giftedLanguage = true;

		// //alert(difficulityMathematics + " : " + giftedReading);

		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("applicationFormDiv").innerHTML = xmlhttp.responseText;

			}
		}
	
		xmlhttp.open("GET", "savestudentapplication.jsp?studentFirstName="
				+ studentFirstName + "&studentMiddleName=" + studentMiddleName
				+ "&studentLastName=" + studentLastName + "&sex=" + sex
				+ "&dateOfBirth=" + dateOfBirth + "&passportNumber="
				+ passportNumber + "&studentCountryOfIssue="
				+ studentCountryOfIssue + "&studentNationality="
				+ studentNationality + stringValues + "&studentReligion="
				+ studentReligion + "&educationGridRowCounter="
				+ educationGridRowCounter + "&countryOfBirth=" + countryOfBirth
				+ "&levelId=" + levelId + "&difficulityReading="
				+ difficulityReading + "&difficulityMathematics="
				+ difficulityMathematics + "&difficulityLanguage="
				+ difficulityLanguage + "&difficulityBehavioral="
				+ difficulityBehavioral + "&giftedReading=" + giftedReading
				+ "&giftedMathematics=" + giftedMathematics
				+ "&giftedLanguage=" + giftedLanguage + "&others=" + others
				+ "&medication=" + medication + "&fatherFirstName="
				+ fatherFirstName + "&fatherMiddleName=" + fatherMiddleName
				+ "&fatherLastName=" + fatherLastName
				+ "&fatherPassportNumber=" + fatherPassportNumber
				+ "&fatherCountryOfIssue=" + fatherCountryOfIssue
				+ "&fatherReligion=" + fatherReligion + "&fatherOccupation="
				+ fatherOccupation + "&fatherPlaceOfWork=" + fatherPlaceOfWork
				+ "&fatherNameOfOrganization=" + fatherNameOfOrganization
				+ "&fatherOfficeTelephone=" + fatherOfficeTelephone
				+ "&fatherFax=" + fatherFax + "&fatherPobox=" + fatherPobox
				+ "&fatherEmail=" + fatherEmail + "&fatherHomeTelephone="
				+ fatherHomeTelephone + "&fatherMobile=" + fatherMobile
				+ "&fatherHomePobox=" + fatherHomePobox + "&motherFirstName="
				+ motherFirstName + "&motherMiddleName=" + motherMiddleName
				+ "&motherLastName=" + motherLastName
				+ "&motherPassportNumber=" + motherPassportNumber
				+ "&motherCountryOfIssue=" + motherCountryOfIssue
				+ "&motherReligion=" + motherReligion + "&motherOccupation="
				+ motherOccupation + "&motherPlaceOfWork=" + motherPlaceOfWork
				+ "&motherNameOfOrganization=" + motherNameOfOrganization
				+ "&motherOfficeTelephone=" + motherOfficeTelephone
				+ "&motherFax=" + motherFax + "&motherPobox=" + motherPobox
				+ "&motherEmail=" + motherEmail + "&motherHomeTelephone="
				+ motherHomeTelephone + "&motherMobile=" + motherMobile
				+ "&motherHomePobox=" + motherHomePobox
				+ "&emergencyContactFullName=" + emergencyContactFullName
				+ "&emergencyRelation=" + emergencyRelation
				+ "&emergencyOfficeTelephone=" + emergencyOfficeTelephone
				+ "&emergencyHomeTelephone=" + emergencyHomeTelephone
				+ "&emergencyMobile=" + emergencyMobile + "&personPayingFees="
				+ personPayingFees + "&expectedDateOfArrival="
				+ expectedDateOfArrival + "&formType=" + formType
				+ "&siblingGridRowCounter=" + siblingGridRowCounter
				+ "&languageSpokenAtHome=" + languageSpokenAtHome
				+ "&otherLanguageSpoken=" + otherLanguageSpoken + "&formType="
				+ formType + "&fatherIsStaff=" + fatherIsStaff
				+ "&motherIsStaff=" + motherIsStaff, true);
		

		xmlhttp.send();
	}

}

function saveBinCard(itemId, binCardDetailGrid) {
	var binCardDetailGridVal = binCardDetailGrid.rows.length - 1;

	stringValues = "";

	// for the order request grid
	binCardDate = "";
	invoiceNumber = "";
	receivedQuantity = "";
	receivedGRNNumber = "";
	priceCost = "";
	priceSelling = "";
	issuedQuantity = "";
	issuedGIVNumber = "";
	balance = "";
	expiryDate = "";

	for (i = 1; i <= binCardDetailGridVal; i++) {
		binCardDate = 'txtbincarddate' + i;
		invoiceNumber = 'txtinvoicenumber' + i;
		receivedQuantity = 'txtreceivedquantity' + i;
		receivedGRNNumber = 'txtreceivedgrnnumber' + i;
		priceCost = 'txtpricecost' + i;
		priceSelling = 'txtpriceselling' + i;
		issuedQuantity = 'txtissuedquantity' + i;
		issuedGIVNumber = 'txtissuedgivnumber' + i;
		balance = 'txtbalance' + i;
		expiryDate = 'txtexpirydate' + i;

		binCardDateVal = document.getElementById(binCardDate).value;
		invoiceNumberVal = document.getElementById(invoiceNumber).value;
		receivedQuantityVal = document.getElementById(receivedQuantity).value;
		receivedGRNNumberVal = document.getElementById(receivedGRNNumber).value;
		priceCostVal = document.getElementById(priceCost).value;
		priceSellingVal = document.getElementById(priceSelling).value;
		issuedQuantityVal = document.getElementById(issuedQuantity).value;
		issuedGIVNumberVal = document.getElementById(issuedGIVNumber).value;
		balanceVal = document.getElementById(balance).value;
		expiryDateVal = document.getElementById(expiryDate).value;

		stringValues += "&" + binCardDate + "=" + binCardDateVal + "&"
				+ invoiceNumber + "=" + invoiceNumberVal + "&"
				+ receivedQuantity + "=" + receivedQuantityVal + "&"
				+ recievedGRNNumber + "=" + receivedGRNNumberVal + "&"
				+ priceCost + "=" + priceCostVal + "&" + priceSelling + "="
				+ priceSellingVal + "&" + issuedQuantity + "="
				+ issuedQuantityVal + "&" + issuedGIVNumber + "="
				+ issuedGIVNumberVal + "&" + balance + "=" + balanceVal + "&"
				+ expiryDate + "=" + expiryDateVal;
	}// end for loop

	/*
	 * //alert(givNumber + ":" + givDate + ":" + referenceNumber + ":" + branchId +
	 * ":" + issuedTo + ":" + receivedByEmployeeId + ":" + approvedByEmployeeId +
	 * ":" + accountantEmployeeId + ":" + stringValues);
	 */

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("binCardFormDiv").innerHTML = xmlhttp.responseText;
			document.getElementById("successDiv").innerHTML = "<p class='msg done'>Bin card saved successfully!</p>";
		}
	}
	xmlhttp.open("GET", "savebincard.jsp?itemId=" + itemId + stringValues
			+ "&binCardDetailGridVal=" + binCardDetailGridVal, true);
	xmlhttp.send();
}

function showDetailsForThisGTV(gtvId) {
	// //alert(gtvId);
	var divId = "givDetailDiv" + gtvId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showdetailsforthisgtv.jsp?gtvId=" + gtvId, true);
	xmlhttp.send();
}

function saveGTV(gtvNumber, gtvDate, fromBranchId, toBranchId, itemSource,
		toStoreId, receivedByEmployeeId, transferredByEmployeeId,
		approvedByEmployeeId, accountantEmployeeId, gtvDetailGrid) {

	var gtvDetailGridVal = gtvDetailGrid.rows.length - 1;
	// //alert(grvDetailGridVal);

	stringValues = "";

	// for the order request grid
	itemId = "";
	description = "";
	quantity = "";
	unitCostPrice = "";
	totalCostPrice = "";
	unitSellingPrice = "";
	expiryDate = "";
	remark = "";

	var rowCounter = 0;
	for (i = 1; i <= gtvDetailGridVal; i++) {
		itemId = 'slctitem' + i;
		description = 'txtdescription' + i;
		quantity = 'txtquantity' + i;
		unitCostPrice = 'txtunitcostprice' + i;
		totalCostPrice = 'txttotalcostprice' + i;
		unitSellingPrice = 'txtunitsellingprice' + i;
		expiryDate = "txtexpirydate" + i;
		remark = "txtremark" + i;
		chkName = "chk" + i;

		if (document.getElementById(chkName).checked) {
			itemIdVal = document.getElementById(itemId).value;
			descriptionVal = document.getElementById(description).value;
			quantityVal = document.getElementById(quantity).value;
			unitCostPriceVal = document.getElementById(unitCostPrice).value;
			totalCostPriceVal = document.getElementById(totalCostPrice).value;
			unitSellingPriceVal = document.getElementById(unitSellingPrice).value;
			expiryDateVal = document.getElementById(expiryDate).value;
			remarkVal = document.getElementById(remark).value;

			stringValues += "&" + itemId + "=" + itemIdVal + "&" + description
					+ "=" + descriptionVal + "&" + quantity + "=" + quantityVal
					+ "&" + unitCostPrice + "=" + unitCostPriceVal + "&"
					+ totalCostPrice + "=" + totalCostPriceVal + "&"
					+ unitSellingPrice + "=" + unitSellingPriceVal + "&"
					+ expiryDate + "=" + expiryDateVal + "&" + remark + "="
					+ remarkVal;
			rowCounter++;
		}
	}// end for loop

	/*
	 * //alert(grvNumber+":"+grvDate+":"+referenceNumber+":"+supplierId+":"+invoiceNumber+":"+receivedByEmployeeId+":"+approvedByEmployeeId+":"+accountantEmployeeId+":"+
	 * stringValues);
	 */

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("gtvFormDiv").innerHTML = xmlhttp.responseText;
			document.getElementById("successDiv").innerHTML = "<p class='msg done'>GTV Saved Successfully!</p>";
		}
	}
	xmlhttp.open("GET", "savegtv.jsp?gtvNumber=" + gtvNumber + "&gtvDate="
			+ gtvDate + "&fromBranchId=" + fromBranchId + "&toBranchId="
			+ toBranchId + "&itemSource=" + itemSource + "&toStoreId="
			+ toStoreId + "&receivedByEmployeeId=" + receivedByEmployeeId
			+ "&transferredByEmployeeId=" + transferredByEmployeeId
			+ "&approvedByEmployeeId=" + approvedByEmployeeId
			+ "&accountantEmployeeId=" + accountantEmployeeId + stringValues
			+ "&gtvDetailGridVal=" + gtvDetailGridVal + "&rowCounter="
			+ rowCounter, true);
	xmlhttp.send();
}

function getTheUnitCostPriceOfThisItemInThisStore(itemId, storeId, num) {
	// //alert(itemId+":"+storeId+":"+num);
	var textField = "txtunitcostprice" + num;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(textField).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtheunitcostpriceofthisiteminthistore.jsp?itemId="
			+ itemId + "&storeId=" + storeId, true);
	xmlhttp.send();
}

function showDetailsForThisGIV(givId) {
	var uniqueGIVDiv = "givDetailDiv" + givId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueGIVDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showdetailsforthisgiv.jsp?givId=" + givId, true);
	xmlhttp.send();
}

function showDetailsForThisGIVForEdit(givId) {
	var uniqueGIVDiv = "givDetailDiv" + givId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueGIVDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showdetailsforthisgivforedit.jsp?givId=" + givId,
					true);
	xmlhttp.send();
}

function showAddItemToThisGIV(givId, storeId) {
	var uniqueGIVDiv = "givDetailDiv" + givId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueGIVDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showadditemtothisgiv.jsp?givId=" + givId + "&storeId="
			+ storeId, true);
	xmlhttp.send();
}

function showAddItemToThisGRV(grvId, storeId) {
	// //alert(grvId+":"+storeId);
	var uniqueDivId = "grvDetailDiv" + grvId;
	// //alert(uniqueDivId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showadditemtothisgrv.jsp?grvId=" + grvId + "&storeId="
			+ storeId, true);
	xmlhttp.send();
}

function addThisItemToThisGIV(givId, itemId, quantity, unitCostPrice,
		totalCostPrice, unitSellingPrice, totalSellingPrice, expiryDate,
		addedGIVId, storeId) {
	/*
	 * //alert(givId+":"+itemId+":"+quantity+":"+unitCostPrice+":"+totalCostPrice+":"+unitSellingPrice+":"+totalSellingPrice+":"+
	 * expiryDate+":"+addedGIVId);
	 */
	var itemIdName = "slctitem" + addedGIVId;
	var quantityName = "txtquantity" + addedGIVId;
	var unitCostPriceName = "txtunitcostprice" + addedGIVId;
	var totalCostPriceName = "txttotalcostprice" + addedGIVId;
	var unitSellingPriceName = "txtunitsellingprice" + addedGIVId;
	var totalSellingPriceName = "txttotalsellingprice" + addedGIVId;
	var expiryDateName = "txtnewexpirydate" + addedGIVId;

	if (itemId == "") {
		document.getElementById(itemIdName).style.borderColor = "red";
		document.getElementById(itemIdName).focus();
		return false;
	} else if (quantity == "") {
		document.getElementById(itemIdName).style.borderColor = "green";
		document.getElementById(quantityName).style.borderColor = "red";
		document.getElementById(quantityName).focus();
		return false;
	} else if (unitCostPrice == "") {
		document.getElementById(quantityName).style.borderColor = "green";
		document.getElementById(unitCostPriceName).style.borderColor = "red";
		document.getElementById(unitCostPriceName).focus();
		return false;
	} else if (totalCostPrice == "") {
		document.getElementById(unitCostPriceName).style.borderColor = "green";
		document.getElementById(totalCostPriceName).style.borderColor = "red";
		document.getElementById(totalCostPriceName).focus();
		return false;
	} else if (unitSellingPrice == "") {
		document.getElementById(totalCostPriceName).style.borderColor = "green";
		document.getElementById(unitSellingPriceName).style.borderColor = "red";
		document.getElementById(unitSellingPriceName).focus();
		return false;
	} else if (totalSellingPrice == "") {
		document.getElementById(unitSellingPriceName).style.borderColor = "green";
		document.getElementById(totalSellingPriceName).style.borderColor = "red";
		document.getElementById(totalSellingPriceName).focus();
		return false;
	} else if (expiryDate == "") {
		document.getElementById(totalSellingPriceName).style.borderColor = "green";
		document.getElementById(expiryDateName).style.borderColor = "red";
		document.getElementById(expiryDateName).focus();
		return false;
	} else {
		var uniqueGIVDiv = "givDetailDiv" + givId;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(uniqueGIVDiv).innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "addthisitemtothisgiv.jsp?givId=" + givId
				+ "&itemId=" + itemId + "&quantity=" + quantity
				+ "&unitCostPrice=" + unitCostPrice + "&totalCostPrice="
				+ totalCostPrice + "&unitSellingPrice=" + unitSellingPrice
				+ "&totalSellingPrice=" + totalSellingPrice + "&expiryDate="
				+ expiryDate + "&addedGIVId=" + addedGIVId + "&storeId="
				+ storeId, true);
		xmlhttp.send();
	}
}

function addThisItemToThisGRV(grvId, itemId, quantity, unitCostPrice,
		totalCostPrice, unitSellingPrice, totalSellingPrice, expiryDate,
		addedGRVId, storeId) {
	/*
	 * //alert(grvId+":"+ itemId+":"+ quantity+":"+ unitCostPrice+":"+
	 * totalCostPrice+":"+ unitSellingPrice+":"+ totalSellingPrice+":"+
	 * expiryDate+":"+ addedGRVId+":"+storeId);
	 */
	var itemIdName = "slctitem" + addedGRVId;
	var quantityName = "txtquantity" + addedGRVId;
	var unitCostPriceName = "txtunitcostprice" + addedGRVId;
	var totalCostPriceName = "txttotalcostprice" + addedGRVId;
	var unitSellingPriceName = "txtunitsellingprice" + addedGRVId;
	var totalSellingPriceName = "txttotalsellingprice" + addedGRVId;
	var expiryDateName = "txtnewexpirydate" + addedGRVId;

	if (itemId == "") {
		document.getElementById(itemIdName).style.borderColor = "red";
		document.getElementById(itemIdName).focus();
		return false;
	} else if (quantity == "") {
		document.getElementById(itemIdName).style.borderColor = "green";
		document.getElementById(quantityName).style.borderColor = "red";
		document.getElementById(quantityName).focus();
		return false;
	} else if (unitCostPrice == "") {
		document.getElementById(quantityName).style.borderColor = "green";
		document.getElementById(unitCostPriceName).style.borderColor = "red";
		document.getElementById(unitCostPriceName).focus();
		return false;
	} else if (totalCostPrice == "") {
		document.getElementById(unitCostPriceName).style.borderColor = "green";
		document.getElementById(totalCostPriceName).style.borderColor = "red";
		document.getElementById(totalCostPriceName).focus();
		return false;
	} else if (unitSellingPrice == "") {
		document.getElementById(totalCostPriceName).style.borderColor = "green";
		document.getElementById(unitSellingPriceName).style.borderColor = "red";
		document.getElementById(unitSellingPriceName).focus();
		return false;
	} else if (totalSellingPrice == "") {
		document.getElementById(unitSellingPriceName).style.borderColor = "green";
		document.getElementById(totalSellingPriceName).style.borderColor = "red";
		document.getElementById(totalSellingPriceName).focus();
		return false;
	} else if (expiryDate == "") {
		document.getElementById(totalSellingPriceName).style.borderColor = "green";
		document.getElementById(expiryDateName).style.borderColor = "red";
		document.getElementById(expiryDateName).focus();
		return false;
	} else {
		var uniqueGRVDiv = "grvDetailDiv" + grvId;
		// //alert(uniqueGRVDiv);
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(uniqueGRVDiv).innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "addthisitemtothisgrv.jsp?grvId=" + grvId
				+ "&itemId=" + itemId + "&quantity=" + quantity
				+ "&unitCostPrice=" + unitCostPrice + "&totalCostPrice="
				+ totalCostPrice + "&unitSellingPrice=" + unitSellingPrice
				+ "&totalSellingPrice=" + totalSellingPrice + "&expiryDate="
				+ expiryDate + "&addedGRVId=" + addedGRVId + "&storeId="
				+ storeId, true);
		xmlhttp.send();
	}
}

function showEditFieldsOfThisGivItem(givId, itemId, ctr) {
	// //alert(givId+":"+itemId+":"+ctr);
	var uniqueDivId = "givEditItem" + ctr;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueDivId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofthisgivitem.jsp?givId=" + givId
			+ "&itemId=" + itemId, true);
	xmlhttp.send();
}

function changeThisBranchIdForEditGIV(branchId) {
	document.getElementById("hiddeneditbranchid").value = branchId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditbranch").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"changethisbranchidforeditgiv.jsp?branchId=" + branchId, true);
	xmlhttp.send();
}

function changeThisReceivedByEmployeeForEditGIV(empId) {
	document.getElementById('hiddeneditreceivedbyid').value = empId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditreceivedby").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethisreceivedbyemployeeforeditgiv.jsp?empId="
			+ empId, true);
	xmlhttp.send();
}

function changeThisApprovedByEmployeeForEditGIV(empId) {
	document.getElementById('hiddeneditapprovedbyid').value = empId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditapprovedby").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethisapprovedbyemployeeforeditgiv.jsp?empId="
			+ empId, true);
	xmlhttp.send();
}

function changeThisAccountantEmployeeForEditGIV(empId) {
	document.getElementById('hiddeneditaccountantid').value = empId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditaccountant").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethisaccountantemployeeforeditgiv.jsp?empId="
			+ empId, true);
	xmlhttp.send();
}

function changeThisStoreForEditGiv(storeId) {
	document.getElementById('hiddeneditstoreid').value = storeId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txteditstore").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethisstoreforeditgiv.jsp?storeId=" + storeId,
			true);
	xmlhttp.send();
}

function changeThisItemForEditGivDetail(itemId) {
	// //alert(itemId);
	document.getElementById('hiddenedititemid').value = itemId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtedititem").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changethisitemforeditgivdetail.jsp?itemId=" + itemId,
			true);
	xmlhttp.send();
}

function updateThisGIV(givId, givNumber, givDate, referenceNumber, branchId,
		issuedTo, receivedById, approvedById, accountantId, storeId) {
	// //alert(givId+":"+givNumber+":"+givDate+":"+referenceNumber+":"+branchId+":"+issuedTo+":"+receivedById+":"+approvedById+":"+accountantId+":"+storeId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("givUpdateDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethisgiv.jsp?givId=" + givId + "&givNumber="
			+ givNumber + "&givDate=" + givDate + "&referenceNumber="
			+ referenceNumber + "&branchId=" + branchId + "&issuedTo="
			+ issuedTo + "&receivedById=" + receivedById + "&approvedById="
			+ approvedById + "&accountantId=" + accountantId + "&storeId="
			+ storeId, true);
	xmlhttp.send();
}

function updateThisGIVDetail(givId, oldItemId, newItemId, description,
		quantity, unitCostPrice, totalCostPrice, unitSellingPrice,
		totalSellingPrice, expiryDate) {
	// //alert(givId+":"+oldItemId+":"+newItemId+":"+description+":"+quantity+":"+unitCostPrice+":"+totalCostPrice+":"+unitSellingPrice+":"+totalSellingPrice)
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("givDetailUpdateDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethisgivdetail.jsp?givId=" + givId
			+ "&oldItemId=" + oldItemId + "&newItemId=" + newItemId
			+ "&description=" + description + "&quantity=" + quantity
			+ "&unitCostPrice=" + unitCostPrice + "&totalCostPrice="
			+ totalCostPrice + "&unitSellingPrice=" + unitSellingPrice
			+ "&totalSellingPrice=" + totalSellingPrice + "&expiryDate="
			+ expiryDate, true);
	xmlhttp.send();
}

function showDetailsForThisGIVForDelete(givId) {
	var uniqueGIVDiv = "givDetailDiv" + givId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(uniqueGIVDiv).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showdetailsforthisgivfordelete.jsp?givId=" + givId,
			true);
	xmlhttp.send();
}

function deleteThisGIVDetail(givDetailId) {
	if (window.confirm("Are you sure you want to delete this GIV Detail?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisgivdetail.jsp?givDetailId="
				+ givDetailId, true);
		xmlhttp.send();
	}
}

function showTheBinCardDetailsForThisItem(itemId, storeId) {
	// //alert(itemId+":"+storeId);
	if (itemId == "") {
		document.getElementById('slctitem').style.borderColor = "red";
		document.getElementById('errorDiv').innerHTML = "Please select the item!";
		document.getElementById('slctitem').focus();
		return false;
	} else if (storeId == "") {
		document.getElementById('slctitem').style.borderColor = "green";
		document.getElementById('errorDiv').innerHTML = "Please select the store";
		document.getElementById('slctstore').style.borderColor = "red";
		document.getElementById('slctstore').focus();
		return false;
	} else {
		/*
		 * document.getElementById('errorDiv').innerHTML = "";
		 * document.getElementById('slctstore').style.borderColor="green";
		 */
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("binCardDetailsDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "showthebincarddetailsforthisitem.jsp?itemId="
				+ itemId + "&storeId=" + storeId, true);
		xmlhttp.send();
	}
}

function showInventorySheetStoreAndCountDateSelector() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("updateBinCardFromInventorySheetDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showinventorysheetstoreandcountdateselector.jsp",
					true);
	xmlhttp.send();
}

function updateThisBinCardInfoFromThisInventorySheet(inventorySheetType,
		storeId, countDate) {
	if (window
			.confirm("Are you sure you want to update this bin card from inventory sheet information?")) {
		document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
				document.getElementById("updateBinCardInfoDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"updatethisbincardinfofromthisinventorysheet.jsp?inventorySheetType="
						+ inventorySheetType + "&storeId=" + storeId
						+ "&countDate=" + countDate, true);
		xmlhttp.send();
	}
}

function showEditFieldsOfThisBinCardDetail(binCardDetailId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("binCardEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showeditfieldsofthisbincarddetail.jsp?binCardDetailId="
					+ binCardDetailId, true);
	xmlhttp.send();
}

function updateThisBinCardDetail(binCardDetailId, binCardDate, invoiceNumber,
		receivedQuantity, grvNumber, priceCost, priceSelling, issuedQuantity,
		givNumber, balance, expiryDate) {
	// //alert(binCardDetailId+":"+binCardDate+":"+invoiceNumber+":"+receivedQuantity+":"+grvNumber+":"+priceCost+":"+priceSelling+":"+issuedQuantity+":"+givNumber+":"+balance+":"+expiryDate);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("binCardEditDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethisbincarddetail.jsp?binCardDetailId="
			+ binCardDetailId + "&binCardDate=" + binCardDate
			+ "&invoiceNumber=" + invoiceNumber + "&receivedQuantity="
			+ receivedQuantity + "&grvNumber=" + grvNumber + "&priceCost="
			+ priceCost + "&priceSelling=" + priceSelling + "&issuedQuantity="
			+ issuedQuantity + "&givNumber=" + givNumber + "&balance="
			+ balance + "&expiryDate=" + expiryDate, true);
	xmlhttp.send();
}

function makeTheGIVDivVisible(grvId) {
	document.getElementById('givFormDiv').style.visibility = "visible";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("grvDetailsDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showgrvdetailsfor.jsp?grvId=" + grvId, true);
	xmlhttp.send();
}

function calculateAndPrintTotalCostRow(quantity, unitCost, num) {
	// //alert(quantity + ":" + unitCost + ":" + txtTotalCost);
	var totalCost = (quantity * unitCost);
	var displayArea = "txttotalcostprice" + num;
	document.getElementById(displayArea).value = totalCost.toFixed(3);
	// //alert(displayArea);
}

function calculateAndPrintTotalCostRowForGTV(quantity, unitCost, num) {
	var totalCost = (quantity * unitCost);
	var displayArea = "txttotalcostprice" + num;
	document.getElementById(displayArea).value = totalCost.toFixed(3);
}

function calculateAndPrintTotalCostRowForGTV(quantity, unitCost, num) {
	// //alert(quantity+":"+unitCost+":"+num);
	var totalCost = (quantity * unitCost);
	var displayArea = "txttotalcostprice" + num;
	document.getElementById(displayArea).value = totalCost.toFixed(3);
}

function calculateAndShowUnitSellingPrice(unitCostPrice, num) {
	var unitSellingPrice = unitCostPrice * 1.2;
	var displayArea = "txtunitsellingprice" + num;
	document.getElementById(displayArea).value = unitSellingPrice.toFixed(3);
}

function calculateAndPrintTotalCostPrice(quantity, unitCost, num) {
	var totalCostPrice = quantity * unitCost;
	var displayArea = "txttotalcostprice" + num;
	document.getElementById(displayArea).value = totalCostPrice.toFixed(3);
}

function calculateAndPrintTotalSellingPrice(quantity, unitSelling, num) {
	var totalSellingPrice = quantity * unitSelling;
	var displayArea = "txttotalsellingprice" + num;
	document.getElementById(displayArea).value = totalSellingPrice.toFixed(3);
}

function showTheStoreDetailsOfThisBranch(branchId, itemSource, categoryId) {
	document.getElementById('ajaxLoaderSpanTab').style.visibility = "visible";
	if (branchId == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the branch!";
		document.getElementById('slctbranch').style.borderColor = "red";
		document.getElementById('slctbranch').focus();
		return false;
	} else if (itemSource == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the item source!";
		document.getElementById('slctbranch').style.borderColor = "green";
		document.getElementById('slctitemsource').style.borderColor = "red";
		document.getElementById('slctitemsource').focus();
		return false;
	} else if (categoryId == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the item category!";
		document.getElementById('slctitemsource').style.borderColor = "green";
		document.getElementById('slctcategory').style.borderColor = "red";
		document.getElementById('slctcategory').focus();
		return false;
	} else {
		document.getElementById('errorDiv').innerHTML = "";
		document.getElementById('slctitemsource').style.borderColor = "green";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("branchItemDetailDiv").innerHTML = xmlhttp.responseText;
				document.getElementById('ajaxLoaderSpanTab').style.visibility = "hidden";
			}
		}
		xmlhttp.open("GET", "showthestoredetailsofthisbranch.jsp?branchId="
				+ branchId + "&itemSource=" + itemSource + "&categoryId="
				+ categoryId, true);
		xmlhttp.send();
	}
}

function verifyThisRowForGTV(num, alpha) {
	// //alert(num+":"+alpha);
	var chkName = "chk" + alpha;
	// //alert(document.getElementById(chkName).checked);
	if (document.getElementById(chkName).checked) {
		var selectName = "slctitem" + num;
		var descriptionName = "txtdescription" + num;
		var quantityName = "txtquantity" + num;
		var unitCostPriceName = "txtunitcostprice" + num;
		var totalCostPriceName = "txttotalcostprice" + num;
		var unitSellingPriceName = "txtunitsellingprice" + num;
		var expiryDateName = "txtexpirydate" + num;
		var remarkName = "txtremark" + num;
		if (document.getElementById(selectName).value == "") {
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(selectName).style.borderColor = "red";
			document.getElementById(selectName).focus();
			document.getElementById(chkName).checked = false;
		}
		if (document.getElementById(descriptionName).value == "") {
			// document.getElementById(selectName).style.borderColor="green";
			document.getElementById(descriptionName).style.borderColor = "red";
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(descriptionName).focus();
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(quantityName).value == "") {
			document.getElementById(quantityName).style.borderColor = "red";
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(descriptionName).focus();
			document.getElementById(chkName).checked = false;
		}
		if (document.getElementById(unitCostPriceName).value == "") {
			// document.getElementById(descriptionName).style.borderColor="green";
			document.getElementById(unitCostPriceName).style.borderColor = "red";
			document.getElementById(unitCostPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(totalCostPriceName).value == "") {
			// document.getElementById(unitCostPriceName).style.borderColor="green";
			document.getElementById(totalCostPriceName).style.borderColor = "red";
			document.getElementById(totalCostPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(unitSellingPriceName).value == "") {
			// document.getElementById(totalCostPriceName).style.borderColor="green";
			document.getElementById(unitSellingPriceName).style.borderColor = "red";
			document.getElementById(unitSellingPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(expiryDateName).value == "") {
			// document.getElementById(unitSellingPriceName).style.borderColor="green";
			document.getElementById(expiryDateName).style.borderColor = "red";
			document.getElementById(expiryDateName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(remarkName).value == "") {
			// document.getElementById(expiryDateName).style.borderColor="green";
			document.getElementById(remarkName).style.borderColor = "red";
			document.getElementById(remarkName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(selectName).value != "") {
			document.getElementById(selectName).style.borderColor = "green";
		}
		if (document.getElementById(descriptionName).value != "") {
			document.getElementById(descriptionName).style.borderColor = "green";
		}
		if (document.getElementById(quantityName).value != "") {
			document.getElementById(quantityName).style.borderColor = "green";
		}
		if (document.getElementById(unitCostPriceName).value != "") {
			document.getElementById(unitCostPriceName).style.borderColor = "green";
		}
		if (document.getElementById(totalCostPriceName).value != "") {
			document.getElementById(totalCostPriceName).style.borderColor = "green";
		}
		if (document.getElementById(unitSellingPriceName).value != "") {
			document.getElementById(unitSellingPriceName).style.borderColor = "green";
		}
		if (document.getElementById(expiryDateName).value != "") {
			document.getElementById(expiryDateName).style.borderColor = "green";
		}
		if (document.getElementById(remarkName).value != "") {
			document.getElementById(remarkName).style.borderColor = "green";
		}
	}
}

function verifyThisRowForGRV(num, alpha) {
	// //alert(num+":"+alpha);
	var chkName = "chk" + alpha;
	// //alert(document.getElementById(chkName).checked);
	if (document.getElementById(chkName).checked) {
		var selectName = "slctitem" + num;
		// var descriptionName = "txtdescription" + num;
		var quantityName = "txtquantity" + num;
		var unitCostPriceName = "txtunitcostprice" + num;
		var totalCostPriceName = "txttotalcostprice" + num;
		var unitSellingPriceName = "txtunitsellingprice" + num;
		var expiryDateName = "txtexpirydate" + num;
		// var remarkName = "txtremark"+num;
		if (document.getElementById(selectName).value == "") {
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(selectName).style.borderColor = "red";
			document.getElementById(selectName).focus();
			document.getElementById(chkName).checked = false;
		}
		// if (document.getElementById(descriptionName).value == "") {
		// // document.getElementById(selectName).style.borderColor="green";
		// document.getElementById(descriptionName).style.borderColor = "red";
		// document.getElementById('errorDiv').innerHTML = "Please enter the
		// value!";
		// document.getElementById(descriptionName).focus();
		// document.getElementById(chkName).checked = false;
		// // return false;
		// }
		if (document.getElementById(quantityName).value == "") {
			document.getElementById(quantityName).style.borderColor = "red";
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(descriptionName).focus();
			document.getElementById(chkName).checked = false;
		}
		if (document.getElementById(unitCostPriceName).value == "") {
			// document.getElementById(descriptionName).style.borderColor="green";
			document.getElementById(unitCostPriceName).style.borderColor = "red";
			document.getElementById(unitCostPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(totalCostPriceName).value == "") {
			// document.getElementById(unitCostPriceName).style.borderColor="green";
			document.getElementById(totalCostPriceName).style.borderColor = "red";
			document.getElementById(totalCostPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(unitSellingPriceName).value == "") {
			// document.getElementById(totalCostPriceName).style.borderColor="green";
			document.getElementById(unitSellingPriceName).style.borderColor = "red";
			document.getElementById(unitSellingPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(expiryDateName).value == "") {
			// document.getElementById(unitSellingPriceName).style.borderColor="green";
			document.getElementById(expiryDateName).style.borderColor = "red";
			document.getElementById(expiryDateName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(selectName).value != "") {
			document.getElementById(selectName).style.borderColor = "green";
		}
		// if (document.getElementById(descriptionName).value != "") {
		// document.getElementById(descriptionName).style.borderColor = "green";
		// }
		if (document.getElementById(quantityName).value != "") {
			document.getElementById(quantityName).style.borderColor = "green";
		}
		if (document.getElementById(unitCostPriceName).value != "") {
			document.getElementById(unitCostPriceName).style.borderColor = "green";
		}
		if (document.getElementById(totalCostPriceName).value != "") {
			document.getElementById(totalCostPriceName).style.borderColor = "green";
		}
		if (document.getElementById(unitSellingPriceName).value != "") {
			document.getElementById(unitSellingPriceName).style.borderColor = "green";
		}
		if (document.getElementById(expiryDateName).value != "") {
			document.getElementById(expiryDateName).style.borderColor = "green";
		}
	}
}

function verifyThisRowForGIV(num, alpha) {
	// //alert(num+":"+alpha);
	var chkName = "chk" + alpha;
	// //alert(document.getElementById(chkName).checked);
	if (document.getElementById(chkName).checked) {
		var selectName = "slctitem" + num;
		// var descriptionName = "txtdescription" + num;
		var quantityName = "txtquantity" + num;
		var unitCostPriceName = "txtunitcostprice" + num;
		var totalCostPriceName = "txttotalcostprice" + num;
		var unitSellingPriceName = "txtunitsellingprice" + num;
		var totalSellingPriceName = "txttotalsellingprice" + num;
		var expiryDate = "txtexpirydate" + num;

		// var remarkName = "txtremark"+num;
		if (document.getElementById(selectName).value == "") {
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(selectName).style.borderColor = "red";
			document.getElementById(selectName).focus();
			document.getElementById(chkName).checked = false;
		}

		if (document.getElementById(quantityName).value == "") {
			document.getElementById(quantityName).style.borderColor = "red";
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(descriptionName).focus();
			document.getElementById(chkName).checked = false;
		}
		if (document.getElementById(unitCostPriceName).value == "") {
			// document.getElementById(descriptionName).style.borderColor="green";
			document.getElementById(unitCostPriceName).style.borderColor = "red";
			document.getElementById(unitCostPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(totalCostPriceName).value == "") {
			// document.getElementById(unitCostPriceName).style.borderColor="green";
			document.getElementById(totalCostPriceName).style.borderColor = "red";
			document.getElementById(totalCostPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(unitSellingPriceName).value == "") {
			// document.getElementById(totalCostPriceName).style.borderColor="green";
			document.getElementById(unitSellingPriceName).style.borderColor = "red";
			document.getElementById(unitSellingPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(totalSellingPriceName).value == "") {
			// document.getElementById(unitSellingPriceName).style.borderColor="green";
			document.getElementById(totalSellingPriceName).style.borderColor = "red";
			document.getElementById(totalSellingPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(expiryDate).value == "") {
			document.getElementById(expiryDate).style.borderColor = "red";
			document.getElementById(expiryDate).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
		}
		if (document.getElementById(selectName).value != "") {
			document.getElementById(selectName).style.borderColor = "green";
		}
		// if (document.getElementById(descriptionName).value != "") {
		// document.getElementById(descriptionName).style.borderColor = "green";
		// }
		if (document.getElementById(quantityName).value != "") {
			document.getElementById(quantityName).style.borderColor = "green";
		}
		if (document.getElementById(unitCostPriceName).value != "") {
			document.getElementById(unitCostPriceName).style.borderColor = "green";
		}
		if (document.getElementById(totalCostPriceName).value != "") {
			document.getElementById(totalCostPriceName).style.borderColor = "green";
		}
		if (document.getElementById(unitSellingPriceName).value != "") {
			document.getElementById(unitSellingPriceName).style.borderColor = "green";
		}
		if (document.getElementById(totalSellingPriceName).value != "") {
			document.getElementById(totalSellingPriceName).style.borderColor = "green";
		}
		if (document.getElementById(expiryDate).value != "") {
			document.getElementById(expiryDate).style.borderColor = "green";
		}
	}
}

function verifyThisRowForCashSales(num, alpha) {
	var chkName = "chk" + alpha;
	// //alert(chkName);
	if (document.getElementById(chkName).checked) {
		var selectName = "slctitem" + num;
		// var descriptionName = "txtdescription" + num;
		var quantityName = "txtquantity" + num;
		var unitPriceName = "txtunitprice" + num;
		var totalAmountName = "txttotalamount" + num;

		// var remarkName = "txtremark"+num;
		if (document.getElementById(selectName).value == "") {
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(selectName).style.borderColor = "red";
			document.getElementById(selectName).focus();
			document.getElementById(chkName).checked = false;
		}

		if (document.getElementById(quantityName).value == "") {
			document.getElementById(quantityName).style.borderColor = "red";
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			// document.getElementById(descriptionName).focus();
			document.getElementById(chkName).checked = false;
		}
		if (document.getElementById(unitPriceName).value == "") {
			// document.getElementById(descriptionName).style.borderColor="green";
			document.getElementById(unitPriceName).style.borderColor = "red";
			document.getElementById(unitPriceName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}
		if (document.getElementById(totalAmountName).value == "") {
			// document.getElementById(unitCostPriceName).style.borderColor="green";
			document.getElementById(totalAmountName).style.borderColor = "red";
			document.getElementById(totalAmountName).focus();
			document.getElementById('errorDiv').innerHTML = "Please enter the value!";
			document.getElementById(chkName).checked = false;
			// return false;
		}

		if (document.getElementById(selectName).value != "") {
			document.getElementById(selectName).style.borderColor = "green";
		}
		// if (document.getElementById(descriptionName).value != "") {
		// document.getElementById(descriptionName).style.borderColor = "green";
		// }
		if (document.getElementById(quantityName).value != "") {
			document.getElementById(quantityName).style.borderColor = "green";
		}
		if (document.getElementById(unitPriceName).value != "") {
			document.getElementById(unitPriceName).style.borderColor = "green";
		}
		if (document.getElementById(totalAmountName).value != "") {
			document.getElementById(totalAmountName).style.borderColor = "green";
		}
	}
}

function showTheCurrentItemQuantityOfThisItemWithItemSourceAndBranchId(itemId,
		itemSource, branchId, alpha) {
	// //alert(itemId+":"+itemSource+":"+branchId+":"+alpha);
	var itemSelectName = "slctitem" + alpha;
	var itemSourceName = "slctitemsource";
	var branchName = "slctfrombranch";
	if (itemId == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the item!";
		document.getElementById(itemSelectName).focus();
		document.getElementById(itemSelectName).style.borderColor = "red";
	} else if (itemSource == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the item source!";
		document.getElementById(itemSourceName).style.borderColor = "red";
		document.getElementById(itemSourceName).focus();
	} else if (branchId == "") {
		document.getElementById('errorDiv').innerHTML = "Please select the branch!";
		document.getElementById(branchName).style.borderColor = "red";
		document.getElementById(branchName).focus();
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("itemQuantityDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showthecurrentitemquantityofthisitemwithitemsourceandbranchid.jsp?itemId="
						+ itemId + "&itemSource=" + itemSource + "&branchId="
						+ branchId, true);
		xmlhttp.send();
	}
}

function showRoleForUser(userId) {
	// //alert(userId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("roleDetailForEmployee").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showroleforuser.jsp?userId=" + userId, true);
	xmlhttp.send();
}

function changeTheStoreForThisGIV(storeId) {
	document.getElementById('hiddenstoreid').value = storeId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("roleDetailForEmployee").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showroleforuser.jsp?userId=" + userId, true);
	xmlhttp.send();
}

function showItemDetailOfThisItem(itemId) {
	document.getElementById('innerItemDetailDiv').innerHTML = "";
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("itemListDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showitemdetailofthisitem.jsp?itemId=" + itemId, true);
	xmlhttp.send();
}

function showTheItemDetailsOfThisItem(itemId, storeId) {
	// //alert(itemId+":"+storeId);
	document.getElementById('innerItemDetailDiv').innerHTML = "";
	// //alert(itemId+":"+storeId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("innerItemDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showtheitemdetailsofthisitem.jsp?itemId=" + itemId
			+ "&storeId=" + storeId, true);
	xmlhttp.send();
}

function showGRVDetailToHelpFillGIV(grvNumber) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("grvDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showgrvdetailtohelpfillgiv.jsp?grvNumber=" + grvNumber, true);
	xmlhttp.send();
}

function showListOfGRVsForThisStoreAndThisItem(storeId, itemCode) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("grvDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofgrvsforthisstoreandthisitem.jsp?storeId="
			+ storeId + "&itemCode=" + itemCode, true);
	xmlhttp.send();
}

function deleteThisUser(userId) {
	if (window.confirm("Are you sure you want to delete this user?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisuser.jsp?userId=" + userId, true);
		xmlhttp.send();
	}
}

function showListOfAdmissionAgeRulesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("admissionAgeRuleDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofadmissionagerulesfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisAdmissionRule(id) {
	if (window.confirm("Are you sure you want to delete this admission rule")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("admissionAgeRuleDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisadmissionrule.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function deleteCategory(id) {
	if (window.confirm("Are you sure you want to delete this category")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletecategory.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showListOfEvaluationCriteriasForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("evaluationCriteriaDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofevaluationcriteriasfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisEvaluationCriteria(id) {
	if (window
			.confirm("Are you sure you want to delete this evaluation criteria")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("evaluationCriteriaDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisevaluationcriteria.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showListOfLevelsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("levelDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistoflevelsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisLevel(id) {
	if (window.confirm("Are you sure you want to delete this level")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethislevel.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showListOfPrimarySecondariesForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("primarySecondaryDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showprimarysecondariesfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisPrimarySecondary(id) {
	if (window.confirm("Are you sure you want to delete primary secondary")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisprimarysecondary.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showListOfSectionsForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("sectionDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsectionsfordelete.jsp", true);
	xmlhttp.send();
}

function showListOfSubjectForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subjectDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofsubjectsfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisSubject(id) {
	if (window.confirm("Are you sure you want to delete this subject")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethissubject.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showListOfTeacherForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("teacherDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofteachersfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisTeacher(id) {
	if (window.confirm("Are you sure you want to delete this teacher")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisteacher.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function deleteThsiSection(id) {
	if (window.confirm("Are you sure you want to delete this section")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethissection.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function saveAdmissionAgeRule(levelId, lowerBoundary, upperBoundary) {
	if (levelId == "") {
		document.getElementById("slctlevel").style.borderColor = "red";
		document.getElementById("slctlevel").focus();
		return false;
	} else if (lowerBoundary == "") {
		document.getElementById("txtlowerboundary").style.borderColor = "red";
		document.getElementById("txtlowerboundary").focus();
		return false;
	} else if (upperBoundary == "") {
		document.getElementById("txtupperboundary").style.borderColor = "red";
		document.getElementById("txtupperboundary").focus();
		return false;
	} else {

		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("admissionAgeRuleDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "saveadmissionagerule.jsp?levelId=" + levelId
				+ "&lowerBoundary=" + lowerBoundary + "&upperBoundary="
				+ upperBoundary, true);
		xmlhttp.send();
	}
}

function showAllSectionsOfThisLevelAndSpaceAvailableInEachSection(levelId,
		applicantId) {
	// //alert(levelId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("showSectionDetailsDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showallsectionsofthislevelandspaceavailableineachsection.jsp?levelId="
					+ levelId + "&applicantId=" + applicantId, true);
	xmlhttp.send();
}

function placeApplicantInThisSection(applicantId, sectionId) {
	// //alert(applicantId+":"+sectionId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "placeapplicantinthissection.jsp?applicantId="
			+ applicantId + "&sectionId=" + sectionId, true);
	xmlhttp.send();
}

function showAchievementEvaluationFormForThisStudentForEdit(studentId,
		subjectId, teacherId, termId, academicYearId) {
	// //alert(studentId);
	var divId = "evalDiv" + studentId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showachievementevaluationformforthisstudentforedit.jsp?studentId="
					+ studentId + "&subjectId=" + subjectId + "&teacherId="
					+ teacherId + "&termId=" + termId + "&academicYearId="
					+ academicYearId, true);
	xmlhttp.send();
}
function updateThisStudentEffortAchivementEvaluation(studentId, subjectId,
		teacherId, termId, academicYearId, evaluationCriteria) {
	var str = "";
	var divId = "evalDiv" + studentId;
	var numberOfRows = evaluationCriteria.rows.length - 2;
	evaluationCriteria = "";
	achievement = "";
	effort = "";
	teachersComment = "";
	evaluationCriteriaVal = "";
	achievementVal = "";
	effortVal = "";
	teachersCommentVal = "";
	for (i = 1; i <= numberOfRows; i++) {
		evaluationCriteria = "hidden" + i;
		achievement = "txtachievement" + i;
		effort = "txteffort" + i;
		teachersComment = "txtteachercomment" + i;
		evaluationCriteriaVal = document.getElementById(evaluationCriteria).value;
		achievementVal = document.getElementById(achievement).value;
		effortVal = document.getElementById(effort).value;
		teachersCommentVal = document.getElementById(teachersComment).value;
		str += "&" + evaluationCriteria + "=" + evaluationCriteriaVal + "&"
				+ achievement + "=" + achievementVal + "&" + effort + "="
				+ effortVal + "&" + teachersComment + "=" + teachersCommentVal;
	}
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"updatethisstudenteffortachievementevaluation.jsp?studentId="
					+ studentId + "&subjectId=" + subjectId + "&teacherId="
					+ teacherId + "&termId=" + termId + "&academicYearId="
					+ academicYearId + "&numberOfRows=" + numberOfRows + str,
			true);
	xmlhttp.send();
}
function hideAchievementEvaluationFormForThisStudentForEdit(id) {
	var div = "evalDiv" + id;
	document.getElementById(div).innerHTML = "";
}

function showAchievementEvaluationFormForThisStudent(studentId, subjectId,
		levelId, teacherId) {
	// //alert(studentId);
	var divId = "evalDiv" + studentId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showachievementevaluationformforthisstudent.jsp?studentId="
					+ studentId + "&subjectId=" + subjectId + "&levelId="
					+ levelId + "&teacherId=" + teacherId, true);
	xmlhttp.send();
}

function hideAchievementEvaluationFormForThisStudent(studentId) {
	var divId = "evalDiv" + studentId;
	document.getElementById(divId).innerHTML = "";
}

function saveEvaluationForStudent(studentId, teacherId, subjectId, strValues,
		comment, academicYearId, termId) {
	// //alert(studentId+":"+teacherId+":"+subjectId+":"+strValues);
	var divId = "evalDiv" + studentId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divId).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveevaluationforstudent.jsp?studentId=" + studentId
			+ "&subjectId=" + subjectId + "&teacherId=" + teacherId
			+ "&strValues=" + strValues + "&comment=" + comment
			+ "&academicYearId=" + academicYearId + "&termId=" + termId, true);
	xmlhttp.send();
}

function calculateTotalValuesAndDisplayTheResultForCosmotics(grid) {
	// //alert(grid);
	var cashSalesGridRowVal = grid.rows.length - 1;
	// //alert("the row size is: "+cashSalesGridRowVal);
	var rowCounter = 0;

	// now check how many of the rows are checked...
	for (i = 1; i <= cashSalesGridRowVal; i++) {
		var chkName = "chk" + i;
		// //alert(document.getElementById(chkName).checked);
		if (document.getElementById(chkName).checked) {
			rowCounter++;
		}
	}

	var sumTotal = 0;
	var vat = 0;
	var totalIncludingVat = 0;
	var totalValue;
	for (i = 1; i <= rowCounter; i++) {
		var totalValueName = "txttotalamount" + i;
		if (document.getElementById(totalValueName).value == "") {
			document.getElementById('errorDiv').innerHTML = "Please enter the total amount!";
			document.getElementById(totalValueName).style.borderColor = "red";
			document.getElementById(totalValueName).focus();
			return false;
		} else {
			totalValue = parseFloat(document.getElementById(totalValueName).value);
			sumTotal += totalValue;
		}
	}// end for loop
	// //alert(sumTotal);
	document.getElementById('txttotal').value = sumTotal.toFixed(2);
	vat = parseFloat("0.15") * sumTotal;
	totalIncludingVat = sumTotal + vat;
	document.getElementById('txtvat').value = vat.toFixed(2);
	document.getElementById('txttotalincludingvat').value = totalIncludingVat
			.toFixed(2);
}

function calculateTotalValuesAndDisplayTheResult(grid) {
	var cashSalesGridRowVal = grid.rows.length - 1;

	var rowCounter = 0;

	// now check how many of the rows are checked...
	for (i = 1; i <= cashSalesGridRowVal; i++) {
		var chkName = "chk" + i;
		// //alert(document.getElementById(chkName).checked);
		if (document.getElementById(chkName).checked) {
			rowCounter++;
		}
	}

	// //alert("the row size is: "+cashSalesGridRowVal);
	var sumTotal = 0;
	var vat = 0;
	var totalIncludingVat = 0;
	var totalValue;
	for (i = 1; i <= rowCounter; i++) {
		var totalValueName = "txttotalamount" + i;
		if (document.getElementById(totalValueName).value == "") {
			document.getElementById('errorDiv').innerHTML = "Please enter the total amount!";
			document.getElementById(totalValueName).style.borderColor = "red";
			document.getElementById(totalValueName).focus();
			return false;
		} else {
			totalValue = parseFloat(document.getElementById(totalValueName).value);
			sumTotal += totalValue;
		}
	}// end for loop
	// //alert(sumTotal);
	document.getElementById('txttotal').value = sumTotal.toFixed(2);
}

function showStockValueForThisBranch(branchId, itemId, rowNumber) {
	// //alert(branchId+":"+rowNumber);
	if (branchId != "") {
		var controlName = "txtstockquantity" + rowNumber;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById(controlName).value = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showthestockquantityforstoreofthisbranch.jsp?branchId="
						+ branchId + "&itemId=" + itemId, true);
		xmlhttp.send();
	} else {
		document.getElementById('errorDiv').innerHTML = "Please select the branch!";
		document.getElementById('branch').style.borderColor = "red";
		document.getElementById('branch').focus();
	}
}

function showListOfCashSales() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchSelectorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp
			.open("GET", "showbranchselectorforshowinglistofcashsales.jsp",
					true);
	xmlhttp.send();
}

function showListOfCreditSales() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("branchSelectorDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showbranchselectorforshowinglistofcreditsales.jsp",
			true);
	xmlhttp.send();
}

function showListOfCashSalesToView(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcashsalestoview.jsp?branchId=" + branchId,
			true);
	xmlhttp.send();
}

function showListOfCreditSalesToView(branchId) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("tabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofcreditsalestoview.jsp?branchId=" + branchId,
			true);
	xmlhttp.send();
}


function showCreditSalesDetailsFor(creditSalesId) {
	var divName = "creditSalesDetailDiv" + creditSalesId
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divName).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcreditsalesdetailsfor.jsp?creditSalesId="
			+ creditSalesId, true);
	xmlhttp.send();
}

function showCashSalesDetailsFor(cashSalesId) {
	// //alert(cashSalesId);
	var divName = "cashSalesDetailDiv" + cashSalesId
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(divName).innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showcashsalesdetailsfor.jsp?cashSalesId="
			+ cashSalesId, true);
	xmlhttp.send();
}

function getTheUnitCostPriceOfThisItemInFromThisStore(itemId, branchId, num) {
	// //alert(itemId+":"+branchId+":"+num);
	var displayArea = "txtunitcostprice" + num;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById(displayArea).value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"gettheunitcostpriceofthisiteminfromthisstore.jsp?itemId=" + itemId
					+ "&branchId=" + branchId, true);
	xmlhttp.send();
}

function printDiv1(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML; 
    document.body.innerHTML = printContents; 
    window.focus();
    
   // window.forward(showlistofstudentsfromthissectionemergency.jsp);
    window.print();
    document.body.innerHTML = originalContents;
}

function printDiv2(elementId) {
	alert("1");
    var getMyFrame = document.getElementById(elementId);
    alert("2");
    getMyFrame.focus();
    alert("3");
    getMyFrame.contentWindow.print();
    alert("4");
}
function printDiv3(divName) {	
	var printContents = document.getElementById(divName).innerHTML;
	alert(printContents);
	  var win = window.open();
	  alert("33334");
	  self.focus();
	  win.document.open();
	  win.document.write('<'+'html'+'><'+'body'+'>');
	  win.document.write(divName);
	  win.document.write('<'+'/body'+'><'+'/html'+'>');
	  alert("win.document = "+win.document);
	  win.document.close();
	  win.print();
	  win.close();
	}
function printDiv(divId) {
    window.frames["print_frame"].document.body.innerHTML=document.getElementById(divId).innerHTML
    window.frames["print_frame"].window.focus()
    window.frames["print_frame"].window.print()
}
function showSalesSummaryEntryForm() {
	// //alert("mahder");
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('content').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsalessummaryentryform.jsp", true);
	xmlhttp.send();
}

function saveThisVATItem(itemCode) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
			document.getElementById('subTabDetailDiv').innerHTML = "<p class='msg done'>VAT Item List Added Successfully!</p>";
		}
	}
	xmlhttp.open("GET", "savethisvatitem.jsp?itemCode=" + itemCode, true);
	xmlhttp.send();
}

function showVATItemListManagmentForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('content').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showvatitemlistmanagmentform.jsp", true);
	xmlhttp.send();
}

function showInputVATItemListForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showinputvatitemlistform.jsp", true);
	xmlhttp.send();
}

function showVATItemListForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showvatitemlistforedit.jsp", true);
	xmlhttp.send();
}

function showVATItemListForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showvatitemlistfordelete.jsp", true);
	xmlhttp.send();
}

function deleteThisVATItem(id) {
	if (window.confirm("Are you sure you want to delete this VAT item?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethsivatitem.jsp?id=" + id, true);
		xmlhttp.send();
	}
}

function showEditFieldsOfThisVATItem(id) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('editVATItemDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofthisvatitem.jsp?id=" + id, true);
	xmlhttp.send();
}

function updateThisVATItemList(id, itemCode) {
	// //alert(id+":"+itemId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
			document.getElementById('editVATItemDiv').innerHTML = "<p class='msg done'>VAT Item Updated Successfully!</p>";
		}
	}
	xmlhttp.open("GET", "updatethisvatitemlist.jsp?id=" + id + "&itemCode="
			+ itemCode, true);
	xmlhttp.send();
}

function showInputSalesSummaryForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showinputsalessummaryform.jsp", true);
	xmlhttp.send();
}

function showSalesSummaryForEdit() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showsalessummaryforeditcashieranddateselectorbar.jsp",
			true);
	xmlhttp.send();
	
}

function showListOfInputEntriesOfThisCashierOnThisDateForEdit(cashierId,
		dateDeposited) {
	// //alert(cashierId+":"+dateDeposited);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('inputEntryListDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofinputentriesofthiscashieronthisdateforedit.jsp?cashierId="
					+ cashierId + "&dateDeposited=" + dateDeposited, true);
	xmlhttp.send();
}

function showListOfInputEntriesOfThisCashierOnThisDateForDelete(cashierId,
		dateDeposited) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('inputEntryListDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showlistofinputentriesofthiscashieronthisdatefordelete.jsp?cashierId="
					+ cashierId + "&dateDeposited=" + dateDeposited, true);
	xmlhttp.send();
}

function updateThisDeposit(depositId, cashRegisterSalesAmount,
		cashRegisterVATAmount, depositedAmount, creditAmount) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('inputEntryListDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updatethisdeposit.jsp?depositId=" + depositId
			+ "&cashRegisterSalesAmount=" + cashRegisterSalesAmount
			+ "&cashRegisterVATAmount=" + cashRegisterVATAmount
			+ "&depositedAmount=" + depositedAmount + "&creditAmount="
			+ creditAmount, true);
	xmlhttp.send();
}

function showEditFieldsOfThisDeposit(depositId) {
	// //alert(depositId);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('depositEditDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showeditfieldsofthisdeposit.jsp?depositId="
			+ depositId, true);
	xmlhttp.send();
}

function deleteThisDeposit(depositId) {
	if (window.confirm("Are you sure you want to delete this deposit?")) {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById('inputEntryListDiv').innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "deletethisdeposit.jsp?depositId=" + depositId,
				true);
		xmlhttp.send();
	}
}

function showSalesSummaryForDelete() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showsalessummaryfordeletecashieranddateselectorbar.jsp", true);
	xmlhttp.send();
}

function saveInputSalesSummaryForm(cashierId, cashRegisterSalesAmount,
		cashRegisterVATAmount, depositedAmount, creditAmount, dateDeposited) {
	// //alert(cashierId+":"+cashRegisterSalesAmount+":"+depositedAmount);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('tabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveinputsalessummaryform.jsp?cashierId=" + cashierId
			+ "&cashRegisterSalesAmount=" + cashRegisterSalesAmount
			+ "&depositedAmount=" + depositedAmount + "&cashRegisterVATAmount="
			+ cashRegisterVATAmount + "&creditAmount=" + creditAmount
			+ "&dateDeposited=" + dateDeposited, true);
	xmlhttp.send();
}

function showCashCreditSalesSummaryReportForThisBranch(branchId, from, to) {
	// //alert(branchId+":"+from+":"+to);
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('salesSummaryReportDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET",
			"showcashcreditsalessummaryreportforthisbranch.jsp?branchId="
					+ branchId + "&from=" + from + "&to=" + to, true);
	xmlhttp.send();
}

function saveGradeCard2(teacherId, sectionId, academicYearId, semesterId, subjectId, counter) {
	str = '';
	studentId = '';
	grade = '';
	eff = '';
	cond = '';
	studentIdVal = '';
	gradeVal = '';
	effVal = '';
	condVal = '';
	
	for ( var i = 1; i < counter; i++) {
		studentId = 'studentId_' + i;
		grade = 'txtGrade_' + i;
		eff = 'txtEff_' + i;
		cond = 'txtNarrative_' + i;
		
		studentIdVal = document.getElementById(studentId).value;
		gradeVal = document.getElementById(grade).value;
		effVal = document.getElementById(eff).value;
		condVal = document.getElementById(cond).value;
		
		str += "&" + studentId + "=" + studentIdVal 
			 + "&" + grade + "="	+ gradeVal 
			 + "&" + eff + "=" + effVal
			 + "&" + cond + "=" + condVal
	}
	
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}

	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('subTabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}

	xmlhttp.open("GET", "savegradecard.jsp?teacherId=" + teacherId			
			+ "&sectionId=" + sectionId + "&academicYearId=" + academicYearId
			+ "&semesterId=" + semesterId + "&subjectId=" + subjectId + "&counter=" + counter + str, true);
	xmlhttp.send();
}

function saveAttendance(teacherId, date, sectionId, attendance,
		attendanceSession) {
	str = '';
	studentId = '';
	tardiId = '';
	absentId = '';
	studentIdVal = '';
	tardiIdVal = '';
	absentIdVal = '';
	attendanceCounter = attendance.rows.length - 2;
	for ( var i = 1; i <= attendanceCounter; i++) {
		studentId = 'hiddenattendance' + i;
		tardiId = 'checkboxtardi' + i;
		absentId = 'checkboxabsent' + i;

		studentIdVal = document.getElementById(studentId).value;
		if (document.getElementById(tardiId).checked) {
			tardiIdVal = 1;
		} else {
			tardiIdVal = 0;
		}

		if (document.getElementById(absentId).checked) {
			absentIdVal = 1;
		} else {
			absentIdVal = 0;
		}
		str += "&" + studentId + "=" + studentIdVal + "&" + tardiId + "="
				+ tardiIdVal + "&" + absentId + "=" + absentIdVal
	}

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('subTabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "saveattendance.jsp?teacherId=" + teacherId
			+ "&attendanceSession=" + attendanceSession + "&date=" + date
			+ "&sectionId=" + sectionId + "&attCounter=" + attendanceCounter
			+ str, true);
	xmlhttp.send();
}

function updateAttendance(teacherId, date, sectionId, attendance,attendanceSession) {
	////alert("teacherId : "+teacherId+"  date : "+ date+"  sectionId : "+sectionId+"  attendance : "+attendance+"  attendanceSession : "+attendanceSession);
	str = '';
	studentId = '';
	tardiId = '';
	absentId = '';
	studentIdVal = '';
	tardiIdVal = '';
	absentIdVal = '';
	attendanceCounter = attendance.rows.length - 2;
	for ( var i = 1; i <= attendanceCounter; i++) {
		studentId = 'hiddenattendance' + i;
		tardiId = 'checkboxtardi' + i;
		absentId = 'checkboxabsent' + i;		
		studentIdVal = document.getElementById(studentId).value;
		
		if (document.getElementById(tardiId).checked) {
			tardiIdVal = 1;
		} else {
			tardiIdVal = 0;
		}

		if (document.getElementById(absentId).checked) {
			absentIdVal = 1;
		} else {
			absentIdVal = 0;
		}
		str += "&" + studentId + "=" + studentIdVal + "&" + tardiId + "="
				+ tardiIdVal + "&" + absentId + "=" + absentIdVal
	}

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById('subTabDetailDiv').innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "updateattendance.jsp?teacherId=" + teacherId
			+ "&attendanceSession=" + attendanceSession + "&date=" + date
			+ "&sectionId=" + sectionId + "&attCounter=" + attendanceCounter
			+ str, true);
	xmlhttp.send();
}
function showListOfAttendance() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofattendancecriteria.jsp", true);
	xmlhttp.send();
}

function showNotificationAttendanceDetail(sectionId, teacherId,
		attendanceSession, treshold) {
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (attendanceSession == "") {
		document.getElementById('slctsession').style.borderColor = "red";
		document.getElementById('slctsession').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("attendanceShowDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "notificationdetail.jsp?sectionId=" + sectionId
				+ "&teacherId=" + teacherId + "&date=" + date
				+ "&attendanceSession=" + attendanceSession, true);
		xmlhttp.send();
	}
}

function showListOfStudentsForAttendanceView(sectionId, teacherId, date,
		attendanceSession) {
	// //alert(sectionId+" "+teacherId+" "+date+" "+attendanceSession);
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else if (date == "") {
		document.getElementById("txtdate").style.borderColor = "red";
		document.getElementById("txtdate").focus();
		return false;
	} else if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (attendanceSession == "") {
		document.getElementById('slctsession').style.borderColor = "red";
		document.getElementById('slctsession').focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("attendanceShowDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsforattendanceview.jsp?sectionId="
						+ sectionId + "&teacherId=" + teacherId + "&date="
						+ date + "&attendanceSession=" + attendanceSession,
				true);
		xmlhttp.send();
	}
}

function showListOfStudentsForNotification(sectionId, level, teacherId,
		attendanceSession, dateFrom, dateTo, type) {
	// //alert(type);
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (attendanceSession == "") {
		document.getElementById('slctsession').style.borderColor = "red";
		document.getElementById('slctsession').focus();
		return false;
	} else if (dateFrom == "") {
		document.getElementById("txtdateFrom").style.borderColor = "red";
		document.getElementById("txtdateFrom").focus();
		return false;
	}else if (dateTo == "") {
		document.getElementById("txtdateTo").style.borderColor = "red";
		document.getElementById("txtdateTo").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("notifShowDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "notificationview.jsp?sectionId=" + sectionId
				+ "&teacherId=" + teacherId + "&level=" + level
				+ "&attendanceSession=" + attendanceSession + "&dateFrom="
				+ dateFrom + "&dateTo=" + dateTo  + "&types=" + type, true);
		xmlhttp.send();
	}

}

function showListOfStudentsForNotificationEdit(sectionId, level, teacherId,
		attendanceSession, dateFrom, dateTo, type) {
	// //alert(type);
	if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (attendanceSession == "") {
		document.getElementById('slctsession').style.borderColor = "red";
		document.getElementById('slctsession').focus();
		return false;
	} else if (dateFrom == "") {
		document.getElementById("txtdateFrom").style.borderColor = "red";
		document.getElementById("txtdateFrom").focus();
		return false;
	}else if (dateTo == "") {
		document.getElementById("txtdateTo").style.borderColor = "red";
		document.getElementById("txtdateTo").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("notifShowDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "notificationviewedit.jsp?sectionId=" + sectionId
				+ "&teacherId=" + teacherId + "&level=" + level
				+ "&attendanceSession=" + attendanceSession + "&dateFrom="
				+ dateFrom + "&dateTo=" + dateTo  + "&types=" + type, true);
		xmlhttp.send();
	}

}

function showListOfAttendanceForEdit() {

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showlistofattendanceforedit.jsp", true);
	xmlhttp.send();

}

function showListOfStudentsForAttendanceEdit(sectionId, teacherId, date,
		attendanceSession) {
	if (teacherId == "") {
		document.getElementById("slctteacher").style.borderColor = "red";
		document.getElementById("slctteacher").focus();
		return false;
	} else if (date == "") {
		document.getElementById("txtdate").style.borderColor = "red";
		document.getElementById("txtdate").focus();
		return false;
	} else if (sectionId == "") {
		document.getElementById("slctsection").style.borderColor = "red";
		document.getElementById("slctsection").focus();
		return false;
	} else if (attendanceSession == "") {
		document.getElementById("slctsession").style.borderColor = "red";
		document.getElementById("slctsession").focus();
		return false;
	} else {
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
			// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("attendanceEditDiv").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET",
				"showlistofstudentsforattendanceedit.jsp?sectionId="
						+ sectionId + "&teacherId=" + teacherId + "&date="
						+ date + "&attendanceSession=" + attendanceSession,
				true);
		xmlhttp.send();
	}
}

function showManageGrade() {

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		alert("xmlhttp.readyState = "+xmlhttp.readyState+"     xmlhttp.status = "+xmlhttp.status);
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("subTabDetailDiv").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showManageGrade.jsp", true);
	xmlhttp.send();

}
function changeLevelForThisAdmissionProcess(levelId) {
	document.getElementById('hiddenleveladmission').value = levelId;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("txtleveladmission").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "changelevelforthisadmissionagerule.jsp?levelId="
			+ levelId, true);
	xmlhttp.send();
}

function clearTextOnThisField(fieldId) {
	// //alert(fieldId);
	document.getElementById(fieldId).value = "";
}

function showIncrementalAttachmentForm() {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("attachmentDiv").value = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "showincrementalattachmentform.jsp", true);
	xmlhttp.send();
}

function insertNewGridRowAttachment(grid) {
	var newRowId = grid.rows.length - 1;
	// //alert("the row size is : "+newRowId);
	// //alert("next id should begin from : "+newRowId);
	var tBody = grid.getElementsByTagName('tbody')[0];
	var newTR = document.createElement('tr');
	var newTDTitle = document.createElement('td');
	var newTDDescription = document.createElement('td');
	// var newTDRoute = document.createElement('td');
	// var newTDFrequency = document.createElement('td');

	// now comes the naming of the tds for each row
	var newFileAttachment = "flesupportivedoc" + newRowId;
	var newDescriptionName = "textareadescription" + newRowId;
	// var newDoseName = "txtdose" + newRowId;
	// var newRouteName = "txtroute" + newRowId;
	// var newFrequencyName = "txtfrequency" + newRowId;

	// now create the text boxes and put them in the tds
	var attachFile = "Scanned supportive document: <input type='file' name='"
			+ newFileAttachment + "' id='" + newFileAttachment
			+ "' size='12'/>";
	var descriptionTextarea = "Description<br/><textarea name='"
			+ newDescriptionName + "' id='" + newDescriptionName
			+ "' cols='90' rows='2'></textarea>";

	newTDTitle.innerHTML = attachFile;
	newTDDescription.innerHTML = descriptionTextarea;

	newTR.appendChild(newTDTitle);
	newTR.appendChild(newTDDescription);
	// newTR.appendChild(newTDRoute);
	// newTR.appendChild(newTDFrequency);
	tBody.appendChild(newTR);
	var newRowIdAfterInsertingRow = grid.rows.length;
	// now add this to the hidden row counter
	document.getElementById('hiddentablerowctr').value = (newRowIdAfterInsertingRow - 2);
}

function savenotifaction(desc, stud, section, session, type, isNew) {
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
		// Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("all").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "savenotifaction.jsp?section=" + section + "&desc="
			+ desc + "&stud=" + stud + "&session=" + session + "&type=" + type + "&isNew=" + isNew,
			true);

	xmlhttp.send();
}

function midyearreportforp(id)
{
	////alert(id);
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('textarea').innerHTML="";
        	document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('diplayta').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay.jsp?id="+id,true);
    xmlhttp.send();
}
function DOB(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();
        xmlhttp2=new XMLHttpRequest();
        xmlhttp3=new XMLHttpRequest();
        xmlhttp4=new XMLHttpRequest();
        xmlhttp5=new XMLHttpRequest();
        xmlhttp6=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp2=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp3=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp4=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp5=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp6=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dated').innerHTML=xmlhttp.responseText;
            
        }
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
    	 if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('textarea').innerHTML=xmlhttp1.responseText;
             
         }
    };
    
    xmlhttp2.onreadystatechange=function()
    {
    	 if (xmlhttp2.readyState==4 && xmlhttp2.status==200)
         {
             document.getElementById('teacher').innerHTML=xmlhttp2.responseText;       
         }
    };
    
    
    xmlhttp3.onreadystatechange=function()
    {
    	 if (xmlhttp3.readyState==4 && xmlhttp3.status==200)
         {
             document.getElementById('dhead').innerHTML=xmlhttp3.responseText;       
         }
    };
    
    
    
    xmlhttp4.onreadystatechange=function()
    {
    	 if (xmlhttp4.readyState==4 && xmlhttp4.status==200)
         {
    		 document.getElementById('contenta').innerHTML=xmlhttp4.responseText;
             
         }
    };
    
    xmlhttp5.onreadystatechange=function()
    {
    	 if (xmlhttp5.readyState==4 && xmlhttp5.status==200)
         {
    		 document.getElementById('age').innerHTML=xmlhttp5.responseText;             
         }
    };
    
    
    xmlhttp6.onreadystatechange=function()
    {
    	 if (xmlhttp6.readyState==4 && xmlhttp6.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('diplayta').innerHTML=xmlhttp6.responseText;
             
         }
    };
    
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);	
        xmlhttp1.open("POST","narration.jsp?id="+id,true); 
        xmlhttp2.open("POST","teacherdispaly.jsp?id="+id,true);
        xmlhttp3.open("POST","departmenthade.jsp?id="+id,true);
        xmlhttp4.open("POST","mideyearreport.jsp?id="+id,true);
        xmlhttp5.open("POST","agedisplay.jsp?id="+id,true);
        xmlhttp6.open("POST","narratioreception.jsp?id="+id,true);
            
  
    xmlhttp.send();
    xmlhttp1.send();
    xmlhttp2.send();
    xmlhttp3.send();
    xmlhttp4.send();
    xmlhttp5.send();
    xmlhttp6.send();
}


///////////////////////////End of year report////////////////////////////////

function showstudentevaluationformMenu(menu) {
	alert(menu);
	if (menu == "receptionmidyearreport") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "report1.jsp", true);
		xmlhttp.send();
	} else if (menu == "Profile 1") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "receptionendofyearassessmentintry.jsp", true);
		xmlhttp.send();
	} else if (menu == "Profile 2") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "profile2.jsp", true);
		xmlhttp.send();
	} else if (menu == "Early Year End of Year Report") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "earlyyearendofyearentry.jsp", true);
		xmlhttp.send();
	} else if (menu == "keystageonemidyear") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "keysatgeonemidyearprimaryscoolreport.jsp", true);
		xmlhttp.send();
	} else if (menu == "keystageoneendofschool") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "Keystageoneendyear.jsp", true);
		xmlhttp.send();
	}

	else if (menu == "keystagetwomidyear") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "keystagetwomidyearprimaryschoolreport.jsp", true);
		xmlhttp.send();
	} else if (menu == "keystagetwoendofschool") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "Keystagetwoendyear.jsp", true);
		xmlhttp.send();
	} else if (menu == "ICT") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "ictspecialcourse.jsp", true);
		xmlhttp.send();
	} else if (menu == "Music") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "musicspeciality.jsp", true);
		xmlhttp.send();
	} else if (menu == "PE") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "pespeciality.jsp", true);
		xmlhttp.send();
	} else if (menu == "Amharic") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "amharicspeciality.jsp", true);
		xmlhttp.send();
	} else if (menu == "French") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "frenchspeciality.jsp", true);
		xmlhttp.send();
	} else if (menu == "Reception") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "receptionmenureport.jsp", true);
		xmlhttp.send();
	} else if (menu == "Key Stage One") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "menuforreportkeystageoneendyear.jsp", true);
		xmlhttp.send();
	}

	else if (menu == "Key Stage Two") {
		document.getElementById('showreception').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreception").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "menuforreportkeystagetwoendyear.jsp", true);
		xmlhttp.send();
	}
}
function showreceptionforrpt(menu) {
	if (menu == "receptionmidyearreport1") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "reportforreceptionmidyearreport.jsp", true);
		xmlhttp.send();
	}

	else if (menu == "Key Stage One End-Year Reportaa") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "reportkeystageoneendyear.jsp", true);
		xmlhttp.send();
	} else if (menu == "Key Stage One Mid-Year Reportaa") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "reportkeystageonemidyear.jsp", true);
		xmlhttp.send();
	} else if (menu == "Key Stage Two End-Year Reportaa") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "reportkeystagetwoendyear.jsp", true);
		xmlhttp.send();
	}

	else if (menu == "Key Stage Two Mid-Year Reportaa") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "reportkeystagetwomidyear.jsp", true);
		xmlhttp.send();
	} else if (menu == "Early Year End of Year Report1") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "earlyyearendofyearreportr.jsp", true);
		xmlhttp.send();
	}

	else if (menu == "Profile 11") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "profile1report.jsp", true);
		xmlhttp.send();
	}

	else if (menu == "reception End of Year class summary") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "receptionendofyearassessmentprofile2.jsp", true);
		xmlhttp.send();
	} else if (menu == "reception End of Year class summary specific") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "specificareas.jsp", true);
		xmlhttp.send();
	}

	else if (menu == "Profile 22") {
		document.getElementById('showreceptiondetail').innerHTML = "";
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera,
									// Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("showreceptiondetail").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "profile2report.jsp", true);
		xmlhttp.send();
	}

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
function profile2report(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforprofile2.jsp?id="+id,true);
    xmlhttp.send();
}

function profile1finalreport(secid,sid,dob)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showprofile1report.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
        xmlhttp.send();	
}

function datedispalayforprofile1rreport(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}


function profile1yearendyearreportj(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforprofile1yearreport.jsp?id="+id,true);
    xmlhttp.send();
}

function earlyyearfinalreport(secid,sid,dob)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showearlyyearendofyearreport.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
        xmlhttp.send();	
}

function datedispalayforearlyyearreport(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}


function earlyyearendyearreportj(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforearlyyearreport.jsp?id="+id,true);
    xmlhttp.send();
}

function midyearreportforkstreport(secid,sid,age)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showkeystagetwomidyearreport.jsp?secid="+secid+"&sid="+sid+"&age="+age,true);      
        xmlhttp.send();	
}


function midyearreportforkstreporta(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('age').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforkstreport.jsp?id="+id,true);
    xmlhttp.send();
}

function midyearreportforksoreport(secid,sid,age)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","showkeystageonemidyearreport.jsp?secid="+secid+"&sid="+sid+"&age="+age,true);      
        xmlhttp.send();	
}


function agedispalayforreport(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('age').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","agedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}


function midyearreportforksoreporta(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('age').innerHTML="";         	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforksoreport.jsp?id="+id,true);
    xmlhttp.send();
}

function endofyearDOB3(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}
function showkeystagetwoendeyear(secid,sid,dob)
{
	if (window.XMLHttpRequest)
	    {// code for IE7+, Firefox, Chrome, Opera, Safari
	        xmlhttp=new XMLHttpRequest();       
	    }
	    else
	    {// code for IE6, IE5
	        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
	    }
	    xmlhttp.onreadystatechange=function()
	    {
	        if (xmlhttp.readyState==4 && xmlhttp.status==200)
	        {
	        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
	        }                
	    };   
	        
	        xmlhttp.open("POST","showkeystagetwoendeyearreport.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
	        xmlhttp.send();
}




function midyearreportforpp3(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay23.jsp?id="+id,true);
    xmlhttp.send();
}

function endofyearDOB2(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();       
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	 document.getElementById('dated').innerHTML=xmlhttp.responseText;            
        }                
    };   
        
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);      
        xmlhttp.send();
    
}
function showkeystageoneendeyear(secid,sid,dob)
{
	if (window.XMLHttpRequest)
	    {// code for IE7+, Firefox, Chrome, Opera, Safari
	        xmlhttp=new XMLHttpRequest();       
	    }
	    else
	    {// code for IE6, IE5
	        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");        
	    }
	    xmlhttp.onreadystatechange=function()
	    {
	        if (xmlhttp.readyState==4 && xmlhttp.status==200)
	        {
	        	 document.getElementById('printdisplay').innerHTML=xmlhttp.responseText;            
	        }                
	    };   
	        
	        xmlhttp.open("POST","showkeystageoneendeyearreport.jsp?secid="+secid+"&sid="+sid+"&dob="+dob,true);      
	        xmlhttp.send();
}



function midyearreportforpp2(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('printdisplay').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay22.jsp?id="+id,true);
    xmlhttp.send();
}


function midyearreportforp(id)
{
	//alert(id);
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('textarea').innerHTML="";
        	document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('diplayta').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay.jsp?id="+id,true);
    xmlhttp.send();
}

function midyearreportforpp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('textarea').innerHTML="";
        	document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay2.jsp?id="+id,true);
    xmlhttp.send();
}

function endyearreportforp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst.jsp?id="+id,true);
    xmlhttp.send();
}

function endyearreportforpp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst2.jsp?id="+id,true);
    xmlhttp.send();
}

function namedforearly(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dtext').innerHTML="";
        	  
        	
            
        }     
        document.getElementById('dated').innerHTML="";
        document.getElementById('formdisplay').innerHTML="";
    };
  xmlhttp.open("POST","nameforearlyyear.jsp?id="+id,true);
    xmlhttp.send();
}
/////////////////////
function displaynarration(text)
{
document.getElementById('Display').innerHTML = text;
}

function savenarration(sid,narration,callbackFunction)
{
	if(narration=="")
		{
		ValidateForm();
		return false;
		}
	else
		{
		url="savenaration.jsp";
    	var sendmessage="sid="+sid+"&narration="+narration;
    	
    	var XMLHttpRequestObject = false;
    	if (window.XMLHttpRequest) {
    	XMLHttpRequestObject = new XMLHttpRequest();
    	} else if (window.ActiveXObject) {
    	XMLHttpRequestObject = new
    	ActiveXObject("Microsoft.XMLHTTP");
    	}
    	if(XMLHttpRequestObject) {
    	XMLHttpRequestObject.open("POST", url);
    	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    	XMLHttpRequestObject.onreadystatechange = function()
    	{
    	if (XMLHttpRequestObject.readyState == 4 &&
    	XMLHttpRequestObject.status == 200) {
    	callbackFunction(XMLHttpRequestObject.responseText);
    	delete XMLHttpRequestObject;
    	XMLHttpRequestObject = null;
    	}
    	};
    	XMLHttpRequestObject.send(sendmessage);
   	}   
   }
}





function updatenarration(sid,narration,callbackFunction)
{
	if(narration=="" && sid!="")
	{
	ValidateForm();
	return false;
	}
	else
	{
		url="updatenaration.jsp";
    	var sendmessage="sid="+sid+"&narration="+narration;
    	
    	var XMLHttpRequestObject = false;
    	if (window.XMLHttpRequest) {
    	XMLHttpRequestObject = new XMLHttpRequest();
    	} else if (window.ActiveXObject) {
    	XMLHttpRequestObject = new
    	ActiveXObject("Microsoft.XMLHTTP");
    	}
    	if(XMLHttpRequestObject) {
    	XMLHttpRequestObject.open("POST", url);
    	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    	XMLHttpRequestObject.onreadystatechange = function()
    	{
    	if (XMLHttpRequestObject.readyState == 4 &&
    	XMLHttpRequestObject.status == 200) {
    	callbackFunction(XMLHttpRequestObject.responseText);
    	delete XMLHttpRequestObject;
    	XMLHttpRequestObject = null;
    	}
    	};
    	XMLHttpRequestObject.send(sendmessage);
   	}   
   }
}





function DOBforearlyyear(id)
{
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();
        xmlhttp2=new XMLHttpRequest();
    }
	else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp2=new ActiveXObject("Microsoft.XMLHTTP");
    }
	xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dated').innerHTML=xmlhttp.responseText;
            
        }
    };
    
    xmlhttp1.onreadystatechange=function()
    {
        if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dtext').innerHTML=xmlhttp1.responseText;
            
        }
    };
    
    xmlhttp2.onreadystatechange=function()
    {
        if (xmlhttp2.readyState==4 && xmlhttp2.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('formdisplay').innerHTML=xmlhttp2.responseText;
            
        }
    };
    xmlhttp.open("POST","dobforearlyyear.jsp?id="+id,true);
    xmlhttp1.open("POST","narrationearlyyearendofyearreport.jsp?id="+id,true);
    xmlhttp2.open("POST","narrationprofile2.jsp?id="+id,true);
    xmlhttp.send();
    xmlhttp1.send();
    xmlhttp2.send();
}
function endyearreportforpp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst2.jsp?id="+id,true);
    xmlhttp.send();
}





function DOBforkso(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('age').innerHTML=xmlhttp.responseText;            
        }
       
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
        if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('narrationd').innerHTML=xmlhttp1.responseText;            
        }
       
                
    };
    xmlhttp.open("get","agedisplay.jsp?id="+id,true);
    xmlhttp1.open("get","narrationkeysatgeonemidyearprimaryscoolreport.jsp?id="+id,true);
    xmlhttp.send();
    xmlhttp1.send();
    
}
function midyearreportforkso(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('age').innerHTML="";               	            
        }
        document.getElementById('narrationd').innerHTML = "";
    };
  xmlhttp.open("POST","namediplayforkso.jsp?id="+id,true);
    xmlhttp.send();
}

////////////////////

function midyearreportforkst(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('namedisp').innerHTML=xmlhttp.responseText;
      	    document.getElementById('age').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst.jsp?id="+id,true);
    xmlhttp.send();
}

function midyearreportforpp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('textarea').innerHTML="";
        	document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplay2.jsp?id="+id,true);
    xmlhttp.send();
}

function endyearreportforp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst.jsp?id="+id,true);
    xmlhttp.send();
}

function endyearreportforpp(id)
{
	
	if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="" ;
        	document.getElementById('named').innerHTML=xmlhttp.responseText;
      	    document.getElementById('dated').innerHTML="";               	
            
        }
        document.getElementById('textdesp').innerHTML = "";
    };
  xmlhttp.open("POST","namedisplayforkst2.jsp?id="+id,true);
    xmlhttp.send();
}
function endofyearDOB(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();        
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dated').innerHTML=xmlhttp.responseText;
            
        }
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
    	 if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('textdesp').innerHTML=xmlhttp1.responseText;
             
         }
    };    
      
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);	
        xmlhttp1.open("POST","narrationforkeystageone.jsp?id="+id,true); 
         
    xmlhttp.send();
    xmlhttp1.send();
    
}


function kstendofyearDOB(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();        
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('age').innerHTML=xmlhttp.responseText;
            
        }
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
    	 if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('textdesp').innerHTML=xmlhttp1.responseText;
             
         }
    };    
      
        xmlhttp.open("POST","agedisplay.jsp?id="+id,true);	
        xmlhttp1.open("POST","narrationkeysatgetwomidyearprimaryscoolreport.jsp?id="+id,true); 
         
    xmlhttp.send();
    xmlhttp1.send();
    
}

function kstendofyearDOBB(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();        
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");        
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('dated').innerHTML=xmlhttp.responseText;
            
        }
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
    	 if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
         {
    		 document.getElementById('error').innerHTML="";
             document.getElementById('textdesp').innerHTML=xmlhttp1.responseText;
             
         }
    };    
      
        xmlhttp.open("POST","datedisplay.jsp?id="+id,true);	
        xmlhttp1.open("POST","narrationforkeystagetwo.jsp?id="+id,true); 
         
    xmlhttp.send();
    xmlhttp1.send();
    
}

function displayearlyyearendofyearrpt(text)
{
document.getElementById('save').innerHTML = text;
}

function earlyyearendofyearrpt(id,a,b,c,d,e,f,g,h,callbackFunction)
{
	if(a=="" || b=="" || c=="" || d=="" || e=="" || f=="" || g=="" ||h=="")
	{
	validatearlyyearendofyearreport();
	return false;
	}
	else
		{
		var url="saveearlyyearendofreport.jsp";
		var sendmessage="id="+id+"&a="+a+"&b="+b+"&c="+c+"&d="+d+"&e="+e+"&f="+f+"&g="+g+"&h="+h;

		var XMLHttpRequestObject = false;
		if (window.XMLHttpRequest) {
		XMLHttpRequestObject = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
		XMLHttpRequestObject = new
		ActiveXObject("Microsoft.XMLHTTP");
		}
		if(XMLHttpRequestObject) {
		XMLHttpRequestObject.open("POST", url);
		XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
		XMLHttpRequestObject.onreadystatechange = function()
		{
		if (XMLHttpRequestObject.readyState == 4 &&
		XMLHttpRequestObject.status == 200) {
		callbackFunction(XMLHttpRequestObject.responseText);
		delete XMLHttpRequestObject;
		XMLHttpRequestObject = null;
		}
		};
		XMLHttpRequestObject.send(sendmessage);
		}
	}
}

function display2(text)
{
document.getElementById('save').innerHTML = text;
}

function receptionendofyearassessment(id,a,b,c,callbackFunction)
{

	
	if(a=="" || b=="" || c=="")
	{
	validatreception();
	return false;
	}
	else
		{
		url="savereceptionendofyearassessmentintry.jsp";
	var sendmessage="id="+id+"&a="+a+"&b="+b+"&c="+c;
		
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) 
    {
	XMLHttpRequestObject = new XMLHttpRequest();
	} 
    else if (window.ActiveXObject)
    {
	XMLHttpRequestObject = new ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) 
     {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');

	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 && XMLHttpRequestObject.status == 200)
           {
			callbackFunction(XMLHttpRequestObject.responseText);
			delete XMLHttpRequestObject;
			XMLHttpRequestObject = null;
           }
	};
	XMLHttpRequestObject.send(sendmessage);
  }
}
}
function ictname(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	       
    }    
    document.getElementById('textdesp').innerHTML="";
 };
xmlhttp.open("POST","nameforict.jsp?id="+id,true);
xmlhttp.send();
}

function ictstudentid(id)
{
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;
    	document.getElementById('textdesp').innerHTML=xmlhttp.responseText;    	
        
    }   
};
xmlhttp.open("get","narrationict.jsp?id="+id,true);
xmlhttp.send();
}
function musicstudentid(id)
{
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
	{// code for IE6, IE5
		
	    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
	    if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    	document.getElementById('error').innerHTML="" ;
	    	document.getElementById('textdespmusic').innerHTML=xmlhttp.responseText;          
	    }
	};
	xmlhttp.open("get","narrationmusic.jsp?id="+id,true);
	xmlhttp.send();	
}


function pestudentid(id)
{
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	xmlhttp.onreadystatechange=function()
	{
	    if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    	document.getElementById('error').innerHTML="" ;
	    	document.getElementById('textdesppe').innerHTML=xmlhttp.responseText;          
	    }
	};
	xmlhttp.open("get","narrationpe.jsp?id="+id,true);
	xmlhttp.send();
}


function amharicstudentid(id)
{
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
		{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	xmlhttp.onreadystatechange=function()
	{
	    if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    	document.getElementById('error').innerHTML="" ;
	    	document.getElementById('textdespamharic').innerHTML=xmlhttp.responseText;          
	    }
	};
	xmlhttp.open("get","narrationamharic.jsp?id="+id,true);
	xmlhttp.send();
}


function frenchstudentid(id)
{
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}

xmlhttp.onreadystatechange=function()
{
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;
    	document.getElementById('textdespfrench').innerHTML=xmlhttp.responseText;          
    }
};
xmlhttp.open("get","narrationfrench.jsp?id="+id,true);
xmlhttp.send();
}

function displayict(text)
{
document.getElementById('Display').innerHTML = text;
}

function saveict(id,ictt,form,lasn,esn,callbackFunction)
{
	var count=0;
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   
	
for (var a = 0; a < form.txtlasa.length; a++ ) {
	var count=0;
		 if (form.txtlasa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}
}

   if(count==1)
	{
	   lasa=form.txtlasa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtlasa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtlase.length; b++ ) {
        if (form.txtlase[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		lase=form.txtlase[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtlase[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///////////////////
	
	for (var c = 0; c < form.txtesa.length; c++ ) {
        if (form.txtesa[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   esa=form.txtesa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtesa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var d = 0; d < form.txtese.length; d++ ) {
        if (form.txtese[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ese=form.txtese[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtese[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	if(id=="" || ictt=="" || lasn=="" || esn==""  )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="saveict.jsp";
		var sendmessage="id="+id+"&ictt="+ictt+"&lasa="+lasa+"&lase="+lase+"&lasn="+lasn+"&esa="+esa+"&ese="+ese+"&esn="+esn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}




function Updateict(id,ictt,form,lasn,esn,callbackFunction)
{
	
	var count=0;
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   
	
for (var a = 0; a < form.txtlasa.length; a++ ) {
	var count=0;
		 if (form.txtlasa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}
}

   if(count==1)
	{
	   lasa=form.txtlasa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtlasa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtlase.length; b++ ) {
        if (form.txtlase[b].checked==false) {
            count=0;
        }
        else{
        	count=1;
        	break;
        }
    }
	
	if(count==1)
	{
		lase=form.txtlase[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtlase[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///////////////////
	
	for (var c = 0; c < form.txtesa.length; c++ ) {
        if (form.txtesa[c].checked==false) {
            count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
	   esa=form.txtesa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtesa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var d = 0; d < form.txtese.length; d++ ) {
        if (form.txtese[d].checked==false) {
         count=0;
        }
        else
        	{
        	count=1;
        	break;
        	}
    }
	if(count==1)
	{
		ese=form.txtese[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtese[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	

	
	if(id=="" || ictt=="" || lasn=="" || esn==""  )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="updateict.jsp";
		var sendmessage="id="+id+"&ictt="+ictt+"&lasa="+lasa+"&lase="+lase+"&lasn="+lasn+"&esa="+esa+"&ese="+ese+"&esn="+esn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}

}


function displaysavemusic(text)
{
document.getElementById('Display').innerHTML = text;
}

function savemusicinfo(id,mt,form,mpn,mclsn,callbackFunction)
{
	
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   
	   for (var a = 0; a < form.txtpa.length; a++ ) {
	
		 if (form.txtpa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mpa=form.txtpa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtpa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///
	   for (var b = 0; b < form.txtpe.length; b++ ) {
	
		 if (form.txtpe[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mpe=form.txtpe[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtpe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	//////
	
	   for (var c = 0; c < form.txtclsa.length; c++ ) {
	
		 if (form.txtclsa[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mclsa=form.txtclsa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtclsa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	//////
	
	   for (var d = 0; d < form.txtclse.length; d++ ) {
	
		 if (form.txtclse[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mclse=form.txtclse[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtclse[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
			
	if( mt=="" || mpn=="" || mclsn==""  )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		
/////////////////////////////////////////////////////
		var url="savemusic.jsp";	
		var sendmessage="id="+id+"&mt="+mt+"&mpa="+mpa+"&mpe="+mpe+"&mpn="+mpn+"&mclsa="+mclsa+"&mclse="+mclse+"&mclsn="+mclsn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}




function updatemusicinfo(id,mt,form,mpn,mclsn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   
	   for (var a = 0; a < form.txtpa.length; a++ ) {
	
		 if (form.txtpa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mpa=form.txtpa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtpa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	///
	   for (var b = 0; b < form.txtpe.length; b++ ) {
	
		 if (form.txtpe[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mpe=form.txtpe[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtpe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	//////
	
	   for (var c = 0; c < form.txtclsa.length; c++ ) {
	
		 if (form.txtclsa[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mclsa=form.txtclsa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtclsa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	//////
	
	   for (var d = 0; d < form.txtclse.length; d++ ) {
	
		 if (form.txtclse[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 mclse=form.txtclse[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtclse[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	if( mt=="" || mpn=="" || mclsn==""  )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		
		var url="updatemusic.jsp";	
		var sendmessage="id="+id+"&mt="+mt+"&mpa="+mpa+"&mpe="+mpe+"&mpn="+mpn+"&mclsa="+mclsa+"&mclse="+mclse+"&mclsn="+mclsn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}
//////////////////////////////////////////music///////////////////////////////////////////////
function musicname(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdespmusic').innerHTML="";
 };
xmlhttp.open("POST","nameformusic.jsp?id="+id,true);
xmlhttp.send();
}
/////////////////////////////////////////////////////////PE///////////////////////////////////////////

function pename(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdesppe').innerHTML="";
 };
xmlhttp.open("POST","nameforpe.jsp?id="+id,true);
xmlhttp.send();
}

function nameforamharic(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdespamharic').innerHTML="";
 };
xmlhttp.open("POST","nameforamharic.jsp?id="+id,true);
xmlhttp.send();
}

function displaysavepeinfo(text)
{
document.getElementById('Display').innerHTML = text;
}

function savepeinfo(id,pet,form,pon,isn,twn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   for (var a = 0; a < form.txtpoa.length; a++ ) {
	
		 if (form.txtpoa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 poa=form.txtpoa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtpoa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		   for (var b = 0; b < form.txtpoe.length; b++ ) {
	
		 if (form.txtpoe[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 poe=form.txtpoe[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtpoe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
		
	
	   for (var c = 0; c < form.txtisa.length; c++ ) {
	
		 if (form.txtisa[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 isa=form.txtisa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtisa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	   for (var d = 0; d < form.txtise.length; d++ ) {
	
		 if (form.txtise[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 ise=form.txtise[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtise[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	
	
	

   for (var e = 0; e < form.txttwa.length; e++ ) {
	
		 if (form.txttwa[e].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 twa=form.txttwa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txttwa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	
   for (var f = 0; f < form.txttwe.length; f++ ) {
	
		 if (form.txttwe[f].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 twe=form.txttwe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txttwe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	if(id=="" || pet=="" || pon=="" || isn=="" || twn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="savepe.jsp";	
		var sendmessage="id="+id+"&pet="+pet+"&poa="+poa+"&poe="+poe+"&pon="+pon+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&twa="+twa+"&twe="+twe+"&twn="+twn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}



function pename(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdesppe').innerHTML="";
 };
xmlhttp.open("POST","nameforpe.jsp?id="+id,true);
xmlhttp.send();
}


function updatepeinfo(id,pet,form,pon,isn,twn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   for (var a = 0; a < form.txtpoa.length; a++ ) {
	
		 if (form.txtpoa[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 poa=form.txtpoa[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtpoa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		   for (var b = 0; b < form.txtpoe.length; b++ ) {
	
		 if (form.txtpoe[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 poe=form.txtpoe[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtpoe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
		
	
	   for (var c = 0; c < form.txtisa.length; c++ ) {
	
		 if (form.txtisa[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 isa=form.txtisa[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtisa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	   for (var d = 0; d < form.txtise.length; d++ ) {
	
		 if (form.txtise[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 ise=form.txtise[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtise[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	
	
	

   for (var e = 0; e < form.txttwa.length; e++ ) {
	
		 if (form.txttwa[e].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 twa=form.txttwa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txttwa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	
   for (var f = 0; f < form.txttwe.length; f++ ) {
	
		 if (form.txttwe[f].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 twe=form.txttwe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txttwe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
   if(id=="" || pet=="" || pon=="" || isn=="" || twn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="updatepe.jsp";	
		var sendmessage="id="+id+"&pet="+pet+"&poa="+poa+"&poe="+poe+"&pon="+pon+"&isa="+isa+"&ise="+ise+"&isn="+isn+"&twa="+twa+"&twe="+twe+"&twn="+twn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
}
}

///////////////////////////////////////Amharic////////////////////////////////////////////////
function amhname(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdespamharic').innerHTML="";
 };
xmlhttp.open("POST","nameforspecialityclass.jsp?id="+id,true);
xmlhttp.send();
}

function displaysaveamharicinfo(text)
{
document.getElementById('Display').innerHTML = text;
}
function saveamharicinfo(id,amt,form,asln,arn,awn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   
		
	   for (var a = 0; a < form.txtasla.length; a++ ) {
	
		 if (form.txtasla[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 asla=form.txtasla[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtasla[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var b = 0; b < form.txtasle.length; b++ ) {
	
		 if (form.txtasle[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 asle=form.txtasle[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtasle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		  
	for (var c = 0; c < form.txtara.length; c++ ) {
	
		 if (form.txtara[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 ara=form.txtara[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtara[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	   for (var d = 0; d < form.txtare.length; d++ ) {
	
		 if (form.txtare[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 are=form.txtare[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtare[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
   for (var e = 0; e < form.txtawa.length; e++ ) {
		
		 if (form.txtawa[e].checked==false) 
			{
				count=0;       
          }
		else
			{
				count=1;
				break;
			}

 }	

 if(count==1)
	{
	 awa=form.txtawa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtawa[1];
 document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
 f.style.border="solid 1px";
 f.style.borderColor="#FF0000";			
	bc.focus();
 return false;  
	}
	
	
	
 for (var f = 0; f < form.txtawe.length; f++ ) {
	
		 if (form.txtawe[f].checked==false) 
			{
				count=0;       
          }
		else
			{
				count=1;
				break;
			}

 }	

 if(count==1)
	{
	 awe=form.txtawe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtawe[1];
 document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
 f.style.border="solid 1px";
 f.style.borderColor="#FF0000";			
	bc.focus();
 return false;  
	}
			
	if(id=="" || amt=="" || asln=="" || arn=="" || awn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="saveamharic.jsp";	
		var sendmessage="id="+id+"&amt="+amt+"&asla="+asla+"&asle="+asle+"&asln="+asln+"&ara="+ara+"&are="+are+"&arn="+arn+"&awa="+awa+"&awe="+awe+"&awn="+awn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}


function updateamharic(id,amt,form,asln,arn,awn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   
		
	   for (var a = 0; a < form.txtasla.length; a++ ) {
	
		 if (form.txtasla[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 asla=form.txtasla[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtasla[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
	for (var b = 0; b < form.txtasle.length; b++ ) {
	
		 if (form.txtasle[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 asle=form.txtasle[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtasle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		  
	for (var c = 0; c < form.txtara.length; c++ ) {
	
		 if (form.txtara[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 ara=form.txtara[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtara[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
	   for (var d = 0; d < form.txtare.length; d++ ) {
	
		 if (form.txtare[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 are=form.txtare[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtare[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	

	

   for (var e = 0; e < form.txtawa.length; e++ ) {
		
		 if (form.txtawa[e].checked==false) 
			{
				count=0;       
          }
		else
			{
				count=1;
				break;
			}

 }	

 if(count==1)
	{
	 awa=form.txtawa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtawa[1];
 document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
 f.style.border="solid 1px";
 f.style.borderColor="#FF0000";			
	bc.focus();
 return false;  
	}
	
	
	
 for (var f = 0; f < form.txtawe.length; f++ ) {
	
		 if (form.txtawe[f].checked==false) 
			{
				count=0;       
          }
		else
			{
				count=1;
				break;
			}

 }	

 if(count==1)
	{
	 awe=form.txtawe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtawe[1];
 document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
 f.style.border="solid 1px";
 f.style.borderColor="#FF0000";			
	bc.focus();
 return false;  
	}		
	if(id=="" || amt=="" || asln=="" || arn=="" || awn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="updateamharic.jsp";	
		var sendmessage="id="+id+"&amt="+amt+"&asla="+asla+"&asle="+asle+"&asln="+asln+"&ara="+ara+"&are="+are+"&arn="+arn+"&awa="+awa+"&awe="+awe+"&awn="+awn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}
	
///////////////////////////////////////////French//////////////////////////////////////////////////////////////////////

function frencehname(id)
{	
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
	
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    	document.getElementById('error').innerHTML="" ;    	 
    	document.getElementById('named').innerHTML=xmlhttp.responseText;  	     	   
    }    
    document.getElementById('textdespfrench').innerHTML="";
 };
xmlhttp.open("POST","nameforspecialityclass.jsp?id="+id,true);
xmlhttp.send();
}

function displaysavefrenchinfo(text)
{
document.getElementById('Display').innerHTML = text;
}
	

function savefrenchinfo(id,ft,form,fsln,frn,fwn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   
		
	   for (var a = 0; a < form.txtfsla.length; a++ ) {
	
		 if (form.txtfsla[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fsla=form.txtfsla[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtfsla[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtfsle.length; b++ ) {
	
		 if (form.txtfsle[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fsle=form.txtfsle[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtfsle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		  
	for (var c = 0; c < form.txtfra.length; c++ ) {
	
		 if (form.txtfra[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fra=form.txtfra[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtfra[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
		
	   for (var d = 0; d < form.txtfre.length; d++ ) {
	
		 if (form.txtfre[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fre=form.txtfre[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtfre[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	

	

   for (var e = 0; e < form.txtfwa.length; e++ ) {
	
		 if (form.txtfwa[e].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fwa=form.txtfwa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtfwa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
		
   for (var f = 0; f < form.txtfwe.length; f++ ) {
	
		 if (form.txtfwe[f].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fwe=form.txtfwe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtfwe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	

	if(id=="" || ft=="" || fsln=="" || frn=="" || fwn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
		var url="savefrench.jsp";	
		var sendmessage="id="+id+"&ft="+ft+"&fsla="+fsla+"&fsle="+fsle+"&fsln="+fsln+"&fra="+fra+"&fre="+fre+"&frn="+frn+"&fwa="+fwa+"&fwe="+fwe+"&fwn="+fwn;
			
	var XMLHttpRequestObject = false;
	if (window.XMLHttpRequest) {
	XMLHttpRequestObject = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
	XMLHttpRequestObject = new
	ActiveXObject("Microsoft.XMLHTTP");
	}
	if(XMLHttpRequestObject) {
	XMLHttpRequestObject.open("POST", url);
	XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XMLHttpRequestObject.onreadystatechange = function()
	{
	if (XMLHttpRequestObject.readyState == 4 &&
	XMLHttpRequestObject.status == 200) {
	callbackFunction(XMLHttpRequestObject.responseText);
	delete XMLHttpRequestObject;
	XMLHttpRequestObject = null;
	}
	};
	XMLHttpRequestObject.send(sendmessage);
	}
	}
}


function updatefrenchinfo(id,ft,form,fsln,frn,fwn,callbackFunction)
{
	var aa=document.getElementById('a');	
	var bb=document.getElementById('b');	
	var cc=document.getElementById('c');	
	var dd=document.getElementById('d');	
	var ee=document.getElementById('e');	
	var ff=document.getElementById('f');	
	
	document.getElementById('error').innerHTML = ("");
	   aa.style.border="solid 0px";
	   aa.style.borderColor="";	
	   bb.style.border="solid 0px";
	   bb.style.borderColor="";	
	   cc.style.border="solid 0px";
	   cc.style.borderColor="";	
	   dd.style.border="solid 0px";
	   dd.style.borderColor="";
	   ee.style.border="solid 0px";
	   ee.style.borderColor="";	
	   ff.style.border="solid 0px";
	   ff.style.borderColor="";
	   
	   
		
	   for (var a = 0; a < form.txtfsla.length; a++ ) {
	
		 if (form.txtfsla[a].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fsla=form.txtfsla[a].value; 		
	}
	else
	{
	var f=document.getElementById('a');
	var bc=form.txtfsla[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	for (var b = 0; b < form.txtfsle.length; b++ ) {
	
		 if (form.txtfsle[b].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fsle=form.txtfsle[b].value; 		
	}
	else
	{
	var f=document.getElementById('b');
	var bc=form.txtfsle[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	
	
		  
	for (var c = 0; c < form.txtfra.length; c++ ) {
	
		 if (form.txtfra[c].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fra=form.txtfra[c].value; 		
	}
	else
	{
	var f=document.getElementById('c');
	var bc=form.txtfra[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
		
	   for (var d = 0; d < form.txtfre.length; d++ ) {
	
		 if (form.txtfre[d].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fre=form.txtfre[d].value; 		
	}
	else
	{
	var f=document.getElementById('d');
	var bc=form.txtfre[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
	
	
		
	

	

   for (var e = 0; e < form.txtfwa.length; e++ ) {
	
		 if (form.txtfwa[e].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fwa=form.txtfwa[e].value; 		
	}
	else
	{
	var f=document.getElementById('e');
	var bc=form.txtfwa[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}
		
   for (var f = 0; f < form.txtfwe.length; f++ ) {
	
		 if (form.txtfwe[f].checked==false) 
 			{
				count=0;       
            }
		else
			{
				count=1;
				break;
			}

   }	

   if(count==1)
	{
	 fwe=form.txtfwe[f].value; 		
	}
	else
	{
	var f=document.getElementById('f');
	var bc=form.txtfwe[1];
   document.getElementById('error').innerHTML = ("<font color='red'>Please enter a value for a Selected Field </font>");
   f.style.border="solid 1px";
   f.style.borderColor="#FF0000";			
	bc.focus();
   return false;  
	}	
	
	if(id=="" || ft=="" || fsla=="" || fsle=="" || fsln=="" || fra=="" || fre=="" || frn=="" || fwa=="" || fwe=="" || fwn=="" )
		{
		Validateprofile2();
		return false;
		}
	else
		{
	var url="updatefrench.jsp";	
	var sendmessage="id="+id+"&ft="+ft+"&fsla="+fsla+"&fsle="+fsle+"&fsln="+fsln+"&fra="+fra+"&fre="+fre+"&frn="+frn+"&fwa="+fwa+"&fwe="+fwe+"&fwn="+fwn;
		
var XMLHttpRequestObject = false;
if (window.XMLHttpRequest) {
XMLHttpRequestObject = new XMLHttpRequest();
} else if (window.ActiveXObject) {
XMLHttpRequestObject = new
ActiveXObject("Microsoft.XMLHTTP");
}
if(XMLHttpRequestObject) {
XMLHttpRequestObject.open("POST", url);
XMLHttpRequestObject.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
XMLHttpRequestObject.onreadystatechange = function()
{
if (XMLHttpRequestObject.readyState == 4 &&
XMLHttpRequestObject.status == 200) {
callbackFunction(XMLHttpRequestObject.responseText);
delete XMLHttpRequestObject;
XMLHttpRequestObject = null;
}
};
XMLHttpRequestObject.send(sendmessage);
}
}
}

function DOBforkso(id)
{
	
  if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
        xmlhttp1=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('age').innerHTML=xmlhttp.responseText;            
        }
       
                
    };
    
    xmlhttp1.onreadystatechange=function()
    {
        if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
        {
        	document.getElementById('error').innerHTML="";
            document.getElementById('narrationd').innerHTML=xmlhttp1.responseText;            
        }
       
                
    };
    xmlhttp.open("get","agedisplay.jsp?id="+id,true);
    xmlhttp1.open("get","narrationkeysatgeonemidyearprimaryscoolreport.jsp?id="+id,true);
    xmlhttp.send();
    xmlhttp1.send();
    
}

