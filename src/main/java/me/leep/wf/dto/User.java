package me.leep.wf.dto;

public class User extends BaseDto {
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 4580658445397237252L;
	
	private String test;

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
