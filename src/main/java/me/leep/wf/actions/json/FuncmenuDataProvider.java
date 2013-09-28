package me.leep.wf.actions.json;

import java.util.List;

import me.leep.wf.actions.base.BaseDataProvider;
import me.leep.wf.dto.BaseDto;
import me.leep.wf.dto.system.FuncMenu;
import me.leep.wf.entity.system.FuncMenuBean;
import me.leep.wf.entity.system.UserBean;
import me.leep.wf.services.system.aware.IFuncmenuServices;

/**
 * @author 李鹏
 * 
 */
public class FuncmenuDataProvider extends BaseDataProvider {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4302036849790278738L;

	private IFuncmenuServices funcmenuServices;

	public String execute() throws Exception {

		initGridParam(UserBean.class);

		List<BaseDto> result = funcmenuServices.findAll(FuncMenuBean.class, FuncMenu.class, getFrom(), getTo());

		this.setGridModel(result);

		return SUCCESS;
	}

	

	/**
	 * @param funcmenuServices 要设置的 funcmenuServices
	 */
	public void setFuncmenuServices(IFuncmenuServices funcmenuServices) {
		this.funcmenuServices = funcmenuServices;
	}


}
