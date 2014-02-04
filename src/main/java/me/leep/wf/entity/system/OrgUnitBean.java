/*********************************************************************
 * 源代码版权归作者（们）所有
 *
 * 以 Apache License, Version 2.0 方式授权使用，具体参见：
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 ********************************************************************/
package me.leep.wf.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;

import me.leep.wf.entity.BaseEntity;
import me.leep.wf.entity.system.UserBean;
import java.util.List;
import javax.persistence.OneToMany;

@Entity
@Table(name = "SYS_T_ORGUNIT")
public class OrgUnitBean extends BaseEntity {

	private static final long serialVersionUID = 1L;
	private List<UserBean> userBean;
	public OrgUnitBean() {
	}
	@OneToMany(mappedBy = "orgUnitBean")
	public List<UserBean> getUserBean() {
	    return userBean;
	}
	public void setUserBean(List<UserBean> param) {
	    this.userBean = param;
	}
}