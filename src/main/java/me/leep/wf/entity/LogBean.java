package me.leep.wf.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 所有entity类的超类. @author 李鹏
 */
@Entity
@Table(name = "log_t_his")
public class LogBean implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4562370210152651953L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String logDate;
	private String logLevel;
	private String location;

	private String message;

	/**
	 * @return logDate
	 */
	public String getLogDate() {
		return logDate;
	}

	/**
	 * @param logDate
	 *            要设置的 logDate
	 */
	public void setLogDate(String logDate) {
		this.logDate = logDate;
	}

	/**
	 * @return logLevel
	 */
	public String getLogLevel() {
		return logLevel;
	}

	/**
	 * @param logLevel
	 *            要设置的 logLevel
	 */
	public void setLogLevel(String logLevel) {
		this.logLevel = logLevel;
	}

	/**
	 * @return location
	 */
	public String getLocation() {
		return location;
	}

	/**
	 * @param location
	 *            要设置的 location
	 */
	public void setLocation(String location) {
		this.location = location;
	}

	/**
	 * @return message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message
	 *            要设置的 message
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * @return id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id 要设置的 id
	 */
	public void setId(long id) {
		this.id = id;
	}


}