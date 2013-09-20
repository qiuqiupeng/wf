package me.leep.wf.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;

import me.leep.wf.entity.BaseEntiy;

@Entity
@Table(name = "sys_t_user")
public class UserBean extends BaseEntiy {
	
	private String test ;

	/**
	 * @return test
	 */
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
