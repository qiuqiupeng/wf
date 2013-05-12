package me.leep.wf.entity.system;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user")
public class User extends AbstractUser implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String fid, String fcontrolUnitid, Integer fisBizAdmin,
			Integer fisChangedpw, Integer ftype) {
		super(fid, fcontrolUnitid, fisBizAdmin, fisChangedpw, ftype);
	}

	/** full constructor */
	public User(String fid, Integer fagentUser, String fbackupemail,
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
		super(fid, fagentUser, fbackupemail, fcell, fcontrolUnitid,
				fcreateTime, fcreatorid, fcustomerid, fdefOrgUnitid,
				fdefaultLocale, fdescriptionL1, fdescriptionL2, fdescriptionL3,
				feffectiveDate, femail, ferrCount, fforbidden, fgroupid,
				fhomePhone, finvalidationDate, fisBizAdmin, fisChangedpw,
				fisDelete, fisLocked, fisRegister, flastUpdateTime,
				flastUpdateUserid, flockedTime, floginAuthorWay, fmainRoleid,
				fnameL1, fnameL2, fnameL3, fnumber, fofficePhone, fpassword,
				fpersonId, fpwdHisStr, fpweffectiveDate, freferId, fsecurityId,
				fsupplierid, ftype);
	}

}
