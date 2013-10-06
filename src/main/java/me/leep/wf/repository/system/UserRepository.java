package me.leep.wf.repository.system;

import java.io.Serializable;

import me.leep.wf.entity.system.UserBean;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * 用户持久层接口
 * 
 * @author 李鹏 2012-8-31
 */
public interface UserRepository extends
		PagingAndSortingRepository<UserBean, Serializable>,
		JpaRepository<UserBean, Serializable>,
		JpaSpecificationExecutor<UserBean> {
	public UserBean findById(String id);

}