/*********************************************************************
 * 源代码版权归作者（们）所有
 *
 * 以 Apache License, Version 2.0 方式授权使用，具体参见：
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 ********************************************************************/
package me.leep.wf.actions.json;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import me.leep.wf.actions.base.BaseDataProvider;
import me.leep.wf.dto.BaseDto;
import me.leep.wf.services.system.aware.IUserServices;

/**
 * @author 李鹏
 * 
 */
public class UserDataProvider extends BaseDataProvider {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4302036849790278738L;

	@Autowired
	private IUserServices userServices;

	public String execute() throws Exception {

		initGridParam(userServices.countAll());

		List<BaseDto> result = userServices.findAll(getPage().intValue() - 1,
				getTo() - getFrom());

		this.setGridModel(result);

		return SUCCESS;
	}



}
