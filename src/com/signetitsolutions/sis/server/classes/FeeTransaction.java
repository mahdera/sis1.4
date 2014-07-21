package com.signetitsolutions.sis.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FeeTransaction {
	private int transactionId=0;
	private String studentId="";
	private String invoiceNo="";
	private String accademicYear="";
	private String term="";
	private double debit=0.0;
	private double credit=0.0;
	private Date dueDate=null;
	private Date invoiceSentDate=null;
	private Date paidDate=null;
	private String paymentType="";
	private String nameOfPayer="";
	private String receiptNo="";
	private String preparedBy="";
	private String approvedBy="";
	
	public FeeTransaction(int transactionId,String studentId,String invoiceNo,String accademicYear,String term,double debit,double credit,Date dueDate,Date invoiceSentDate,
			Date paidDate,String paymentType,String nameOfPayer,String receiptNo,String preparedBy,String approvedBy){
		super();
		this.transactionId=transactionId;
		this.studentId=studentId;
		this.invoiceNo=invoiceNo;
		this.accademicYear=accademicYear;
		this.term=term;
		this.debit=debit;
		this.credit=credit;
		this.dueDate=dueDate;
		this.invoiceSentDate=invoiceSentDate;
		this.paidDate=paidDate;
		this.paymentType=paymentType;
		this.nameOfPayer=nameOfPayer;
		this.receiptNo=receiptNo;
		this.preparedBy=preparedBy;
		this.approvedBy=approvedBy;
		
	}
	
	public static List<FeeTransaction> getAllTransaction(String studentId) {
		List<FeeTransaction> list = new ArrayList<FeeTransaction>();
		FeeTransaction transactions = null;
		try {
			String query = "select * from tbl_payment_transaction";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				transactions = new FeeTransaction(rSet.getInt("id"),
						                          rSet.getString("student_id"),rSet.getString("payment_id"),rSet.getString("academic_year"),
						                          rSet.getString("term"),rSet.getDouble("debit"),rSet.getDouble("credit"),
						                          rSet.getDate("due_date"),rSet.getDate("invoice_sent_date"),rSet.getDate("paid_date"),
						                          rSet.getString("payment_type"),rSet.getString("name_of_payer"),rSet.getString("receipt_no"),
						                          rSet.getString("prepared_by"),rSet.getString("approved_by"));
				list.add(transactions);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public String getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public String getAccademicYear() {
		return accademicYear;
	}
	public void setAccademicYear(String accademicYear) {
		this.accademicYear = accademicYear;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
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
	public Date getDueDate() {
		return dueDate;
	}
	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}
	public Date getInvoiceSentDate() {
		return invoiceSentDate;
	}
	public void setInvoiceSentDate(Date invoiceSentDate) {
		this.invoiceSentDate = invoiceSentDate;
	}
	public Date getPaidDate() {
		return paidDate;
	}
	public void setPaidDate(Date paidDate) {
		this.paidDate = paidDate;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public String getNameOfPayer() {
		return nameOfPayer;
	}
	public void setNameOfPayer(String nameOfPayer) {
		this.nameOfPayer = nameOfPayer;
	}
	public String getReceiptNo() {
		return receiptNo;
	}
	public void setReceiptNo(String receiptNo) {
		this.receiptNo = receiptNo;
	}
	public String getPreparedBy() {
		return preparedBy;
	}
	public void setPreparedBy(String preparedBy) {
		this.preparedBy = preparedBy;
	}
	public String getApprovedBy() {
		return approvedBy;
	}
	public void setApprovedBy(String approvedBy) {
		this.approvedBy = approvedBy;
	}
	

}
