package me.leep.wf.entity;

import java.util.Date;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;

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

	/**
	 * 静态变量块
	 */
	static {
		
	}

	/**
	 * 超类构造方法
	 */
	public BaseEntiy() {
		String user = SecurityUtils.getSubject().getPrincipal().toString();
		if (StringUtils.isEmpty(creater))
			creater = user;
		lastUpdater = user;
		if (creteTime == null)
			creteTime = new Date();
		lastUpdateTime = new Date();
		id = UUID.randomUUID().toString();
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
	@Column(name = "flastUpdater", length = 50)
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
	@Temporal(TemporalType.DATE)
	@Column(name = "fcreteTime", length = 10)
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
	@Temporal(TemporalType.DATE)
	@Column(name = "flastUpdateTime", length = 10)
	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}

	/**
	 * @param lastUpdateTime 要设置的 lastUpdateTime
	 */
	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}



}