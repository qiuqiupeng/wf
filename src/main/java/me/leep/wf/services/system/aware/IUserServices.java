/**
 * 
 */
package me.leep.wf.services.system.aware;


import java.util.List;

import me.leep.wf.dto.BaseDto;
import me.leep.wf.dto.system.User;
import me.leep.wf.services.IBaseService;

/**
 * @author 李鹏
 *
 */
public interface IUserServices extends IBaseService {
	
	public User initUserDto(String rowid);

	void save(BaseDto dto);
	
	List<BaseDto> findAll(int page, int size);

}
