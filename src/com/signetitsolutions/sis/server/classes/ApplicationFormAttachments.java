/**
 * 
 */
package com.signetitsolutions.sis.server.classes;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Leki
 * 
 */
public class ApplicationFormAttachments {
	private long id;
	private long applicantId;
	private FileInputStream fisBirthCertificate;
	private InputStream insBirthCertificate;
	private FileInputStream fisVaccinationCard;
	private InputStream insVaccinationCard;
	private FileInputStream fisFatherPassport;
	private InputStream insFatherPassport;
	private FileInputStream fisMotherPassport;
	private InputStream insMotherPassport;
	private FileInputStream fisChildPassport;
	private InputStream insChildPassport;
	private FileInputStream fisCurrentSchoolReport;
	private InputStream insCurrentSchoolReport;
	private FileInputStream fisReceiptApplicationFee;
	private InputStream insReceiptApplicationFee;
	private FileInputStream fisPassportSizePhoto;
	private InputStream insPassportSizePhoto;
	private FileInputStream fisParentWorkPermitOrVisa;
	private InputStream insParentWorkPermitOrVisa;

	/**
	 * @param applicantId
	 * @param fisBirthCertificate
	 * @param insBirthCertificate
	 * @param fisVaccinationCard
	 * @param insVaccinationCard
	 * @param fisFatherPassport
	 * @param insFatherPassport
	 * @param fisMotherPassport
	 * @param insMotherPassport
	 * @param fisChildPassport
	 * @param insChildPassport
	 * @param fisCurrentSchoolReport
	 * @param insCurrentSchoolReport
	 * @param fisReceiptApplicationFee
	 * @param insReceiptApplicationFee
	 * @param fisPassportSizePhoto
	 * @param insPassportSizePhoto
	 * @param fisParentWorkPermitOrVisa
	 * @param insParentWorkPermitOrVisa
	 */
	public ApplicationFormAttachments(long applicantId,
			FileInputStream fisBirthCertificate,
			InputStream insBirthCertificate,
			FileInputStream fisVaccinationCard, InputStream insVaccinationCard,
			FileInputStream fisFatherPassport, InputStream insFatherPassport,
			FileInputStream fisMotherPassport, InputStream insMotherPassport,
			FileInputStream fisChildPassport, InputStream insChildPassport,
			FileInputStream fisCurrentSchoolReport,
			InputStream insCurrentSchoolReport,
			FileInputStream fisReceiptApplicationFee,
			InputStream insReceiptApplicationFee,
			FileInputStream fisPassportSizePhoto,
			InputStream insPassportSizePhoto,
			FileInputStream fisParentWorkPermitOrVisa,
			InputStream insParentWorkPermitOrVisa) {
		super();
		this.applicantId = applicantId;
		this.fisBirthCertificate = fisBirthCertificate;
		this.insBirthCertificate = insBirthCertificate;
		this.fisVaccinationCard = fisVaccinationCard;
		this.insVaccinationCard = insVaccinationCard;
		this.fisFatherPassport = fisFatherPassport;
		this.insFatherPassport = insFatherPassport;
		this.fisMotherPassport = fisMotherPassport;
		this.insMotherPassport = insMotherPassport;
		this.fisChildPassport = fisChildPassport;
		this.insChildPassport = insChildPassport;
		this.fisCurrentSchoolReport = fisCurrentSchoolReport;
		this.insCurrentSchoolReport = insCurrentSchoolReport;
		this.fisReceiptApplicationFee = fisReceiptApplicationFee;
		this.insReceiptApplicationFee = insReceiptApplicationFee;
		this.fisPassportSizePhoto = fisPassportSizePhoto;
		this.insPassportSizePhoto = insPassportSizePhoto;
		this.fisParentWorkPermitOrVisa = fisParentWorkPermitOrVisa;
		this.insParentWorkPermitOrVisa = insParentWorkPermitOrVisa;
	}

	/**
	 * @param id
	 * @param applicantId
	 * @param fisBirthCertificate
	 * @param insBirthCertificate
	 * @param fisVaccinationCard
	 * @param insVaccinationCard
	 * @param fisFatherPassport
	 * @param insFatherPassport
	 * @param fisMotherPassport
	 * @param insMotherPassport
	 * @param fisChildPassport
	 * @param insChildPassport
	 * @param fisCurrentSchoolReport
	 * @param insCurrentSchoolReport
	 * @param fisReceiptApplicationFee
	 * @param insReceiptApplicationFee
	 * @param fisPassportSizePhoto
	 * @param insPassportSizePhoto
	 * @param fisParentWorkPermitOrVisa
	 * @param insParentWorkPermitOrVisa
	 */
	public ApplicationFormAttachments(long id, long applicantId,
			FileInputStream fisBirthCertificate,
			InputStream insBirthCertificate,
			FileInputStream fisVaccinationCard, InputStream insVaccinationCard,
			FileInputStream fisFatherPassport, InputStream insFatherPassport,
			FileInputStream fisMotherPassport, InputStream insMotherPassport,
			FileInputStream fisChildPassport, InputStream insChildPassport,
			FileInputStream fisCurrentSchoolReport,
			InputStream insCurrentSchoolReport,
			FileInputStream fisReceiptApplicationFee,
			InputStream insReceiptApplicationFee,
			FileInputStream fisPassportSizePhoto,
			InputStream insPassportSizePhoto,
			FileInputStream fisParentWorkPermitOrVisa,
			InputStream insParentWorkPermitOrVisa) {
		super();
		this.id = id;
		this.applicantId = applicantId;
		this.fisBirthCertificate = fisBirthCertificate;
		this.insBirthCertificate = insBirthCertificate;
		this.fisVaccinationCard = fisVaccinationCard;
		this.insVaccinationCard = insVaccinationCard;
		this.fisFatherPassport = fisFatherPassport;
		this.insFatherPassport = insFatherPassport;
		this.fisMotherPassport = fisMotherPassport;
		this.insMotherPassport = insMotherPassport;
		this.fisChildPassport = fisChildPassport;
		this.insChildPassport = insChildPassport;
		this.fisCurrentSchoolReport = fisCurrentSchoolReport;
		this.insCurrentSchoolReport = insCurrentSchoolReport;
		this.fisReceiptApplicationFee = fisReceiptApplicationFee;
		this.insReceiptApplicationFee = insReceiptApplicationFee;
		this.fisPassportSizePhoto = fisPassportSizePhoto;
		this.insPassportSizePhoto = insPassportSizePhoto;
		this.fisParentWorkPermitOrVisa = fisParentWorkPermitOrVisa;
		this.insParentWorkPermitOrVisa = insParentWorkPermitOrVisa;
	}

	/**
	 * @param id
	 * @param applicantId
	 * @param insBirthCertificate
	 * @param insVaccinationCard
	 * @param insFatherPassport
	 * @param insMotherPassport
	 * @param insChildPassport
	 * @param insCurrentSchoolReport
	 * @param insReceiptApplicationFee
	 * @param insPassportSizePhoto
	 * @param insParentWorkPermitOrVisa
	 */
	public ApplicationFormAttachments(long id, long applicantId,
			InputStream insBirthCertificate, InputStream insVaccinationCard,
			InputStream insFatherPassport, InputStream insMotherPassport,
			InputStream insChildPassport, InputStream insCurrentSchoolReport,
			InputStream insReceiptApplicationFee,
			InputStream insPassportSizePhoto,
			InputStream insParentWorkPermitOrVisa) {
		super();
		this.id = id;
		this.applicantId = applicantId;
		this.insBirthCertificate = insBirthCertificate;
		this.insVaccinationCard = insVaccinationCard;
		this.insFatherPassport = insFatherPassport;
		this.insMotherPassport = insMotherPassport;
		this.insChildPassport = insChildPassport;
		this.insCurrentSchoolReport = insCurrentSchoolReport;
		this.insReceiptApplicationFee = insReceiptApplicationFee;
		this.insPassportSizePhoto = insPassportSizePhoto;
		this.insParentWorkPermitOrVisa = insParentWorkPermitOrVisa;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the applicantId
	 */
	public long getApplicantId() {
		return applicantId;
	}

	/**
	 * @param applicantId
	 *            the applicantId to set
	 */
	public void setApplicantId(long applicantId) {
		this.applicantId = applicantId;
	}

	/**
	 * @return the fisBirthCertificate
	 */
	public FileInputStream getFisBirthCertificate() {
		return fisBirthCertificate;
	}

	/**
	 * @param fisBirthCertificate
	 *            the fisBirthCertificate to set
	 */
	public void setFisBirthCertificate(FileInputStream fisBirthCertificate) {
		this.fisBirthCertificate = fisBirthCertificate;
	}

	/**
	 * @return the insBirthCertificate
	 */
	public InputStream getInsBirthCertificate() {
		return insBirthCertificate;
	}

	/**
	 * @param insBirthCertificate
	 *            the insBirthCertificate to set
	 */
	public void setInsBirthCertificate(InputStream insBirthCertificate) {
		this.insBirthCertificate = insBirthCertificate;
	}

	/**
	 * @return the fisVaccinationCard
	 */
	public FileInputStream getFisVaccinationCard() {
		return fisVaccinationCard;
	}

	/**
	 * @param fisVaccinationCard
	 *            the fisVaccinationCard to set
	 */
	public void setFisVaccinationCard(FileInputStream fisVaccinationCard) {
		this.fisVaccinationCard = fisVaccinationCard;
	}

	/**
	 * @return the insVaccinationCard
	 */
	public InputStream getInsVaccinationCard() {
		return insVaccinationCard;
	}

	/**
	 * @param insVaccinationCard
	 *            the insVaccinationCard to set
	 */
	public void setInsVaccinationCard(InputStream insVaccinationCard) {
		this.insVaccinationCard = insVaccinationCard;
	}

	/**
	 * @return the fisFatherPassport
	 */
	public FileInputStream getFisFatherPassport() {
		return fisFatherPassport;
	}

	/**
	 * @param fisFatherPassport
	 *            the fisFatherPassport to set
	 */
	public void setFisFatherPassport(FileInputStream fisFatherPassport) {
		this.fisFatherPassport = fisFatherPassport;
	}

	/**
	 * @return the insFatherPassport
	 */
	public InputStream getInsFatherPassport() {
		return insFatherPassport;
	}

	/**
	 * @param insFatherPassport
	 *            the insFatherPassport to set
	 */
	public void setInsFatherPassport(InputStream insFatherPassport) {
		this.insFatherPassport = insFatherPassport;
	}

	/**
	 * @return the fisMotherPassport
	 */
	public FileInputStream getFisMotherPassport() {
		return fisMotherPassport;
	}

	/**
	 * @param fisMotherPassport
	 *            the fisMotherPassport to set
	 */
	public void setFisMotherPassport(FileInputStream fisMotherPassport) {
		this.fisMotherPassport = fisMotherPassport;
	}

	/**
	 * @return the insMotherPassport
	 */
	public InputStream getInsMotherPassport() {
		return insMotherPassport;
	}

	/**
	 * @param insMotherPassport
	 *            the insMotherPassport to set
	 */
	public void setInsMotherPassport(InputStream insMotherPassport) {
		this.insMotherPassport = insMotherPassport;
	}

	/**
	 * @return the fisChildPassport
	 */
	public FileInputStream getFisChildPassport() {
		return fisChildPassport;
	}

	/**
	 * @param fisChildPassport
	 *            the fisChildPassport to set
	 */
	public void setFisChildPassport(FileInputStream fisChildPassport) {
		this.fisChildPassport = fisChildPassport;
	}

	/**
	 * @return the insChildPassport
	 */
	public InputStream getInsChildPassport() {
		return insChildPassport;
	}

	/**
	 * @param insChildPassport
	 *            the insChildPassport to set
	 */
	public void setInsChildPassport(InputStream insChildPassport) {
		this.insChildPassport = insChildPassport;
	}

	/**
	 * @return the fisCurrentSchoolReport
	 */
	public FileInputStream getFisCurrentSchoolReport() {
		return fisCurrentSchoolReport;
	}

	/**
	 * @param fisCurrentSchoolReport
	 *            the fisCurrentSchoolReport to set
	 */
	public void setFisCurrentSchoolReport(FileInputStream fisCurrentSchoolReport) {
		this.fisCurrentSchoolReport = fisCurrentSchoolReport;
	}

	/**
	 * @return the insCurrentSchoolReport
	 */
	public InputStream getInsCurrentSchoolReport() {
		return insCurrentSchoolReport;
	}

	/**
	 * @param insCurrentSchoolReport
	 *            the insCurrentSchoolReport to set
	 */
	public void setInsCurrentSchoolReport(InputStream insCurrentSchoolReport) {
		this.insCurrentSchoolReport = insCurrentSchoolReport;
	}

	/**
	 * @return the fisReceiptApplicationFee
	 */
	public FileInputStream getFisReceiptApplicationFee() {
		return fisReceiptApplicationFee;
	}

	/**
	 * @param fisReceiptApplicationFee
	 *            the fisReceiptApplicationFee to set
	 */
	public void setFisReceiptApplicationFee(
			FileInputStream fisReceiptApplicationFee) {
		this.fisReceiptApplicationFee = fisReceiptApplicationFee;
	}

	/**
	 * @return the insReceiptApplicationFee
	 */
	public InputStream getInsReceiptApplicationFee() {
		return insReceiptApplicationFee;
	}

	/**
	 * @param insReceiptApplicationFee
	 *            the insReceiptApplicationFee to set
	 */
	public void setInsReceiptApplicationFee(InputStream insReceiptApplicationFee) {
		this.insReceiptApplicationFee = insReceiptApplicationFee;
	}

	/**
	 * @return the fisPassportSizePhoto
	 */
	public FileInputStream getFisPassportSizePhoto() {
		return fisPassportSizePhoto;
	}

	/**
	 * @param fisPassportSizePhoto
	 *            the fisPassportSizePhoto to set
	 */
	public void setFisPassportSizePhoto(FileInputStream fisPassportSizePhoto) {
		this.fisPassportSizePhoto = fisPassportSizePhoto;
	}

	/**
	 * @return the insPassportSizePhoto
	 */
	public InputStream getInsPassportSizePhoto() {
		return insPassportSizePhoto;
	}

	/**
	 * @param insPassportSizePhoto
	 *            the insPassportSizePhoto to set
	 */
	public void setInsPassportSizePhoto(InputStream insPassportSizePhoto) {
		this.insPassportSizePhoto = insPassportSizePhoto;
	}

	/**
	 * @return the fisParentWorkPermitOrVisa
	 */
	public FileInputStream getFisParentWorkPermitOrVisa() {
		return fisParentWorkPermitOrVisa;
	}

	/**
	 * @param fisParentWorkPermitOrVisa
	 *            the fisParentWorkPermitOrVisa to set
	 */
	public void setFisParentWorkPermitOrVisa(
			FileInputStream fisParentWorkPermitOrVisa) {
		this.fisParentWorkPermitOrVisa = fisParentWorkPermitOrVisa;
	}

	/**
	 * @return the insParentWorkPermitOrVisa
	 */
	public InputStream getInsParentWorkPermitOrVisa() {
		return insParentWorkPermitOrVisa;
	}

	/**
	 * @param insParentWorkPermitOrVisa
	 *            the insParentWorkPermitOrVisa to set
	 */
	public void setInsParentWorkPermitOrVisa(
			InputStream insParentWorkPermitOrVisa) {
		this.insParentWorkPermitOrVisa = insParentWorkPermitOrVisa;
	}

	public void addApplicationFormAttachment() {
		try {
			java.sql.Connection connection = DBConnection
					.getDatabaseConnection();
			java.sql.PreparedStatement pst = connection
					.prepareStatement("INSERT INTO tbl_application_form_attachments VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setLong(1, 0);

			if (getFisBirthCertificate() == null)
				pst.setBinaryStream(2, (InputStream) null, (int) (0));
			else
				pst.setBinaryStream(2, (InputStream) getFisBirthCertificate(),
						(int) (getFisBirthCertificate().available()));

			if (getFisVaccinationCard() == null)
				pst.setBinaryStream(3, (InputStream) null, (int) (0));
			else
				pst.setBinaryStream(3, (InputStream) getFisVaccinationCard(),
						(int) (getFisVaccinationCard().available()));

			if (getFisFatherPassport() == null)
				pst.setBinaryStream(4, (InputStream) null,
						(int) (getFisFatherPassport().available()));
			else
				pst.setBinaryStream(4, (InputStream) getFisFatherPassport(),
						(int) (getFisFatherPassport().available()));

			if (getFisMotherPassport() == null)
				pst.setBinaryStream(4, (InputStream) null,
						(int) (getFisMotherPassport().available()));
			else
				pst.setBinaryStream(4, (InputStream) getFisMotherPassport(),
						(int) (getFisMotherPassport().available()));

			if (getFisChildPassport() == null)
				pst.setBinaryStream(4, (InputStream) null,
						(int) (getFisChildPassport().available()));
			else
				pst.setBinaryStream(4, (InputStream) getFisChildPassport(),
						(int) (getFisChildPassport().available()));

			if (getFisCurrentSchoolReport() == null)
				pst.setBinaryStream(4, (InputStream) null,
						(int) (getFisCurrentSchoolReport().available()));
			else
				pst.setBinaryStream(4,
						(InputStream) getFisCurrentSchoolReport(),
						(int) (getFisCurrentSchoolReport().available()));

			if (getFisReceiptApplicationFee() == null)
				pst.setBinaryStream(4, (InputStream) null,
						(int) (getFisReceiptApplicationFee().available()));
			else
				pst.setBinaryStream(4,
						(InputStream) getFisReceiptApplicationFee(),
						(int) (getFisReceiptApplicationFee().available()));

			if (getFisPassportSizePhoto() == null)
				pst.setBinaryStream(4, (InputStream) null,
						(int) (getFisPassportSizePhoto().available()));
			else
				pst.setBinaryStream(4, (InputStream) getFisPassportSizePhoto(),
						(int) (getFisPassportSizePhoto().available()));

			if (getFisParentWorkPermitOrVisa() == null)
				pst.setBinaryStream(4, (InputStream) null,
						(int) (getFisParentWorkPermitOrVisa().available()));
			else
				pst.setBinaryStream(4,
						(InputStream) getFisParentWorkPermitOrVisa(),
						(int) (getFisParentWorkPermitOrVisa().available()));

			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// DBConnection.disconnectDatabase();
		}
	}

	public static void updateApplicationFormAttachment() {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteApplicationFormAttachment(long id) {
		try {
			String command = "delete from tbl_application_form_attachments where id = "
					+ id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ApplicationFormAttachments> getAllApplicationFormAttachments() {
		List<ApplicationFormAttachments> list = new ArrayList<ApplicationFormAttachments>();
		ApplicationFormAttachments att = null;
		try {
			String query = "select * from tbl_application_form_attachments";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				att = new ApplicationFormAttachments(rSet.getLong("id"),
						rSet.getLong("applicant_id"),
						rSet.getBinaryStream("birth_certificate"),
						rSet.getBinaryStream("vaccination_card"),
						rSet.getBinaryStream("father_passport"),
						rSet.getBinaryStream("mother_passport"),
						rSet.getBinaryStream("child_passport"),
						rSet.getBinaryStream("current_school_report"),
						rSet.getBinaryStream("receipt_application_fee"),
						rSet.getBinaryStream("passport_size_photo"),
						rSet.getBinaryStream("parent_work_permit_or_visa"));
				list.add(att);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<ApplicationFormAttachments> getAllApplicationFormAttachmentsForApplicant(
			long applicantId) {
		List<ApplicationFormAttachments> list = new ArrayList<ApplicationFormAttachments>();
		ApplicationFormAttachments att = null;
		try {
			String query = "select * from tbl_application_form_attachments where applicant_id="
					+ applicantId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				att = new ApplicationFormAttachments(rSet.getLong("id"),
						rSet.getLong("applicant_id"),
						rSet.getBinaryStream("birth_certificate"),
						rSet.getBinaryStream("vaccination_card"),
						rSet.getBinaryStream("father_passport"),
						rSet.getBinaryStream("mother_passport"),
						rSet.getBinaryStream("child_passport"),
						rSet.getBinaryStream("current_school_report"),
						rSet.getBinaryStream("receipt_application_fee"),
						rSet.getBinaryStream("passport_size_photo"),
						rSet.getBinaryStream("parent_work_permit_or_visa"));
				list.add(att);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ApplicationFormAttachments getApplicationFormAttachment(
			long id) {
		ApplicationFormAttachments att = null;
		try {
			String query = "select * from tbl_application_form_attachments where id="
					+ id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while (rSet.next()) {
				att = new ApplicationFormAttachments(rSet.getLong("id"),
						rSet.getLong("applicant_id"),
						rSet.getBinaryStream("birth_certificate"),
						rSet.getBinaryStream("vaccination_card"),
						rSet.getBinaryStream("father_passport"),
						rSet.getBinaryStream("mother_passport"),
						rSet.getBinaryStream("child_passport"),
						rSet.getBinaryStream("current_school_report"),
						rSet.getBinaryStream("receipt_application_fee"),
						rSet.getBinaryStream("passport_size_photo"),
						rSet.getBinaryStream("parent_work_permit_or_visa"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return att;
	}
}// end class
