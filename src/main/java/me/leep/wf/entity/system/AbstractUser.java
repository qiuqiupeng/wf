package me.leep.wf.entity.system;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * AbstractUser entity provides the base persistence definition of the User
 * entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractUser implements java.io.Serializable {

	// Fields

	private String fid;
	private Integer fagentUser;
	private String fbackupemail;
	private String fcell;
	private String fcontrolUnitid;
	private Timestamp fcreateTime;
	private String fcreatorid;
	private String fcustomerid;
	private String fdefOrgUnitid;
	private String fdefaultLocale;
	private String fdescriptionL1;
	private String fdescriptionL2;
	private String fdescriptionL3;
	private Timestamp feffectiveDate;
	private String femail;
	private Integer ferrCount;
	private Integer fforbidden;
	private String fgroupid;
	private String fhomePhone;
	private Timestamp finvalidationDate;
	private Integer fisBizAdmin;
	private Integer fisChangedpw;
	private Integer fisDelete;
	private Integer fisLocked;
	private Integer fisRegister;
	private Timestamp flastUpdateTime;
	private String flastUpdateUserid;
	private Timestamp flockedTime;
	private Integer floginAuthorWay;
	private String fmainRoleid;
	private String fnameL1;
	private String fnameL2;
	private String fnameL3;
	private String fnumber;
	private String fofficePhone;
	private String fpassword;
	private String fpersonId;
	private String fpwdHisStr;
	private Timestamp fpweffectiveDate;
	private String freferId;
	private String fsecurityId;
	private String fsupplierid;
	private Integer ftype;

	// Constructors

	/** default constructor */
	public AbstractUser() {
	}

	/** minimal constructor */
	public AbstractUser(String fid, String fcontrolUnitid, Integer fisBizAdmin,
			Integer fisChangedpw, Integer ftype) {
		this.fid = fid;
		this.fcontrolUnitid = fcontrolUnitid;
		this.fisBizAdmin = fisBizAdmin;
		this.fisChangedpw = fisChangedpw;
		this.ftype = ftype;
	}

	/** full constructor */
	public AbstractUser(String fid, Integer fagentUser, String fbackupemail,
			String fcell, String fcontrolUnitid, Timestamp fcreateTime,
			String fcreatorid, String fcustomerid, String fdefOrgUnitid,
			String fdefaultLocale, String fdescriptionL1,
			String fdescriptionL2, String fdescriptionL3,
			Timestamp feffectiveDate, String femail, Integer ferrCount,
			Integer fforbidden, String fgroupid, String fhomePhone,
			Timestamp finvalidationDate, Integer fisBizAdmin,
			Integer fisChangedpw, Integer fisDelete, Integer fisLocked,
			Integer fisRegister, Timestamp flastUpdateTime,
			String flastUpdateUserid, Timestamp flockedTime,
			Integer floginAuthorWay, String fmainRoleid, String fnameL1,
			String fnameL2, String fnameL3, String fnumber,
			String fofficePhone, String fpassword, String fpersonId,
			String fpwdHisStr, Timestamp fpweffectiveDate, String freferId,
			String fsecurityId, String fsupplierid, Integer ftype) {
		this.fid = fid;
		this.fagentUser = fagentUser;
		this.fbackupemail = fbackupemail;
		this.fcell = fcell;
		this.fcontrolUnitid = fcontrolUnitid;
		this.fcreateTime = fcreateTime;
		this.fcreatorid = fcreatorid;
		this.fcustomerid = fcustomerid;
		this.fdefOrgUnitid = fdefOrgUnitid;
		this.fdefaultLocale = fdefaultLocale;
		this.fdescriptionL1 = fdescriptionL1;
		this.fdescriptionL2 = fdescriptionL2;
		this.fdescriptionL3 = fdescriptionL3;
		this.feffectiveDate = feffectiveDate;
		this.femail = femail;
		this.ferrCount = ferrCount;
		this.fforbidden = fforbidden;
		this.fgroupid = fgroupid;
		this.fhomePhone = fhomePhone;
		this.finvalidationDate = finvalidationDate;
		this.fisBizAdmin = fisBizAdmin;
		this.fisChangedpw = fisChangedpw;
		this.fisDelete = fisDelete;
		this.fisLocked = fisLocked;
		this.fisRegister = fisRegister;
		this.flastUpdateTime = flastUpdateTime;
		this.flastUpdateUserid = flastUpdateUserid;
		this.flockedTime = flockedTime;
		this.floginAuthorWay = floginAuthorWay;
		this.fmainRoleid = fmainRoleid;
		this.fnameL1 = fnameL1;
		this.fnameL2 = fnameL2;
		this.fnameL3 = fnameL3;
		this.fnumber = fnumber;
		this.fofficePhone = fofficePhone;
		this.fpassword = fpassword;
		this.fpersonId = fpersonId;
		this.fpwdHisStr = fpwdHisStr;
		this.fpweffectiveDate = fpweffectiveDate;
		this.freferId = freferId;
		this.fsecurityId = fsecurityId;
		this.fsupplierid = fsupplierid;
		this.ftype = ftype;
	}

	// Property accessors
	@Id
	@Column(name = "fid", unique = true, nullable = false, length = 44)
	public String getFid() {
		return this.fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}

	@Column(name = "fagent_user")
	public Integer getFagentUser() {
		return this.fagentUser;
	}

	public void setFagentUser(Integer fagentUser) {
		this.fagentUser = fagentUser;
	}

	@Column(name = "fbackupemail", length = 80)
	public String getFbackupemail() {
		return this.fbackupemail;
	}

	public void setFbackupemail(String fbackupemail) {
		this.fbackupemail = fbackupemail;
	}

	@Column(name = "fcell", length = 80)
	public String getFcell() {
		return this.fcell;
	}

	public void setFcell(String fcell) {
		this.fcell = fcell;
	}

	@Column(name = "fcontrol_unitid", nullable = false, length = 44)
	public String getFcontrolUnitid() {
		return this.fcontrolUnitid;
	}

	public void setFcontrolUnitid(String fcontrolUnitid) {
		this.fcontrolUnitid = fcontrolUnitid;
	}

	@Column(name = "fcreate_time", length = 19)
	public Timestamp getFcreateTime() {
		return this.fcreateTime;
	}

	public void setFcreateTime(Timestamp fcreateTime) {
		this.fcreateTime = fcreateTime;
	}

	@Column(name = "fcreatorid", length = 44)
	public String getFcreatorid() {
		return this.fcreatorid;
	}

	public void setFcreatorid(String fcreatorid) {
		this.fcreatorid = fcreatorid;
	}

	@Column(name = "fcustomerid", length = 44)
	public String getFcustomerid() {
		return this.fcustomerid;
	}

	public void setFcustomerid(String fcustomerid) {
		this.fcustomerid = fcustomerid;
	}

	@Column(name = "fdef_org_unitid", length = 44)
	public String getFdefOrgUnitid() {
		return this.fdefOrgUnitid;
	}

	public void setFdefOrgUnitid(String fdefOrgUnitid) {
		this.fdefOrgUnitid = fdefOrgUnitid;
	}

	@Column(name = "fdefault_locale", length = 80)
	public String getFdefaultLocale() {
		return this.fdefaultLocale;
	}

	public void setFdefaultLocale(String fdefaultLocale) {
		this.fdefaultLocale = fdefaultLocale;
	}

	@Column(name = "fdescription_l1", length = 80)
	public String getFdescriptionL1() {
		return this.fdescriptionL1;
	}

	public void setFdescriptionL1(String fdescriptionL1) {
		this.fdescriptionL1 = fdescriptionL1;
	}

	@Column(name = "fdescription_l2", length = 80)
	public String getFdescriptionL2() {
		return this.fdescriptionL2;
	}

	public void setFdescriptionL2(String fdescriptionL2) {
		this.fdescriptionL2 = fdescriptionL2;
	}

	@Column(name = "fdescription_l3", length = 80)
	public String getFdescriptionL3() {
		return this.fdescriptionL3;
	}

	public void setFdescriptionL3(String fdescriptionL3) {
		this.fdescriptionL3 = fdescriptionL3;
	}

	@Column(name = "feffective_date", length = 19)
	public Timestamp getFeffectiveDate() {
		return this.feffectiveDate;
	}

	public void setFeffectiveDate(Timestamp feffectiveDate) {
		this.feffectiveDate = feffectiveDate;
	}

	@Column(name = "femail", length = 80)
	public String getFemail() {
		return this.femail;
	}

	public void setFemail(String femail) {
		this.femail = femail;
	}

	@Column(name = "ferr_count")
	public Integer getFerrCount() {
		return this.ferrCount;
	}

	public void setFerrCount(Integer ferrCount) {
		this.ferrCount = ferrCount;
	}

	@Column(name = "fforbidden")
	public Integer getFforbidden() {
		return this.fforbidden;
	}

	public void setFforbidden(Integer fforbidden) {
		this.fforbidden = fforbidden;
	}

	@Column(name = "fgroupid", length = 44)
	public String getFgroupid() {
		return this.fgroupid;
	}

	public void setFgroupid(String fgroupid) {
		this.fgroupid = fgroupid;
	}

	@Column(name = "fhome_phone", length = 80)
	public String getFhomePhone() {
		return this.fhomePhone;
	}

	public void setFhomePhone(String fhomePhone) {
		this.fhomePhone = fhomePhone;
	}

	@Column(name = "finvalidation_date", length = 19)
	public Timestamp getFinvalidationDate() {
		return this.finvalidationDate;
	}

	public void setFinvalidationDate(Timestamp finvalidationDate) {
		this.finvalidationDate = finvalidationDate;
	}

	@Column(name = "fis_biz_admin", nullable = false)
	public Integer getFisBizAdmin() {
		return this.fisBizAdmin;
	}

	public void setFisBizAdmin(Integer fisBizAdmin) {
		this.fisBizAdmin = fisBizAdmin;
	}

	@Column(name = "fis_changedpw", nullable = false)
	public Integer getFisChangedpw() {
		return this.fisChangedpw;
	}

	public void setFisChangedpw(Integer fisChangedpw) {
		this.fisChangedpw = fisChangedpw;
	}

	@Column(name = "fis_delete")
	public Integer getFisDelete() {
		return this.fisDelete;
	}

	public void setFisDelete(Integer fisDelete) {
		this.fisDelete = fisDelete;
	}

	@Column(name = "fis_locked")
	public Integer getFisLocked() {
		return this.fisLocked;
	}

	public void setFisLocked(Integer fisLocked) {
		this.fisLocked = fisLocked;
	}

	@Column(name = "fis_register")
	public Integer getFisRegister() {
		return this.fisRegister;
	}

	public void setFisRegister(Integer fisRegister) {
		this.fisRegister = fisRegister;
	}

	@Column(name = "flast_update_time", length = 19)
	public Timestamp getFlastUpdateTime() {
		return this.flastUpdateTime;
	}

	public void setFlastUpdateTime(Timestamp flastUpdateTime) {
		this.flastUpdateTime = flastUpdateTime;
	}

	@Column(name = "flast_update_userid", length = 44)
	public String getFlastUpdateUserid() {
		return this.flastUpdateUserid;
	}

	public void setFlastUpdateUserid(String flastUpdateUserid) {
		this.flastUpdateUserid = flastUpdateUserid;
	}

	@Column(name = "flocked_time", length = 19)
	public Timestamp getFlockedTime() {
		return this.flockedTime;
	}

	public void setFlockedTime(Timestamp flockedTime) {
		this.flockedTime = flockedTime;
	}

	@Column(name = "flogin_author_way")
	public Integer getFloginAuthorWay() {
		return this.floginAuthorWay;
	}

	public void setFloginAuthorWay(Integer floginAuthorWay) {
		this.floginAuthorWay = floginAuthorWay;
	}

	@Column(name = "fmain_roleid", length = 44)
	public String getFmainRoleid() {
		return this.fmainRoleid;
	}

	public void setFmainRoleid(String fmainRoleid) {
		this.fmainRoleid = fmainRoleid;
	}

	@Column(name = "fname_l1", length = 80)
	public String getFnameL1() {
		return this.fnameL1;
	}

	public void setFnameL1(String fnameL1) {
		this.fnameL1 = fnameL1;
	}

	@Column(name = "fname_l2", length = 80)
	public String getFnameL2() {
		return this.fnameL2;
	}

	public void setFnameL2(String fnameL2) {
		this.fnameL2 = fnameL2;
	}

	@Column(name = "fname_l3", length = 80)
	public String getFnameL3() {
		return this.fnameL3;
	}

	public void setFnameL3(String fnameL3) {
		this.fnameL3 = fnameL3;
	}

	@Column(name = "fnumber", length = 80)
	public String getFnumber() {
		return this.fnumber;
	}

	public void setFnumber(String fnumber) {
		this.fnumber = fnumber;
	}

	@Column(name = "foffice_phone", length = 80)
	public String getFofficePhone() {
		return this.fofficePhone;
	}

	public void setFofficePhone(String fofficePhone) {
		this.fofficePhone = fofficePhone;
	}

	@Column(name = "fpassword", length = 80)
	public String getFpassword() {
		return this.fpassword;
	}

	public void setFpassword(String fpassword) {
		this.fpassword = fpassword;
	}

	@Column(name = "fperson_id", length = 44)
	public String getFpersonId() {
		return this.fpersonId;
	}

	public void setFpersonId(String fpersonId) {
		this.fpersonId = fpersonId;
	}

	@Column(name = "fpwd_his_str", length = 200)
	public String getFpwdHisStr() {
		return this.fpwdHisStr;
	}

	public void setFpwdHisStr(String fpwdHisStr) {
		this.fpwdHisStr = fpwdHisStr;
	}

	@Column(name = "fpweffective_date", length = 19)
	public Timestamp getFpweffectiveDate() {
		return this.fpweffectiveDate;
	}

	public void setFpweffectiveDate(Timestamp fpweffectiveDate) {
		this.fpweffectiveDate = fpweffectiveDate;
	}

	@Column(name = "frefer_id", length = 44)
	public String getFreferId() {
		return this.freferId;
	}

	public void setFreferId(String freferId) {
		this.freferId = freferId;
	}

	@Column(name = "fsecurity_id", length = 44)
	public String getFsecurityId() {
		return this.fsecurityId;
	}

	public void setFsecurityId(String fsecurityId) {
		this.fsecurityId = fsecurityId;
	}

	@Column(name = "fsupplierid", length = 44)
	public String getFsupplierid() {
		return this.fsupplierid;
	}

	public void setFsupplierid(String fsupplierid) {
		this.fsupplierid = fsupplierid;
	}

	@Column(name = "ftype", nullable = false)
	public Integer getFtype() {
		return this.ftype;
	}

	public void setFtype(Integer ftype) {
		this.ftype = ftype;
	}

}