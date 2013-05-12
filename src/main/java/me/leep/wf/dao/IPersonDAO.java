package me.leep.wf.dao;

import java.sql.Timestamp;
import java.util.List;

import me.leep.wf.entity.system.Person;

/**
 * Interface for PersonDAO.
 * 
 * @author MyEclipse Persistence Tools
 */

public interface IPersonDAO {
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
	 * IPersonDAO.save(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Person entity to persist
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void save(Person entity);

	/**
	 * Delete a persistent Person entity. This operation must be performed
	 * within the a database transaction context for the entity's data to be
	 * permanently deleted from the persistence store, i.e., database. This
	 * method uses the {@link javax.persistence.EntityManager#remove(Object)
	 * EntityManager#delete} operation.
	 * 
	 * <pre>
	 * EntityManagerHelper.beginTransaction();
	 * IPersonDAO.delete(entity);
	 * EntityManagerHelper.commit();
	 * entity = null;
	 * </pre>
	 * 
	 * @param entity
	 *            Person entity to delete
	 * @throws RuntimeException
	 *             when the operation fails
	 */
	public void delete(Person entity);

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
	 * entity = IPersonDAO.update(entity);
	 * EntityManagerHelper.commit();
	 * </pre>
	 * 
	 * @param entity
	 *            Person entity to update
	 * @return Person the persisted Person entity instance, may not be the same
	 * @throws RuntimeException
	 *             if the operation fails
	 */
	public Person update(Person entity);

	public Person findById(String id);

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
	 *            count of results to return.
	 * @return List<Person> found by query
	 */
	public List<Person> findByProperty(String propertyName, Object value,
			int... rowStartIdxAndCount);

	public List<Person> findByFaddressL1(Object faddressL1,
			int... rowStartIdxAndCount);

	public List<Person> findByFaddressL2(Object faddressL2,
			int... rowStartIdxAndCount);

	public List<Person> findByFaddressL3(Object faddressL3,
			int... rowStartIdxAndCount);

	public List<Person> findByFbackupCell(Object fbackupCell,
			int... rowStartIdxAndCount);

	public List<Person> findByFbackupemail(Object fbackupemail,
			int... rowStartIdxAndCount);

	public List<Person> findByFbirthid(Object fbirthid,
			int... rowStartIdxAndCount);

	public List<Person> findByFbloodType(Object fbloodType,
			int... rowStartIdxAndCount);

	public List<Person> findByFcell(Object fcell, int... rowStartIdxAndCount);

	public List<Person> findByFcheckState(Object fcheckState,
			int... rowStartIdxAndCount);

	public List<Person> findByFcontrolUnitid(Object fcontrolUnitid,
			int... rowStartIdxAndCount);

	public List<Person> findByFcreatorid(Object fcreatorid,
			int... rowStartIdxAndCount);

	public List<Person> findByFdeletedStatus(Object fdeletedStatus,
			int... rowStartIdxAndCount);

	public List<Person> findByFdescriptionL1(Object fdescriptionL1,
			int... rowStartIdxAndCount);

	public List<Person> findByFdescriptionL2(Object fdescriptionL2,
			int... rowStartIdxAndCount);

	public List<Person> findByFdescriptionL3(Object fdescriptionL3,
			int... rowStartIdxAndCount);

	public List<Person> findByFemail(Object femail, int... rowStartIdxAndCount);

	public List<Person> findByFemployTechPostid(Object femployTechPostid,
			int... rowStartIdxAndCount);

	public List<Person> findByFemployeeClassifyid(Object femployeeClassifyid,
			int... rowStartIdxAndCount);

	public List<Person> findByFemployeeTypeid(Object femployeeTypeid,
			int... rowStartIdxAndCount);

	public List<Person> findByFfolkid(Object ffolkid,
			int... rowStartIdxAndCount);

	public List<Person> findByFfullNamePingYin(Object ffullNamePingYin,
			int... rowStartIdxAndCount);

	public List<Person> findByFgender(Object fgender,
			int... rowStartIdxAndCount);

	public List<Person> findByFhealthid(Object fhealthid,
			int... rowStartIdxAndCount);

	public List<Person> findByFheight(Object fheight,
			int... rowStartIdxAndCount);

	public List<Person> findByFhighestCompetencyid(Object fhighestCompetencyid,
			int... rowStartIdxAndCount);

	public List<Person> findByFhighestDegreeid(Object fhighestDegreeid,
			int... rowStartIdxAndCount);

	public List<Person> findByFhighestSubDegreeId(Object fhighestSubDegreeId,
			int... rowStartIdxAndCount);

	public List<Person> findByFhighestTechPostid(Object fhighestTechPostid,
			int... rowStartIdxAndCount);

	public List<Person> findByFhomePhone(Object fhomePhone,
			int... rowStartIdxAndCount);

	public List<Person> findByFhrorgUnitid(Object fhrorgUnitid,
			int... rowStartIdxAndCount);

	public List<Person> findByFidNum(Object fidNum, int... rowStartIdxAndCount);

	public List<Person> findByFidcardAdressL1(Object fidcardAdressL1,
			int... rowStartIdxAndCount);

	public List<Person> findByFidcardAdressL2(Object fidcardAdressL2,
			int... rowStartIdxAndCount);

	public List<Person> findByFidcardAdressL3(Object fidcardAdressL3,
			int... rowStartIdxAndCount);

	public List<Person> findByFidcardno(Object fidcardno,
			int... rowStartIdxAndCount);

	public List<Person> findByFindex(Object findex, int... rowStartIdxAndCount);

	public List<Person> findByFisStandby(Object fisStandby,
			int... rowStartIdxAndCount);

	public List<Person> findByFisStandbyCadre(Object fisStandbyCadre,
			int... rowStartIdxAndCount);

	public List<Person> findByFkaclassficationid(Object fkaclassficationid,
			int... rowStartIdxAndCount);

	public List<Person> findByFlastUpdateUserid(Object flastUpdateUserid,
			int... rowStartIdxAndCount);

	public List<Person> findByFlcmrationLevelid(Object flcmrationLevelid,
			int... rowStartIdxAndCount);

	public List<Person> findByFlenOfActualService(Object flenOfActualService,
			int... rowStartIdxAndCount);

	public List<Person> findByFnameL1(Object fnameL1,
			int... rowStartIdxAndCount);

	public List<Person> findByFnameL2(Object fnameL2,
			int... rowStartIdxAndCount);

	public List<Person> findByFnameL3(Object fnameL3,
			int... rowStartIdxAndCount);

	public List<Person> findByFnationalityid(Object fnationalityid,
			int... rowStartIdxAndCount);

	public List<Person> findByFnativePlaceL1(Object fnativePlaceL1,
			int... rowStartIdxAndCount);

	public List<Person> findByFnativePlaceL2(Object fnativePlaceL2,
			int... rowStartIdxAndCount);

	public List<Person> findByFnativePlaceL3(Object fnativePlaceL3,
			int... rowStartIdxAndCount);

	public List<Person> findByFnumber(Object fnumber,
			int... rowStartIdxAndCount);

	public List<Person> findByFofficePhone(Object fofficePhone,
			int... rowStartIdxAndCount);

	public List<Person> findByFoldNameL1(Object foldNameL1,
			int... rowStartIdxAndCount);

	public List<Person> findByFoldNameL2(Object foldNameL2,
			int... rowStartIdxAndCount);

	public List<Person> findByFoldNameL3(Object foldNameL3,
			int... rowStartIdxAndCount);

	public List<Person> findByFpassportno(Object fpassportno,
			int... rowStartIdxAndCount);

	public List<Person> findByFpoliticalFaceid(Object fpoliticalFaceid,
			int... rowStartIdxAndCount);

	public List<Person> findByFresidencePlace(Object fresidencePlace,
			int... rowStartIdxAndCount);

	public List<Person> findByFrtx(Object frtx, int... rowStartIdxAndCount);

	public List<Person> findByFsimpleName(Object fsimpleName,
			int... rowStartIdxAndCount);

	public List<Person> findByFsimpleNamePingYin(Object fsimpleNamePingYin,
			int... rowStartIdxAndCount);

	public List<Person> findByFstandingid(Object fstandingid,
			int... rowStartIdxAndCount);

	public List<Person> findByFstate(Object fstate, int... rowStartIdxAndCount);

	public List<Person> findByFwedid(Object fwedid, int... rowStartIdxAndCount);

	public List<Person> findByFzdy1(Object fzdy1, int... rowStartIdxAndCount);

	public List<Person> findByFzdy15(Object fzdy15, int... rowStartIdxAndCount);

	public List<Person> findByFzdy16(Object fzdy16, int... rowStartIdxAndCount);

	public List<Person> findByFzdy17(Object fzdy17, int... rowStartIdxAndCount);

	public List<Person> findByFzdy18(Object fzdy18, int... rowStartIdxAndCount);

	public List<Person> findByFzdy19(Object fzdy19, int... rowStartIdxAndCount);

	public List<Person> findByFzdy2(Object fzdy2, int... rowStartIdxAndCount);

	public List<Person> findByFzdy20(Object fzdy20, int... rowStartIdxAndCount);

	public List<Person> findByFzdy21(Object fzdy21, int... rowStartIdxAndCount);

	public List<Person> findByFzdy22(Object fzdy22, int... rowStartIdxAndCount);

	public List<Person> findByFzdy23(Object fzdy23, int... rowStartIdxAndCount);

	public List<Person> findByFzdy24(Object fzdy24, int... rowStartIdxAndCount);

	public List<Person> findByFzdy25(Object fzdy25, int... rowStartIdxAndCount);

	public List<Person> findByFzdy26(Object fzdy26, int... rowStartIdxAndCount);

	public List<Person> findByFzdy3(Object fzdy3, int... rowStartIdxAndCount);

	public List<Person> findByFzdy4(Object fzdy4, int... rowStartIdxAndCount);

	public List<Person> findByFzdy5(Object fzdy5, int... rowStartIdxAndCount);

	public List<Person> findByFzdy6(Object fzdy6, int... rowStartIdxAndCount);

	public List<Person> findByFzdy7(Object fzdy7, int... rowStartIdxAndCount);

	public List<Person> findByFzdy8(Object fzdy8, int... rowStartIdxAndCount);

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
	public List<Person> findAll(int... rowStartIdxAndCount);
}