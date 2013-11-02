package me.leep.wf.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;

import me.leep.wf.entity.BaseEntiy;
import javax.persistence.Column;

/**
 * @author 李鹏
 * 
 *
 */
@Entity
@Table(name = "SYS_T_MENUITEM")
public class ItemBean extends BaseEntiy {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6461079495540284158L;
		
	private String icon;
	private boolean isleaf;
	private String parentId;


	/**
	 * 
	 */
	public ItemBean() {
	}



	/**
	 * @return icon
	 */
	@Column(name = "ficon")
	public String getIcon() {
		return icon;
	}

	/**
	 * @param icon
	 *            要设置的 icon
	 */
	public void setIcon(String icon) {
		this.icon = icon;
	}

	/**
	 * @return isleaf
	 */
	@Column(name = "fisleaf")
	public boolean isIsleaf() {
		return isleaf;
	}

	/**
	 * @param isleaf
	 *            要设置的 isleaf
	 */
	public void setIsleaf(boolean isleaf) {
		this.isleaf = isleaf;
	}

	/**
	 * @return subMenu
	 */
	

	/**
	 * @return parentId
	 */
	@Column(name = "fparentid")
	public String getParentId() {
		return parentId;
	}

	/**
	 * @param parentId 父节点设置
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

}
