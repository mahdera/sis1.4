<%@page import="java.util.*"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.signetitsolutions.sis.server.classes.*"%>
<%
	int studCount = 0;
	//int subCount = 0;
	int tempCount=0;

	List<String> checkedListIdStud = new ArrayList<String>();
	//List<String> checkedListIdSub = new ArrayList<String>();

	String action = request.getParameter("action");
	String teacherId = request.getParameter("teacherId");
	String academicYearId = request.getParameter("academicYearId");
	String termId = request.getParameter("termId");
	String levelId = request.getParameter("levelId");
	String tempCheckedListId = request.getParameter("checkedListId");
	int checkedCount = Integer.parseInt(request.getParameter("checkedCount"));
	String subject = request.getParameter("subject");
	
	List<StudentLevel> studentsList = StudentLevel.getStudentsInLevel(levelId);
	//List<Subject> subjectList = Subject.getAllSubjects();
	Iterator<StudentLevel> studentsItr = studentsList.iterator();
	
			while (studentsItr.hasNext()) {
				StudentLevel students = studentsItr.next();								
				checkedListIdStud.add(studCount,students.getStudentId());
				studCount++;				
			}
			
	for(int i=1; i<=checkedCount;i++){	
		String studentIdTemp = request.getParameter("studentId"+i);
		//String subjectIdTemp = request.getParameter("subjectId"+i);
		
		String studentId = checkedListIdStud.get(Integer.parseInt(studentIdTemp)-1);
		//String subjectId = checkedListIdSub.get(Integer.parseInt(subjectIdTemp)-1);
		
		TeachesStudent teachesStudent = new TeachesStudent("id", teacherId, "", academicYearId,	termId, subject, "", studentId, "",levelId);
		if(action.equalsIgnoreCase("save")){
			teachesStudent.saveTeachesStudent();
		}else if(action.equalsIgnoreCase("delete")){
			teachesStudent.dropTeachesStudent();
		}
	}	
%>
<p class="msg done">Successfully added subject to student course list!</p>