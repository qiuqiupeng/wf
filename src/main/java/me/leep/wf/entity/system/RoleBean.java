package me.leep.wf.entity.system;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import me.leep.wf.entity.BaseEntity;

@Entity
@Table(name = "sys_t_role")
public class RoleBean extends BaseEntity {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -2774777982417824244L;
	
	private List<UserBean> users = new ArrayList<UserBean>();

	/**
	 * @return users
	 */
	@ManyToMany(mappedBy="roles")
	public List<UserBean> getUsers() {
		return users;
	}

	/**
	 * @param users 要设置的 users
	 */
	public void setUsers(List<UserBean> users) {
		this.users = users;
	}

}
