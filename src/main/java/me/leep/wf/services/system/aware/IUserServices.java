/**
 * 
 */
package me.leep.wf.services.system.aware;


import java.util.List;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.dto.system.User;
import me.leep.wf.entity.BaseEntity;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.IBaseService;

/**
 * @author 李鹏
 *
 */
public interface IUserServices extends IBaseService<BaseDto, BaseEntity> {
	
	User initUserDto(String id);

	String save(User dto);

	void deleteList(String[] rowids);

	void delete(UserBean entity);
	
	List<BaseDto> findAll(int page, int size);
	
	UserBean findById(String id);
	
	Integer countAll();
	
	boolean exists(String id);
}
