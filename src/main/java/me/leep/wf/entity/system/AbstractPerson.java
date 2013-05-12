package me.leep.wf.entity.system;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * AbstractPerson entity provides the base persistence definition of the Person
 * entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractPerson implements java.io.Serializable {

	// Fields

	private String fid;
	private String faddressL1;
	private String faddressL2;
	private String faddressL3;
	private String fbackupCell;
	private String fbackupemail;
	private String fbirthid;
	private Timestamp fbirthday;
	private Integer fbloodType;
	private String fcell;
	private Integer fcheckState;
	private String fcontrolUnitid;
	private Timestamp fcreateTime;
	private String fcreatorid;
	private Integer fdeletedStatus;
	private String fdescriptionL1;
	private String fdescriptionL2;
	private String fdescriptionL3;
	private String femail;
	private String femployTechPostid;
	private String femployeeClassifyid;
	private String femployeeTypeid;
	private String ffolkid;
	private String ffullNamePingYin;
	private Integer fgender;
	private String fhealthid;
	private Integer fheight;
	private String fhighestCompetencyid;
	private String fhighestDegreeid;
	private String fhighestSubDegreeId;
	private String fhighestTechPostid;
	private String fhomePhone;
	private String fhrorgUnitid;
	private String fidNum;
	private String fidcardAdressL1;
	private String fidcardAdressL2;
	private String fidcardAdressL3;
	private String fidcardno;
	private Integer findex;
	private Integer fisStandby;
	private Integer fisStandbyCadre;
	private String fkaclassficationid;
	private Timestamp flastUpdateTime;
	private String flastUpdateUserid;
	private String flcmrationLevelid;
	private Integer flenOfActualService;
	private String fnameL1;
	private String fnameL2;
	private String fnameL3;
	private String fnationalityid;
	private String fnativePlaceL1;
	private String fnativePlaceL2;
	private String fnativePlaceL3;
	private String fnumber;
	private String fofficePhone;
	private String foldNameL1;
	private String foldNameL2;
	private String foldNameL3;
	private String fpassportno;
	private String fpoliticalFaceid;
	private String fresidencePlace;
	private String frtx;
	private String fsimpleName;
	private String fsimpleNamePingYin;
	private String fstandingid;
	private Integer fstate;
	private String fwedid;
	private String fzdy1;
	private Timestamp fzdy10;
	private Timestamp fzdy11;
	private Timestamp fzdy12;
	private Timestamp fzdy13;
	private Timestamp fzdy14;
	private String fzdy15;
	private String fzdy16;
	private String fzdy17;
	private Double fzdy18;
	private Double fzdy19;
	private String fzdy2;
	private Integer fzdy20;
	private Integer fzdy21;
	private String fzdy22;
	private String fzdy23;
	private String fzdy24;
	private String fzdy25;
	private Integer fzdy26;
	private String fzdy3;
	private String fzdy4;
	private String fzdy5;
	private String fzdy6;
	private String fzdy7;
	private String fzdy8;
	private Timestamp fzdy9;

	// Constructors

	/** default constructor */
	public AbstractPerson() {
	}

	/** minimal constructor */
	public AbstractPerson(String fid, Integer fcheckState,
			String fcontrolUnitid, Integer fdeletedStatus, String fnumber) {
		this.fid = fid;
		this.fcheckState = fcheckState;
		this.fcontrolUnitid = fcontrolUnitid;
		this.fdeletedStatus = fdeletedStatus;
		this.fnumber = fnumber;
	}

	/** full constructor */
	public AbstractPerson(String fid, String faddressL1, String faddressL2,
			String faddressL3, String fbackupCell, String fbackupemail,
			String fbirthid, Timestamp fbirthday, Integer fbloodType,
			String fcell, Integer fcheckState, String fcontrolUnitid,
			Timestamp fcreateTime, String fcreatorid, Integer fdeletedStatus,
			String fdescriptionL1, String fdescriptionL2,
			String fdescriptionL3, String femail, String femployTechPostid,
			String femployeeClassifyid, String femployeeTypeid, String ffolkid,
			String ffullNamePingYin, Integer fgender, String fhealthid,
			Integer fheight, String fhighestCompetencyid,
			String fhighestDegreeid, String fhighestSubDegreeId,
			String fhighestTechPostid, String fhomePhone, String fhrorgUnitid,
			String fidNum, String fidcardAdressL1, String fidcardAdressL2,
			String fidcardAdressL3, String fidcardno, Integer findex,
			Integer fisStandby, Integer fisStandbyCadre,
			String fkaclassficationid, Timestamp flastUpdateTime,
			String flastUpdateUserid, String flcmrationLevelid,
			Integer flenOfActualService, String fnameL1, String fnameL2,
			String fnameL3, String fnationalityid, String fnativePlaceL1,
			String fnativePlaceL2, String fnativePlaceL3, String fnumber,
			String fofficePhone, String foldNameL1, String foldNameL2,
			String foldNameL3, String fpassportno, String fpoliticalFaceid,
			String fresidencePlace, String frtx, String fsimpleName,
			String fsimpleNamePingYin, String fstandingid, Integer fstate,
			String fwedid, String fzdy1, Timestamp fzdy10, Timestamp fzdy11,
			Timestamp fzdy12, Timestamp fzdy13, Timestamp fzdy14,
			String fzdy15, String fzdy16, String fzdy17, Double fzdy18,
			Double fzdy19, String fzdy2, Integer fzdy20, Integer fzdy21,
			String fzdy22, String fzdy23, String fzdy24, String fzdy25,
			Integer fzdy26, String fzdy3, String fzdy4, String fzdy5,
			String fzdy6, String fzdy7, String fzdy8, Timestamp fzdy9) {
		this.fid = fid;
		this.faddressL1 = faddressL1;
		this.faddressL2 = faddressL2;
		this.faddressL3 = faddressL3;
		this.fbackupCell = fbackupCell;
		this.fbackupemail = fbackupemail;
		this.fbirthid = fbirthid;
		this.fbirthday = fbirthday;
		this.fbloodType = fbloodType;
		this.fcell = fcell;
		this.fcheckState = fcheckState;
		this.fcontrolUnitid = fcontrolUnitid;
		this.fcreateTime = fcreateTime;
		this.fcreatorid = fcreatorid;
		this.fdeletedStatus = fdeletedStatus;
		this.fdescriptionL1 = fdescriptionL1;
		this.fdescriptionL2 = fdescriptionL2;
		this.fdescriptionL3 = fdescriptionL3;
		this.femail = femail;
		this.femployTechPostid = femployTechPostid;
		this.femployeeClassifyid = femployeeClassifyid;
		this.femployeeTypeid = femployeeTypeid;
		this.ffolkid = ffolkid;
		this.ffullNamePingYin = ffullNamePingYin;
		this.fgender = fgender;
		this.fhealthid = fhealthid;
		this.fheight = fheight;
		this.fhighestCompetencyid = fhighestCompetencyid;
		this.fhighestDegreeid = fhighestDegreeid;
		this.fhighestSubDegreeId = fhighestSubDegreeId;
		this.fhighestTechPostid = fhighestTechPostid;
		this.fhomePhone = fhomePhone;
		this.fhrorgUnitid = fhrorgUnitid;
		this.fidNum = fidNum;
		this.fidcardAdressL1 = fidcardAdressL1;
		this.fidcardAdressL2 = fidcardAdressL2;
		this.fidcardAdressL3 = fidcardAdressL3;
		this.fidcardno = fidcardno;
		this.findex = findex;
		this.fisStandby = fisStandby;
		this.fisStandbyCadre = fisStandbyCadre;
		this.fkaclassficationid = fkaclassficationid;
		this.flastUpdateTime = flastUpdateTime;
		this.flastUpdateUserid = flastUpdateUserid;
		this.flcmrationLevelid = flcmrationLevelid;
		this.flenOfActualService = flenOfActualService;
		this.fnameL1 = fnameL1;
		this.fnameL2 = fnameL2;
		this.fnameL3 = fnameL3;
		this.fnationalityid = fnationalityid;
		this.fnativePlaceL1 = fnativePlaceL1;
		this.fnativePlaceL2 = fnativePlaceL2;
		this.fnativePlaceL3 = fnativePlaceL3;
		this.fnumber = fnumber;
		this.fofficePhone = fofficePhone;
		this.foldNameL1 = foldNameL1;
		this.foldNameL2 = foldNameL2;
		this.foldNameL3 = foldNameL3;
		this.fpassportno = fpassportno;
		this.fpoliticalFaceid = fpoliticalFaceid;
		this.fresidencePlace = fresidencePlace;
		this.frtx = frtx;
		this.fsimpleName = fsimpleName;
		this.fsimpleNamePingYin = fsimpleNamePingYin;
		this.fstandingid = fstandingid;
		this.fstate = fstate;
		this.fwedid = fwedid;
		this.fzdy1 = fzdy1;
		this.fzdy10 = fzdy10;
		this.fzdy11 = fzdy11;
		this.fzdy12 = fzdy12;
		this.fzdy13 = fzdy13;
		this.fzdy14 = fzdy14;
		this.fzdy15 = fzdy15;
		this.fzdy16 = fzdy16;
		this.fzdy17 = fzdy17;
		this.fzdy18 = fzdy18;
		this.fzdy19 = fzdy19;
		this.fzdy2 = fzdy2;
		this.fzdy20 = fzdy20;
		this.fzdy21 = fzdy21;
		this.fzdy22 = fzdy22;
		this.fzdy23 = fzdy23;
		this.fzdy24 = fzdy24;
		this.fzdy25 = fzdy25;
		this.fzdy26 = fzdy26;
		this.fzdy3 = fzdy3;
		this.fzdy4 = fzdy4;
		this.fzdy5 = fzdy5;
		this.fzdy6 = fzdy6;
		this.fzdy7 = fzdy7;
		this.fzdy8 = fzdy8;
		this.fzdy9 = fzdy9;
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

	@Column(name = "faddress_l1", length = 150)
	public String getFaddressL1() {
		return this.faddressL1;
	}

	public void setFaddressL1(String faddressL1) {
		this.faddressL1 = faddressL1;
	}

	@Column(name = "faddress_l2", length = 150)
	public String getFaddressL2() {
		return this.faddressL2;
	}

	public void setFaddressL2(String faddressL2) {
		this.faddressL2 = faddressL2;
	}

	@Column(name = "faddress_l3", length = 150)
	public String getFaddressL3() {
		return this.faddressL3;
	}

	public void setFaddressL3(String faddressL3) {
		this.faddressL3 = faddressL3;
	}

	@Column(name = "fbackup_cell", length = 80)
	public String getFbackupCell() {
		return this.fbackupCell;
	}

	public void setFbackupCell(String fbackupCell) {
		this.fbackupCell = fbackupCell;
	}

	@Column(name = "fbackupemail", length = 80)
	public String getFbackupemail() {
		return this.fbackupemail;
	}

	public void setFbackupemail(String fbackupemail) {
		this.fbackupemail = fbackupemail;
	}

	@Column(name = "fbirthid", length = 44)
	public String getFbirthid() {
		return this.fbirthid;
	}

	public void setFbirthid(String fbirthid) {
		this.fbirthid = fbirthid;
	}

	@Column(name = "fbirthday", length = 19)
	public Timestamp getFbirthday() {
		return this.fbirthday;
	}

	public void setFbirthday(Timestamp fbirthday) {
		this.fbirthday = fbirthday;
	}

	@Column(name = "fblood_type")
	public Integer getFbloodType() {
		return this.fbloodType;
	}

	public void setFbloodType(Integer fbloodType) {
		this.fbloodType = fbloodType;
	}

	@Column(name = "fcell", length = 80)
	public String getFcell() {
		return this.fcell;
	}

	public void setFcell(String fcell) {
		this.fcell = fcell;
	}

	@Column(name = "fcheck_state", nullable = false)
	public Integer getFcheckState() {
		return this.fcheckState;
	}

	public void setFcheckState(Integer fcheckState) {
		this.fcheckState = fcheckState;
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

	@Column(name = "fdeleted_status", nullable = false)
	public Integer getFdeletedStatus() {
		return this.fdeletedStatus;
	}

	public void setFdeletedStatus(Integer fdeletedStatus) {
		this.fdeletedStatus = fdeletedStatus;
	}

	@Column(name = "fdescription_l1", length = 150)
	public String getFdescriptionL1() {
		return this.fdescriptionL1;
	}

	public void setFdescriptionL1(String fdescriptionL1) {
		this.fdescriptionL1 = fdescriptionL1;
	}

	@Column(name = "fdescription_l2", length = 150)
	public String getFdescriptionL2() {
		return this.fdescriptionL2;
	}

	public void setFdescriptionL2(String fdescriptionL2) {
		this.fdescriptionL2 = fdescriptionL2;
	}

	@Column(name = "fdescription_l3", length = 150)
	public String getFdescriptionL3() {
		return this.fdescriptionL3;
	}

	public void setFdescriptionL3(String fdescriptionL3) {
		this.fdescriptionL3 = fdescriptionL3;
	}

	@Column(name = "femail", length = 80)
	public String getFemail() {
		return this.femail;
	}

	public void setFemail(String femail) {
		this.femail = femail;
	}

	@Column(name = "femploy_tech_postid", length = 44)
	public String getFemployTechPostid() {
		return this.femployTechPostid;
	}

	public void setFemployTechPostid(String femployTechPostid) {
		this.femployTechPostid = femployTechPostid;
	}

	@Column(name = "femployee_classifyid", length = 44)
	public String getFemployeeClassifyid() {
		return this.femployeeClassifyid;
	}

	public void setFemployeeClassifyid(String femployeeClassifyid) {
		this.femployeeClassifyid = femployeeClassifyid;
	}

	@Column(name = "femployee_typeid", length = 44)
	public String getFemployeeTypeid() {
		return this.femployeeTypeid;
	}

	public void setFemployeeTypeid(String femployeeTypeid) {
		this.femployeeTypeid = femployeeTypeid;
	}

	@Column(name = "ffolkid", length = 44)
	public String getFfolkid() {
		return this.ffolkid;
	}

	public void setFfolkid(String ffolkid) {
		this.ffolkid = ffolkid;
	}

	@Column(name = "ffull_name_ping_yin", length = 80)
	public String getFfullNamePingYin() {
		return this.ffullNamePingYin;
	}

	public void setFfullNamePingYin(String ffullNamePingYin) {
		this.ffullNamePingYin = ffullNamePingYin;
	}

	@Column(name = "fgender")
	public Integer getFgender() {
		return this.fgender;
	}

	public void setFgender(Integer fgender) {
		this.fgender = fgender;
	}

	@Column(name = "fhealthid", length = 44)
	public String getFhealthid() {
		return this.fhealthid;
	}

	public void setFhealthid(String fhealthid) {
		this.fhealthid = fhealthid;
	}

	@Column(name = "fheight")
	public Integer getFheight() {
		return this.fheight;
	}

	public void setFheight(Integer fheight) {
		this.fheight = fheight;
	}

	@Column(name = "fhighest_competencyid", length = 44)
	public String getFhighestCompetencyid() {
		return this.fhighestCompetencyid;
	}

	public void setFhighestCompetencyid(String fhighestCompetencyid) {
		this.fhighestCompetencyid = fhighestCompetencyid;
	}

	@Column(name = "fhighest_degreeid", length = 44)
	public String getFhighestDegreeid() {
		return this.fhighestDegreeid;
	}

	public void setFhighestDegreeid(String fhighestDegreeid) {
		this.fhighestDegreeid = fhighestDegreeid;
	}

	@Column(name = "fhighest_sub_degree_id", length = 44)
	public String getFhighestSubDegreeId() {
		return this.fhighestSubDegreeId;
	}

	public void setFhighestSubDegreeId(String fhighestSubDegreeId) {
		this.fhighestSubDegreeId = fhighestSubDegreeId;
	}

	@Column(name = "fhighest_tech_postid", length = 44)
	public String getFhighestTechPostid() {
		return this.fhighestTechPostid;
	}

	public void setFhighestTechPostid(String fhighestTechPostid) {
		this.fhighestTechPostid = fhighestTechPostid;
	}

	@Column(name = "fhome_phone", length = 80)
	public String getFhomePhone() {
		return this.fhomePhone;
	}

	public void setFhomePhone(String fhomePhone) {
		this.fhomePhone = fhomePhone;
	}

	@Column(name = "fhrorg_unitid", length = 44)
	public String getFhrorgUnitid() {
		return this.fhrorgUnitid;
	}

	public void setFhrorgUnitid(String fhrorgUnitid) {
		this.fhrorgUnitid = fhrorgUnitid;
	}

	@Column(name = "fid_num", length = 120)
	public String getFidNum() {
		return this.fidNum;
	}

	public void setFidNum(String fidNum) {
		this.fidNum = fidNum;
	}

	@Column(name = "fidcard_adress_l1", length = 120)
	public String getFidcardAdressL1() {
		return this.fidcardAdressL1;
	}

	public void setFidcardAdressL1(String fidcardAdressL1) {
		this.fidcardAdressL1 = fidcardAdressL1;
	}

	@Column(name = "fidcard_adress_l2", length = 120)
	public String getFidcardAdressL2() {
		return this.fidcardAdressL2;
	}

	public void setFidcardAdressL2(String fidcardAdressL2) {
		this.fidcardAdressL2 = fidcardAdressL2;
	}

	@Column(name = "fidcard_adress_l3", length = 120)
	public String getFidcardAdressL3() {
		return this.fidcardAdressL3;
	}

	public void setFidcardAdressL3(String fidcardAdressL3) {
		this.fidcardAdressL3 = fidcardAdressL3;
	}

	@Column(name = "fidcardno", length = 80)
	public String getFidcardno() {
		return this.fidcardno;
	}

	public void setFidcardno(String fidcardno) {
		this.fidcardno = fidcardno;
	}

	@Column(name = "findex")
	public Integer getFindex() {
		return this.findex;
	}

	public void setFindex(Integer findex) {
		this.findex = findex;
	}

	@Column(name = "fis_standby")
	public Integer getFisStandby() {
		return this.fisStandby;
	}

	public void setFisStandby(Integer fisStandby) {
		this.fisStandby = fisStandby;
	}

	@Column(name = "fis_standby_cadre")
	public Integer getFisStandbyCadre() {
		return this.fisStandbyCadre;
	}

	public void setFisStandbyCadre(Integer fisStandbyCadre) {
		this.fisStandbyCadre = fisStandbyCadre;
	}

	@Column(name = "fkaclassficationid", length = 44)
	public String getFkaclassficationid() {
		return this.fkaclassficationid;
	}

	public void setFkaclassficationid(String fkaclassficationid) {
		this.fkaclassficationid = fkaclassficationid;
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

	@Column(name = "flcmration_levelid", length = 44)
	public String getFlcmrationLevelid() {
		return this.flcmrationLevelid;
	}

	public void setFlcmrationLevelid(String flcmrationLevelid) {
		this.flcmrationLevelid = flcmrationLevelid;
	}

	@Column(name = "flen_of_actual_service")
	public Integer getFlenOfActualService() {
		return this.flenOfActualService;
	}

	public void setFlenOfActualService(Integer flenOfActualService) {
		this.flenOfActualService = flenOfActualService;
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

	@Column(name = "fnationalityid", length = 44)
	public String getFnationalityid() {
		return this.fnationalityid;
	}

	public void setFnationalityid(String fnationalityid) {
		this.fnationalityid = fnationalityid;
	}

	@Column(name = "fnative_place_l1", length = 120)
	public String getFnativePlaceL1() {
		return this.fnativePlaceL1;
	}

	public void setFnativePlaceL1(String fnativePlaceL1) {
		this.fnativePlaceL1 = fnativePlaceL1;
	}

	@Column(name = "fnative_place_l2", length = 120)
	public String getFnativePlaceL2() {
		return this.fnativePlaceL2;
	}

	public void setFnativePlaceL2(String fnativePlaceL2) {
		this.fnativePlaceL2 = fnativePlaceL2;
	}

	@Column(name = "fnative_place_l3", length = 120)
	public String getFnativePlaceL3() {
		return this.fnativePlaceL3;
	}

	public void setFnativePlaceL3(String fnativePlaceL3) {
		this.fnativePlaceL3 = fnativePlaceL3;
	}

	@Column(name = "fnumber", nullable = false, length = 80)
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

	@Column(name = "fold_name_l1", length = 80)
	public String getFoldNameL1() {
		return this.foldNameL1;
	}

	public void setFoldNameL1(String foldNameL1) {
		this.foldNameL1 = foldNameL1;
	}

	@Column(name = "fold_name_l2", length = 80)
	public String getFoldNameL2() {
		return this.foldNameL2;
	}

	public void setFoldNameL2(String foldNameL2) {
		this.foldNameL2 = foldNameL2;
	}

	@Column(name = "fold_name_l3", length = 80)
	public String getFoldNameL3() {
		return this.foldNameL3;
	}

	public void setFoldNameL3(String foldNameL3) {
		this.foldNameL3 = foldNameL3;
	}

	@Column(name = "fpassportno", length = 80)
	public String getFpassportno() {
		return this.fpassportno;
	}

	public void setFpassportno(String fpassportno) {
		this.fpassportno = fpassportno;
	}

	@Column(name = "fpolitical_faceid", length = 44)
	public String getFpoliticalFaceid() {
		return this.fpoliticalFaceid;
	}

	public void setFpoliticalFaceid(String fpoliticalFaceid) {
		this.fpoliticalFaceid = fpoliticalFaceid;
	}

	@Column(name = "fresidence_place", length = 100)
	public String getFresidencePlace() {
		return this.fresidencePlace;
	}

	public void setFresidencePlace(String fresidencePlace) {
		this.fresidencePlace = fresidencePlace;
	}

	@Column(name = "frtx", length = 80)
	public String getFrtx() {
		return this.frtx;
	}

	public void setFrtx(String frtx) {
		this.frtx = frtx;
	}

	@Column(name = "fsimple_name", length = 50)
	public String getFsimpleName() {
		return this.fsimpleName;
	}

	public void setFsimpleName(String fsimpleName) {
		this.fsimpleName = fsimpleName;
	}

	@Column(name = "fsimple_name_ping_yin", length = 80)
	public String getFsimpleNamePingYin() {
		return this.fsimpleNamePingYin;
	}

	public void setFsimpleNamePingYin(String fsimpleNamePingYin) {
		this.fsimpleNamePingYin = fsimpleNamePingYin;
	}

	@Column(name = "fstandingid", length = 44)
	public String getFstandingid() {
		return this.fstandingid;
	}

	public void setFstandingid(String fstandingid) {
		this.fstandingid = fstandingid;
	}

	@Column(name = "fstate")
	public Integer getFstate() {
		return this.fstate;
	}

	public void setFstate(Integer fstate) {
		this.fstate = fstate;
	}

	@Column(name = "fwedid", length = 44)
	public String getFwedid() {
		return this.fwedid;
	}

	public void setFwedid(String fwedid) {
		this.fwedid = fwedid;
	}

	@Column(name = "fzdy1", length = 44)
	public String getFzdy1() {
		return this.fzdy1;
	}

	public void setFzdy1(String fzdy1) {
		this.fzdy1 = fzdy1;
	}

	@Column(name = "fzdy10", length = 19)
	public Timestamp getFzdy10() {
		return this.fzdy10;
	}

	public void setFzdy10(Timestamp fzdy10) {
		this.fzdy10 = fzdy10;
	}

	@Column(name = "fzdy11", length = 19)
	public Timestamp getFzdy11() {
		return this.fzdy11;
	}

	public void setFzdy11(Timestamp fzdy11) {
		this.fzdy11 = fzdy11;
	}

	@Column(name = "fzdy12", length = 19)
	public Timestamp getFzdy12() {
		return this.fzdy12;
	}

	public void setFzdy12(Timestamp fzdy12) {
		this.fzdy12 = fzdy12;
	}

	@Column(name = "fzdy13", length = 19)
	public Timestamp getFzdy13() {
		return this.fzdy13;
	}

	public void setFzdy13(Timestamp fzdy13) {
		this.fzdy13 = fzdy13;
	}

	@Column(name = "fzdy14", length = 19)
	public Timestamp getFzdy14() {
		return this.fzdy14;
	}

	public void setFzdy14(Timestamp fzdy14) {
		this.fzdy14 = fzdy14;
	}

	@Column(name = "fzdy15")
	public String getFzdy15() {
		return this.fzdy15;
	}

	public void setFzdy15(String fzdy15) {
		this.fzdy15 = fzdy15;
	}

	@Column(name = "fzdy16", length = 80)
	public String getFzdy16() {
		return this.fzdy16;
	}

	public void setFzdy16(String fzdy16) {
		this.fzdy16 = fzdy16;
	}

	@Column(name = "fzdy17", length = 80)
	public String getFzdy17() {
		return this.fzdy17;
	}

	public void setFzdy17(String fzdy17) {
		this.fzdy17 = fzdy17;
	}

	@Column(name = "fzdy18", precision = 22, scale = 0)
	public Double getFzdy18() {
		return this.fzdy18;
	}

	public void setFzdy18(Double fzdy18) {
		this.fzdy18 = fzdy18;
	}

	@Column(name = "fzdy19", precision = 22, scale = 0)
	public Double getFzdy19() {
		return this.fzdy19;
	}

	public void setFzdy19(Double fzdy19) {
		this.fzdy19 = fzdy19;
	}

	@Column(name = "fzdy2", length = 44)
	public String getFzdy2() {
		return this.fzdy2;
	}

	public void setFzdy2(String fzdy2) {
		this.fzdy2 = fzdy2;
	}

	@Column(name = "fzdy20")
	public Integer getFzdy20() {
		return this.fzdy20;
	}

	public void setFzdy20(Integer fzdy20) {
		this.fzdy20 = fzdy20;
	}

	@Column(name = "fzdy21")
	public Integer getFzdy21() {
		return this.fzdy21;
	}

	public void setFzdy21(Integer fzdy21) {
		this.fzdy21 = fzdy21;
	}

	@Column(name = "fzdy22", length = 80)
	public String getFzdy22() {
		return this.fzdy22;
	}

	public void setFzdy22(String fzdy22) {
		this.fzdy22 = fzdy22;
	}

	@Column(name = "fzdy23", length = 80)
	public String getFzdy23() {
		return this.fzdy23;
	}

	public void setFzdy23(String fzdy23) {
		this.fzdy23 = fzdy23;
	}

	@Column(name = "fzdy24", length = 80)
	public String getFzdy24() {
		return this.fzdy24;
	}

	public void setFzdy24(String fzdy24) {
		this.fzdy24 = fzdy24;
	}

	@Column(name = "fzdy25", length = 80)
	public String getFzdy25() {
		return this.fzdy25;
	}

	public void setFzdy25(String fzdy25) {
		this.fzdy25 = fzdy25;
	}

	@Column(name = "fzdy26")
	public Integer getFzdy26() {
		return this.fzdy26;
	}

	public void setFzdy26(Integer fzdy26) {
		this.fzdy26 = fzdy26;
	}

	@Column(name = "fzdy3", length = 44)
	public String getFzdy3() {
		return this.fzdy3;
	}

	public void setFzdy3(String fzdy3) {
		this.fzdy3 = fzdy3;
	}

	@Column(name = "fzdy4", length = 44)
	public String getFzdy4() {
		return this.fzdy4;
	}

	public void setFzdy4(String fzdy4) {
		this.fzdy4 = fzdy4;
	}

	@Column(name = "fzdy5", length = 44)
	public String getFzdy5() {
		return this.fzdy5;
	}

	public void setFzdy5(String fzdy5) {
		this.fzdy5 = fzdy5;
	}

	@Column(name = "fzdy6", length = 44)
	public String getFzdy6() {
		return this.fzdy6;
	}

	public void setFzdy6(String fzdy6) {
		this.fzdy6 = fzdy6;
	}

	@Column(name = "fzdy7", length = 44)
	public String getFzdy7() {
		return this.fzdy7;
	}

	public void setFzdy7(String fzdy7) {
		this.fzdy7 = fzdy7;
	}

	@Column(name = "fzdy8", length = 44)
	public String getFzdy8() {
		return this.fzdy8;
	}

	public void setFzdy8(String fzdy8) {
		this.fzdy8 = fzdy8;
	}

	@Column(name = "fzdy9", length = 19)
	public Timestamp getFzdy9() {
		return this.fzdy9;
	}

	public void setFzdy9(Timestamp fzdy9) {
		this.fzdy9 = fzdy9;
	}

}