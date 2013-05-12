package me.leep.wf.entity.system;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Person entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "person")
public class Person extends AbstractPerson implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Person() {
	}

	/** minimal constructor */
	public Person(String fid, Integer fcheckState, String fcontrolUnitid,
			Integer fdeletedStatus, String fnumber) {
		super(fid, fcheckState, fcontrolUnitid, fdeletedStatus, fnumber);
	}

	/** full constructor */
	public Person(String fid, String faddressL1, String faddressL2,
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
		super(fid, faddressL1, faddressL2, faddressL3, fbackupCell,
				fbackupemail, fbirthid, fbirthday, fbloodType, fcell,
				fcheckState, fcontrolUnitid, fcreateTime, fcreatorid,
				fdeletedStatus, fdescriptionL1, fdescriptionL2, fdescriptionL3,
				femail, femployTechPostid, femployeeClassifyid,
				femployeeTypeid, ffolkid, ffullNamePingYin, fgender, fhealthid,
				fheight, fhighestCompetencyid, fhighestDegreeid,
				fhighestSubDegreeId, fhighestTechPostid, fhomePhone,
				fhrorgUnitid, fidNum, fidcardAdressL1, fidcardAdressL2,
				fidcardAdressL3, fidcardno, findex, fisStandby,
				fisStandbyCadre, fkaclassficationid, flastUpdateTime,
				flastUpdateUserid, flcmrationLevelid, flenOfActualService,
				fnameL1, fnameL2, fnameL3, fnationalityid, fnativePlaceL1,
				fnativePlaceL2, fnativePlaceL3, fnumber, fofficePhone,
				foldNameL1, foldNameL2, foldNameL3, fpassportno,
				fpoliticalFaceid, fresidencePlace, frtx, fsimpleName,
				fsimpleNamePingYin, fstandingid, fstate, fwedid, fzdy1, fzdy10,
				fzdy11, fzdy12, fzdy13, fzdy14, fzdy15, fzdy16, fzdy17, fzdy18,
				fzdy19, fzdy2, fzdy20, fzdy21, fzdy22, fzdy23, fzdy24, fzdy25,
				fzdy26, fzdy3, fzdy4, fzdy5, fzdy6, fzdy7, fzdy8, fzdy9);
	}

}
