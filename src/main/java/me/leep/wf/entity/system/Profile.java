package me.leep.wf.entity.system;

import java.util.Date;

import javax.inject.Named;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import me.leep.wf.entity.BaseEntiy;


/**
 * 用户配置实体类. @author 李鹏
 */
@Entity
@Table(name = "sys_m_profile")
public class Profile extends BaseEntiy implements java.io.Serializable {
	private String test ;
	
	// Constructors

	/** default constructor */
	public Profile() {
	}

	/**
	 * @return test
	 */
	@Column(name = "ftest", length = 50)
	public String getTest() {
		return test;
	}

	/**
	 * @param test 要设置的 test
	 */
	public void setTest(String test) {
		this.test = test;
	}

}
