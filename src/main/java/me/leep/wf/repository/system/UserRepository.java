package me.leep.wf.repository.system;



import java.util.List;

import me.leep.wf.entity.system.UserBean;
import me.leep.wf.repository.BaseRepository;


/**
 * 用户持久层接口
 * 
 * @author 李鹏 2012-8-31
 */
public interface UserRepository extends BaseRepository<UserBean, String> {
	List<UserBean> findByNumberAndPassword(String number, String passowrd);

}