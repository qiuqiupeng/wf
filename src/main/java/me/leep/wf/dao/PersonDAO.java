package me.leep.wf.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import me.leep.wf.entity.system.Person;

/**
 * A data access object (DAO) providing persistence and search support for
 * Person entities. Transaction control of the save(), update() and delete()
 * operations must be handled externally by senders of these methods or must be
 * manually added to each of these methods for data to be persisted to the JPA
 * datastore.
 * 
 * @see me.leep.wf.entity.system.Person
 * @author MyEclipse Persistence Tools
 */
public class PersonDAO implements IPersonDAO {
	// property constants
	public static final String FADDRESS_L1 = "faddressL1";
	public static final String FADDRESS_L2 = "faddressL2";
	public static final String FADDRESS_L3 = "faddressL3";
	public static final String FBACKUP_CELL = "fbackupCell";
	public static final String FBACKUPEMAIL = "fbackupemail";
	public static final String FBIRTHID = "fbirthid";
	public static final String FBLOOD_TYPE = "fbloodType";
	public static final String FCELL = "fcell";
	public static final String FCHECK_STATE = "fcheckState";
	public static final String FCONTROL_UNITID = "fcontrolUnitid";
	public static final String FCREATORID = "fcreatorid";
	public static final String FDELETED_STATUS = "fdeletedStatus";
	public static final String FDESCRIPTION_L1 = "fdescriptionL1";
	public static final String FDESCRIPTION_L2 = "fdescriptionL2";
	public static final String FDESCRIPTION_L3 = "fdescriptionL3";
	public static final String FEMAIL = "femail";
	public static final String FEMPLOY_TECH_POSTID = "femployTechPostid";
	public static final String FEMPLOYEE_CLASSIFYID = "femployeeClassifyid";
	public static final String FEMPLOYEE_TYPEID = "femployeeTypeid";
	public static final String FFOLKID = "ffolkid";
	public static final String FFULL_NAME_PING_YIN = "ffullNamePingYin";
	public static final String FGENDER = "fgender";
	public static final String FHEALTHID = "fhealthid";
	public static final String FHEIGHT = "fheight";
	public static final String FHIGHEST_COMPETENCYID = "fhighestCompetencyid";
	public static final String FHIGHEST_DEGREEID = "fhighestDegreeid";
	public static final String FHIGHEST_SUB_DEGREE_ID = "fhighestSubDegreeId";
	public static final String FHIGHEST_TECH_POSTID = "fhighestTechPostid";
	public static final String FHOME_PHONE = "fhomePhone";
	public static final String FHRORG_UNITID = "fhrorgUnitid";
	public static final String FID_NUM = "fidNum";
	public static final String FIDCARD_ADRESS_L1 = "fidcardAdressL1";
	public static final String FIDCARD_ADRESS_L2 = "fidcardAdressL2";
	public static final String FIDCARD_ADRESS_L3 = "fidcardAdressL3";
	public static final String FIDCARDNO = "fidcardno";
	public static final String FINDEX = "findex";
	public static final String FIS_STANDBY = "fisStandby";
	public static final String FIS_STANDBY_CADRE = "fisStandbyCadre";
	public static final String FKACLASSFICATIONID = "fkaclassficationid";
	public static final String FLAST_UPDATE_USERID = "flastUpdateUserid";
	public static final String FLCMRATION_LEVELID = "flcmrationLevelid";
	public static final String FLEN_OF_ACTUAL_SERVICE = "flenOfActualService";
	public static final String FNAME_L1 = "fnameL1";
	public static final String FNAME_L2 = "fnameL2";
	public static final String FNAME_L3 = "fnameL3";
	public static final String FNATIONALITYID = "fnationalityid";
	public static final String FNATIVE_PLACE_L1 = "fnativePlaceL1";
	public static final String FNATIVE_PLACE_L2 = "fnativePlaceL2";
	public static final String FNATIVE_PLACE_L3 = "fnativePlaceL3";
	public static final String FNUMBER = "fnumber";
	public static final String FOFFICE_PHONE = "fofficePhone";
	public static final String FOLD_NAME_L1 = "foldNameL1";
	public static final String FOLD_NAME_L2 = "foldNameL2";
	public static final String FOLD_NAME_L3 = "foldNameL3";
	public static final String FPASSPORTNO = "fpassportno";
	public static final String FPOLITICAL_FACEID = "fpoliticalFaceid";
	public static final String FRESIDENCE_PLACE = "fresidencePlace";
	public static final String FRTX = "frtx";
	public static final String FSIMPLE_NAME = "fsimpleName";
	public static final String FSIMPLE_NAME_PING_YIN = "fsimpleNamePingYin";
	public static final String FSTANDINGID = "fstandingid";
	public static final String FSTATE = "fstate";
	public static final String FWEDID = "fwedid";
	public static final String FZDY1 = "fzdy1";
	public static final String FZDY15 = "fzdy15";
	public static final String FZDY16 = "fzdy16";
	public static final String FZDY17 = "fzdy17";
	public static final String FZDY18 = "fzdy18";
	public static final String FZDY19 = "fzdy19";
	public static final String FZDY2 = "fzdy2";
	public static final String FZDY20 = "fzdy20";
	public static final String FZDY21 = "fzdy21";
	public static final String FZDY22 = "fzdy22";
	public static final String FZDY23 = "fzdy23";
	public static final String FZDY24 = "fzdy24";
	public static final String FZDY25 = "fzdy25";
	public static final String FZDY26 = "fzdy26";
	public static final String FZDY3 = "fzdy3";
	public static final String FZDY4 = "fzdy4";
	public static final String FZDY5 = "fzdy5";
	public static final String FZDY6 = "fzdy6";
	public static final String FZDY7 = "fzdy7";
	public static final String FZDY8 = "fzdy8";

	private EntityManager getEntityManager() {
		return EntityManagerHelper.getEntityManager();
	}

	/**
	 * Perform an initial save of a previously unsaved Person entity. All
	 * subsequent persist actions of this entity should use the #update()
	 * method. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#persist(Object)
	 * EntityManager#persist} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * PersonDAO.save(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Person entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(Person entity) {
		EntityManagerHelper.log("saving Person instance", Level.INFO, null);
		try {
			getEntityManager().persist(entity);
			EntityManagerHelper.log("save successful", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log("save failed", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Delete a persistent Person entity. This operation must be performed
	 * within the a database transaction context for the entity's data to be
	 * permanently deleted from the persistence store, i.e., database. This
	 * method uses the {@link javax.persistence.EntityManager#remove(Object)
	 * EntityManager#delete} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * PersonDAO.delete(entity);
	 * EntityManagerHelper.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            Person entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(Person entity) {
		EntityManagerHelper.log("deleting Person instance", Level.INFO, null);
		try {
			entity = getEntityManager().getReference(Person.class,
					entity.getFid());
			getEntityManager().remove(entity);
			EntityManagerHelper.log("delete successful", Level.INFO, null);
		} catch (RuntimeException re) {
			EntityManagerHelper.log("delete failed", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Persist a previously saved Person entity and return it or a copy of it to
	 * the sender. A copy of the Person entity parameter is returned when the
	 * JPA persistence mechanism has not previously been tracking the updated
	 * entity. This operation must be performed within the a database
	 * transaction context for the entity's data to be permanently saved to the
	 * persistence store, i.e., database. This method uses the
	 * {@link javax.persistence.EntityManager#merge(Object) EntityManager#merge}
	 * operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * entity = PersonDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Person entity to update
	 * @return Person the persisted Person entity instance, may not be the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public Person update(Person entity) {
		EntityManagerHelper.log("updating Person instance", Level.INFO, null);
		try {
			Person result = getEntityManager().merge(entity);
			EntityManagerHelper.log("update successful", Level.INFO, null);
			return result;
		} catch (RuntimeException re) {
			EntityManagerHelper.log("update failed", Level.SEVERE, re);
			throw re;
		}
	}

	public Person findById(String id) {
		EntityManagerHelper.log("finding Person instance with id: " + id,
				Level.INFO, null);
		try {
			Person instance = getEntityManager().find(Person.class, id);
			return instance;
		} catch (RuntimeException re) {
			EntityManagerHelper.log("find failed", Level.SEVERE, re);
			throw re;
		}
	}

	/**
	 * Find all Person entities with a specific property value.
	 * 
	 * @param propertyName
	 *            the name of the Person property to query
	 * @param value
	 *            the property value to match
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            number of results to return.
	 * @return List<Person> found by query
	 */
	@SuppressWarnings("unchecked")
	public List<Person> findByProperty(String propertyName, final Object value,
			final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding Person instance with property: "
				+ propertyName + ", value: " + value, Level.INFO, null);
		try {
			final String queryString = "select model from Person model where model."
					+ propertyName + "= :propertyValue";
			Query query = getEntityManager().createQuery(queryString);
			query.setParameter("propertyValue", value);
			if (rowStartIdxAndCount != null && rowStartIdxAndCount.length > 0) {
				int rowStartIdx = Math.max(0, rowStartIdxAndCount[0]);
				if (rowStartIdx > 0) {
					query.setFirstResult(rowStartIdx);
				}

				if (rowStartIdxAndCount.length > 1) {
					int rowCount = Math.max(0, rowStartIdxAndCount[1]);
					if (rowCount > 0) {
						query.setMaxResults(rowCount);
					}
				}
			}
			return query.getResultList();
		} catch (RuntimeException re) {
			EntityManagerHelper.log("find by property name failed",
					Level.SEVERE, re);
			throw re;
		}
	}

	public List<Person> findByFaddressL1(Object faddressL1,
			int... rowStartIdxAndCount) {
		return findByProperty(FADDRESS_L1, faddressL1, rowStartIdxAndCount);
	}

	public List<Person> findByFaddressL2(Object faddressL2,
			int... rowStartIdxAndCount) {
		return findByProperty(FADDRESS_L2, faddressL2, rowStartIdxAndCount);
	}

	public List<Person> findByFaddressL3(Object faddressL3,
			int... rowStartIdxAndCount) {
		return findByProperty(FADDRESS_L3, faddressL3, rowStartIdxAndCount);
	}

	public List<Person> findByFbackupCell(Object fbackupCell,
			int... rowStartIdxAndCount) {
		return findByProperty(FBACKUP_CELL, fbackupCell, rowStartIdxAndCount);
	}

	public List<Person> findByFbackupemail(Object fbackupemail,
			int... rowStartIdxAndCount) {
		return findByProperty(FBACKUPEMAIL, fbackupemail, rowStartIdxAndCount);
	}

	public List<Person> findByFbirthid(Object fbirthid,
			int... rowStartIdxAndCount) {
		return findByProperty(FBIRTHID, fbirthid, rowStartIdxAndCount);
	}

	public List<Person> findByFbloodType(Object fbloodType,
			int... rowStartIdxAndCount) {
		return findByProperty(FBLOOD_TYPE, fbloodType, rowStartIdxAndCount);
	}

	public List<Person> findByFcell(Object fcell, int... rowStartIdxAndCount) {
		return findByProperty(FCELL, fcell, rowStartIdxAndCount);
	}

	public List<Person> findByFcheckState(Object fcheckState,
			int... rowStartIdxAndCount) {
		return findByProperty(FCHECK_STATE, fcheckState, rowStartIdxAndCount);
	}

	public List<Person> findByFcontrolUnitid(Object fcontrolUnitid,
			int... rowStartIdxAndCount) {
		return findByProperty(FCONTROL_UNITID, fcontrolUnitid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFcreatorid(Object fcreatorid,
			int... rowStartIdxAndCount) {
		return findByProperty(FCREATORID, fcreatorid, rowStartIdxAndCount);
	}

	public List<Person> findByFdeletedStatus(Object fdeletedStatus,
			int... rowStartIdxAndCount) {
		return findByProperty(FDELETED_STATUS, fdeletedStatus,
				rowStartIdxAndCount);
	}

	public List<Person> findByFdescriptionL1(Object fdescriptionL1,
			int... rowStartIdxAndCount) {
		return findByProperty(FDESCRIPTION_L1, fdescriptionL1,
				rowStartIdxAndCount);
	}

	public List<Person> findByFdescriptionL2(Object fdescriptionL2,
			int... rowStartIdxAndCount) {
		return findByProperty(FDESCRIPTION_L2, fdescriptionL2,
				rowStartIdxAndCount);
	}

	public List<Person> findByFdescriptionL3(Object fdescriptionL3,
			int... rowStartIdxAndCount) {
		return findByProperty(FDESCRIPTION_L3, fdescriptionL3,
				rowStartIdxAndCount);
	}

	public List<Person> findByFemail(Object femail, int... rowStartIdxAndCount) {
		return findByProperty(FEMAIL, femail, rowStartIdxAndCount);
	}

	public List<Person> findByFemployTechPostid(Object femployTechPostid,
			int... rowStartIdxAndCount) {
		return findByProperty(FEMPLOY_TECH_POSTID, femployTechPostid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFemployeeClassifyid(Object femployeeClassifyid,
			int... rowStartIdxAndCount) {
		return findByProperty(FEMPLOYEE_CLASSIFYID, femployeeClassifyid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFemployeeTypeid(Object femployeeTypeid,
			int... rowStartIdxAndCount) {
		return findByProperty(FEMPLOYEE_TYPEID, femployeeTypeid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFfolkid(Object ffolkid,
			int... rowStartIdxAndCount) {
		return findByProperty(FFOLKID, ffolkid, rowStartIdxAndCount);
	}

	public List<Person> findByFfullNamePingYin(Object ffullNamePingYin,
			int... rowStartIdxAndCount) {
		return findByProperty(FFULL_NAME_PING_YIN, ffullNamePingYin,
				rowStartIdxAndCount);
	}

	public List<Person> findByFgender(Object fgender,
			int... rowStartIdxAndCount) {
		return findByProperty(FGENDER, fgender, rowStartIdxAndCount);
	}

	public List<Person> findByFhealthid(Object fhealthid,
			int... rowStartIdxAndCount) {
		return findByProperty(FHEALTHID, fhealthid, rowStartIdxAndCount);
	}

	public List<Person> findByFheight(Object fheight,
			int... rowStartIdxAndCount) {
		return findByProperty(FHEIGHT, fheight, rowStartIdxAndCount);
	}

	public List<Person> findByFhighestCompetencyid(Object fhighestCompetencyid,
			int... rowStartIdxAndCount) {
		return findByProperty(FHIGHEST_COMPETENCYID, fhighestCompetencyid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFhighestDegreeid(Object fhighestDegreeid,
			int... rowStartIdxAndCount) {
		return findByProperty(FHIGHEST_DEGREEID, fhighestDegreeid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFhighestSubDegreeId(Object fhighestSubDegreeId,
			int... rowStartIdxAndCount) {
		return findByProperty(FHIGHEST_SUB_DEGREE_ID, fhighestSubDegreeId,
				rowStartIdxAndCount);
	}

	public List<Person> findByFhighestTechPostid(Object fhighestTechPostid,
			int... rowStartIdxAndCount) {
		return findByProperty(FHIGHEST_TECH_POSTID, fhighestTechPostid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFhomePhone(Object fhomePhone,
			int... rowStartIdxAndCount) {
		return findByProperty(FHOME_PHONE, fhomePhone, rowStartIdxAndCount);
	}

	public List<Person> findByFhrorgUnitid(Object fhrorgUnitid,
			int... rowStartIdxAndCount) {
		return findByProperty(FHRORG_UNITID, fhrorgUnitid, rowStartIdxAndCount);
	}

	public List<Person> findByFidNum(Object fidNum, int... rowStartIdxAndCount) {
		return findByProperty(FID_NUM, fidNum, rowStartIdxAndCount);
	}

	public List<Person> findByFidcardAdressL1(Object fidcardAdressL1,
			int... rowStartIdxAndCount) {
		return findByProperty(FIDCARD_ADRESS_L1, fidcardAdressL1,
				rowStartIdxAndCount);
	}

	public List<Person> findByFidcardAdressL2(Object fidcardAdressL2,
			int... rowStartIdxAndCount) {
		return findByProperty(FIDCARD_ADRESS_L2, fidcardAdressL2,
				rowStartIdxAndCount);
	}

	public List<Person> findByFidcardAdressL3(Object fidcardAdressL3,
			int... rowStartIdxAndCount) {
		return findByProperty(FIDCARD_ADRESS_L3, fidcardAdressL3,
				rowStartIdxAndCount);
	}

	public List<Person> findByFidcardno(Object fidcardno,
			int... rowStartIdxAndCount) {
		return findByProperty(FIDCARDNO, fidcardno, rowStartIdxAndCount);
	}

	public List<Person> findByFindex(Object findex, int... rowStartIdxAndCount) {
		return findByProperty(FINDEX, findex, rowStartIdxAndCount);
	}

	public List<Person> findByFisStandby(Object fisStandby,
			int... rowStartIdxAndCount) {
		return findByProperty(FIS_STANDBY, fisStandby, rowStartIdxAndCount);
	}

	public List<Person> findByFisStandbyCadre(Object fisStandbyCadre,
			int... rowStartIdxAndCount) {
		return findByProperty(FIS_STANDBY_CADRE, fisStandbyCadre,
				rowStartIdxAndCount);
	}

	public List<Person> findByFkaclassficationid(Object fkaclassficationid,
			int... rowStartIdxAndCount) {
		return findByProperty(FKACLASSFICATIONID, fkaclassficationid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFlastUpdateUserid(Object flastUpdateUserid,
			int... rowStartIdxAndCount) {
		return findByProperty(FLAST_UPDATE_USERID, flastUpdateUserid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFlcmrationLevelid(Object flcmrationLevelid,
			int... rowStartIdxAndCount) {
		return findByProperty(FLCMRATION_LEVELID, flcmrationLevelid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFlenOfActualService(Object flenOfActualService,
			int... rowStartIdxAndCount) {
		return findByProperty(FLEN_OF_ACTUAL_SERVICE, flenOfActualService,
				rowStartIdxAndCount);
	}

	public List<Person> findByFnameL1(Object fnameL1,
			int... rowStartIdxAndCount) {
		return findByProperty(FNAME_L1, fnameL1, rowStartIdxAndCount);
	}

	public List<Person> findByFnameL2(Object fnameL2,
			int... rowStartIdxAndCount) {
		return findByProperty(FNAME_L2, fnameL2, rowStartIdxAndCount);
	}

	public List<Person> findByFnameL3(Object fnameL3,
			int... rowStartIdxAndCount) {
		return findByProperty(FNAME_L3, fnameL3, rowStartIdxAndCount);
	}

	public List<Person> findByFnationalityid(Object fnationalityid,
			int... rowStartIdxAndCount) {
		return findByProperty(FNATIONALITYID, fnationalityid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFnativePlaceL1(Object fnativePlaceL1,
			int... rowStartIdxAndCount) {
		return findByProperty(FNATIVE_PLACE_L1, fnativePlaceL1,
				rowStartIdxAndCount);
	}

	public List<Person> findByFnativePlaceL2(Object fnativePlaceL2,
			int... rowStartIdxAndCount) {
		return findByProperty(FNATIVE_PLACE_L2, fnativePlaceL2,
				rowStartIdxAndCount);
	}

	public List<Person> findByFnativePlaceL3(Object fnativePlaceL3,
			int... rowStartIdxAndCount) {
		return findByProperty(FNATIVE_PLACE_L3, fnativePlaceL3,
				rowStartIdxAndCount);
	}

	public List<Person> findByFnumber(Object fnumber,
			int... rowStartIdxAndCount) {
		return findByProperty(FNUMBER, fnumber, rowStartIdxAndCount);
	}

	public List<Person> findByFofficePhone(Object fofficePhone,
			int... rowStartIdxAndCount) {
		return findByProperty(FOFFICE_PHONE, fofficePhone, rowStartIdxAndCount);
	}

	public List<Person> findByFoldNameL1(Object foldNameL1,
			int... rowStartIdxAndCount) {
		return findByProperty(FOLD_NAME_L1, foldNameL1, rowStartIdxAndCount);
	}

	public List<Person> findByFoldNameL2(Object foldNameL2,
			int... rowStartIdxAndCount) {
		return findByProperty(FOLD_NAME_L2, foldNameL2, rowStartIdxAndCount);
	}

	public List<Person> findByFoldNameL3(Object foldNameL3,
			int... rowStartIdxAndCount) {
		return findByProperty(FOLD_NAME_L3, foldNameL3, rowStartIdxAndCount);
	}

	public List<Person> findByFpassportno(Object fpassportno,
			int... rowStartIdxAndCount) {
		return findByProperty(FPASSPORTNO, fpassportno, rowStartIdxAndCount);
	}

	public List<Person> findByFpoliticalFaceid(Object fpoliticalFaceid,
			int... rowStartIdxAndCount) {
		return findByProperty(FPOLITICAL_FACEID, fpoliticalFaceid,
				rowStartIdxAndCount);
	}

	public List<Person> findByFresidencePlace(Object fresidencePlace,
			int... rowStartIdxAndCount) {
		return findByProperty(FRESIDENCE_PLACE, fresidencePlace,
				rowStartIdxAndCount);
	}

	public List<Person> findByFrtx(Object frtx, int... rowStartIdxAndCount) {
		return findByProperty(FRTX, frtx, rowStartIdxAndCount);
	}

	public List<Person> findByFsimpleName(Object fsimpleName,
			int... rowStartIdxAndCount) {
		return findByProperty(FSIMPLE_NAME, fsimpleName, rowStartIdxAndCount);
	}

	public List<Person> findByFsimpleNamePingYin(Object fsimpleNamePingYin,
			int... rowStartIdxAndCount) {
		return findByProperty(FSIMPLE_NAME_PING_YIN, fsimpleNamePingYin,
				rowStartIdxAndCount);
	}

	public List<Person> findByFstandingid(Object fstandingid,
			int... rowStartIdxAndCount) {
		return findByProperty(FSTANDINGID, fstandingid, rowStartIdxAndCount);
	}

	public List<Person> findByFstate(Object fstate, int... rowStartIdxAndCount) {
		return findByProperty(FSTATE, fstate, rowStartIdxAndCount);
	}

	public List<Person> findByFwedid(Object fwedid, int... rowStartIdxAndCount) {
		return findByProperty(FWEDID, fwedid, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy1(Object fzdy1, int... rowStartIdxAndCount) {
		return findByProperty(FZDY1, fzdy1, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy15(Object fzdy15, int... rowStartIdxAndCount) {
		return findByProperty(FZDY15, fzdy15, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy16(Object fzdy16, int... rowStartIdxAndCount) {
		return findByProperty(FZDY16, fzdy16, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy17(Object fzdy17, int... rowStartIdxAndCount) {
		return findByProperty(FZDY17, fzdy17, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy18(Object fzdy18, int... rowStartIdxAndCount) {
		return findByProperty(FZDY18, fzdy18, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy19(Object fzdy19, int... rowStartIdxAndCount) {
		return findByProperty(FZDY19, fzdy19, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy2(Object fzdy2, int... rowStartIdxAndCount) {
		return findByProperty(FZDY2, fzdy2, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy20(Object fzdy20, int... rowStartIdxAndCount) {
		return findByProperty(FZDY20, fzdy20, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy21(Object fzdy21, int... rowStartIdxAndCount) {
		return findByProperty(FZDY21, fzdy21, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy22(Object fzdy22, int... rowStartIdxAndCount) {
		return findByProperty(FZDY22, fzdy22, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy23(Object fzdy23, int... rowStartIdxAndCount) {
		return findByProperty(FZDY23, fzdy23, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy24(Object fzdy24, int... rowStartIdxAndCount) {
		return findByProperty(FZDY24, fzdy24, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy25(Object fzdy25, int... rowStartIdxAndCount) {
		return findByProperty(FZDY25, fzdy25, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy26(Object fzdy26, int... rowStartIdxAndCount) {
		return findByProperty(FZDY26, fzdy26, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy3(Object fzdy3, int... rowStartIdxAndCount) {
		return findByProperty(FZDY3, fzdy3, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy4(Object fzdy4, int... rowStartIdxAndCount) {
		return findByProperty(FZDY4, fzdy4, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy5(Object fzdy5, int... rowStartIdxAndCount) {
		return findByProperty(FZDY5, fzdy5, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy6(Object fzdy6, int... rowStartIdxAndCount) {
		return findByProperty(FZDY6, fzdy6, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy7(Object fzdy7, int... rowStartIdxAndCount) {
		return findByProperty(FZDY7, fzdy7, rowStartIdxAndCount);
	}

	public List<Person> findByFzdy8(Object fzdy8, int... rowStartIdxAndCount) {
		return findByProperty(FZDY8, fzdy8, rowStartIdxAndCount);
	}

	/**
	 * Find all Person entities.
	 * 
	 * @param rowStartIdxAndCount
	 *            Optional int varargs. rowStartIdxAndCount[0] specifies the the
	 *            row index in the query result-set to begin collecting the
	 *            results. rowStartIdxAndCount[1] specifies the the maximum
	 *            count of results to return.
	 * @return List<Person> all Person entities
	 */
	@SuppressWarnings("unchecked")
	public List<Person> findAll(final int... rowStartIdxAndCount) {
		EntityManagerHelper.log("finding all Person instances", Level.INFO,
				null);
		try {
			final String queryString = "select model from Person model";
			Query query = getEntityManager().createQuery(queryString);
			if (rowStartIdxAndCount != null && rowStartIdxAndCount.length > 0) {
				int rowStartIdx = Math.max(0, rowStartIdxAndCount[0]);
				if (rowStartIdx > 0) {
					query.setFirstResult(rowStartIdx);
				}

				if (rowStartIdxAndCount.length > 1) {
					int rowCount = Math.max(0, rowStartIdxAndCount[1]);
					if (rowCount > 0) {
						query.setMaxResults(rowCount);
					}
				}
			}
			return query.getResultList();
		} catch (RuntimeException re) {
			EntityManagerHelper.log("find all failed", Level.SEVERE, re);
			throw re;
		}
	}

}