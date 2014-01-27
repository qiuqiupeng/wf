package me.leep.wf.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;

import me.leep.wf.entity.BaseEntity;
import me.leep.wf.entity.system.UserBean;
import java.util.List;
import javax.persistence.OneToMany;

@Entity
@Table(name = "SYS_T_ORGUNIT")
public class OrgUnit extends BaseEntity {

	private static final long serialVersionUID = 1L;
	private List<UserBean> userBean;
	public OrgUnit() {
	}
	@OneToMany(mappedBy = "orgUnit")
	public List<UserBean> getUserBean() {
	    return userBean;
	}
	public void setUserBean(List<UserBean> param) {
	    this.userBean = param;
	}
}