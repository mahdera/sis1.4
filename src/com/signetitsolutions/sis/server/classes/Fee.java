package com.signetitsolutions.sis.server.classes;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class Fee {
	private String studentId="";
	private double debit=0.0;
	private double credit=0.0;
	private double penality=0.0;
	private double levy=0.0;
	private String firstName="";
	private String middleName="";
	private String lastName="";
	private int levelId=0;
	private Date paymentDate=null;
	
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	public Fee(){
		
		super();
	}
	public Fee(String fName,String mName,String lName,int levelId,String stuId){
		super();
		this.firstName=fName;
		this.middleName=mName;
		this.lastName=lName;
		this.levelId=levelId;
		this.studentId=stuId;
	}
	public Fee(String studentId,double debit, double credit, double penality, double levy){
		super();
		this.studentId=studentId;
		this.debit=debit;
		this.credit=credit;
		this.penality=penality;
		this.levy=levy;
	}
	public static List<Fee> getAllstudents(int levelId,int SectionId){
		List<Fee> feeList=new ArrayList<Fee>();
		try {
			String query = "select a.id,a.first_name,a.middle_name,a.last_name,a.level_id,a.nationality,b.section_name "
                           + " from tbl_applicant_t a,tbl_section b "
                           + " where a.level_id=b.level_id "
                           + " and a.level_id=" + levelId 
                           + " and b.id= " + SectionId ;
			
			// String query =
			// "select id ,first_name,middle_name from tbl_applicant_t,tbl_student_level,tbl_student s where tbl_applicant.id = tbl_student.applicant_id and tbl_student.id=tbl_student_level.student_id and section_id = "+sectionId+" and tbl_student.id not in(select student_id from tbl_attendance_grid where section_id="+sectionId+" and date_taken='"+date+"' and teacher_id="+teacherId+" and attendance_session='"+attendanceSession+"')";
			ResultSet rs = DBConnection.readFromDatabase(query);
			while (rs.next()) {
				Fee fe = new Fee(rs.getString("first_name"),
						rs.getString("middle_name"), rs.getString("last_name"),
						rs.getInt("level_id"),rs.getString("id"));
				feeList.add(fe);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		
		
		return feeList;
	}
	public String getStuedentId() {
		return studentId;
	}
	public void setStuedentId(String stuedentId) {
		this.studentId = stuedentId;
	}
	public double getDebit() {
		return debit;
	}
	public void setDebit(double debit) {
		this.debit = debit;
	}
	public double getCredit() {
		return credit;
	}
	public void setCredit(double credit) {
		this.credit = credit;
	}
	public double getPenality() {
		return penality;
	}
	public void setPenality(double penality) {
		this.penality = penality;
	}
	public double getLevy() {
		return levy;
	}
	public void setLevy(double levy) {
		this.levy = levy;
	}
	
    public String getFullName(){
		
		return this.getFirstName()+ " " +this.getMiddleName()+ " " +this.getLastName();
		
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getLevelId() {
		return levelId;
	}
	public void setLevelId(int levelId) {
		this.levelId = levelId;
	}

}
