/**
 * 
 */
package me.leep.wf.entity.system;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import me.leep.wf.entity.BaseEntity;

/**
 * @author 李鹏
 * 
 *
 */
@Entity
@Table(name = "sys_t_funcmenuitem")
public class FuncMenuBean extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -73932657755532374L;
	
	private String dataicon;

	private String shortcode;
	private String herf;
	private String target;
	/**
	 * @return dataicon
	 */
	@Column(name = "fdataicon")
	public String getDataicon() {
		return dataicon;
	}
	/**
	 * @param dataicon 要设置的 dataicon
	 */
	public void setDataicon(String dataicon) {
		this.dataicon = dataicon;
	}
	/**
	 * @return shortcode
	 */
	@Column(name = "fshortcode")
	public String getShortcode() {
		return shortcode;
	}
	/**
	 * @param shortcode 要设置的 shortcode
	 */
	public void setShortcode(String shortcode) {
		this.shortcode = shortcode;
	}
	/**
	 * @return herf
	 */
	@Column(name = "fherf")
	public String getHerf() {
		return herf;
	}
	/**
	 * @param herf 要设置的 herf
	 */
	public void setHerf(String herf) {
		this.herf = herf;
	}
	/**
	 * @return target
	 */
	@Column(name = "ftarget")
	public String getTarget() {
		return target;
	}
	/**
	 * @param target 要设置的 target
	 */
	public void setTarget(String target) {
		this.target = target;
	}
	

	
}
