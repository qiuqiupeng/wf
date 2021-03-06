package me.leep.wf.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;


/**
 * 所有entity类的超类. @author 李鹏
 */
@MappedSuperclass
public abstract class BaseEntiy implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4562370210152651953L;
	private String id;
	private String creater;
	private String lastUpdater;
	private Date creteTime;
	private Date lastUpdateTime;
	private String number;
	private String name;
	private String description;

	private String removeFlag;

	/**
	 * 静态变量块
	 */
	static {
		
	}


	/**
	 * @return id
	 */
	@Id
	@Column(name = "fid", unique = true, nullable = false, length = 36)
	public String getId() {
		return id;
	}

	/**
	 * @param id 要设置的 id
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return creater
	 */
	@Column(name = "fcreater", length = 50)
	public String getCreater() {
		return creater;
	}

	/**
	 * @param creater 要设置的 creater
	 */
	public void setCreater(String creater) {
		this.creater = creater;
	}

	/**
	 * @return lastUpdater
	 */
	@Column(name = "flastupdater", length = 50)
	public String getLastUpdater() {
		return lastUpdater;
	}

	/**
	 * @param lastUpdater 要设置的 lastUpdater
	 */
	public void setLastUpdater(String lastUpdater) {
		this.lastUpdater = lastUpdater;
	}

	/**
	 * @return creteTime
	 */
	@Column(name = "fcretetime", length = 10)
	public Date getCreteTime() {
		return creteTime;
	}

	/**
	 * @param creteTime 要设置的 creteTime
	 */
	public void setCreteTime(Date creteTime) {
		this.creteTime = creteTime;
	}

	/**
	 * @return lastUpdateTime
	 */
	@Column(name = "flastupdatetime", length = 10)
	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}

	/**
	 * @param lastUpdateTime 要设置的 lastUpdateTime
	 */
	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	/**
	 * @return number
	 */
	@Column(name = "fnumber", length = 50)
	public String getNumber() {
		return number;
	}

	/**
	 * @param number 要设置的 number
	 */
	public void setNumber(String number) {
		this.number = number;
	}

	/**
	 * @return name
	 */
	@Column(name = "fname", length = 50)
	public String getName() {
		return name;
	}

	/**
	 * @param name 要设置的 name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return description
	 */
	@Column(name = "fdescription")
	public String getDescription() {
		return description;
	}

	/**
	 * @param description 要设置的 description
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return removeFlag
	 */
	@Column(name = "fremoveflag")
	public String getRemoveFlag() {
		return removeFlag;
	}

	/**
	 * @param removeFlag 要设置的 removeFlag
	 */
	public void setRemoveFlag(String removeFlag) {
		this.removeFlag = removeFlag;
	}

}