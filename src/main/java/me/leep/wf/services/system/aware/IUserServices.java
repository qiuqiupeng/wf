/**
 * 
 */
package me.leep.wf.services.system.aware;


import me.leep.wf.dto.system.User;
import me.leep.wf.services.IBaseService;

/**
 * @author 李鹏
 *
 */
public interface IUserServices extends IBaseService {
	
	public User initUserDto(String rowid);

}
