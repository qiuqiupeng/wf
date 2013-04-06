package person.leep.wf.services.impl;

import org.hibernate.Session;

import person.leep.wf.hibernate.ScmSysAccount;
import person.leep.wf.hibernate.ScmSysAccountDAO;
import person.leep.wf.services.InitLoginService;

public class InitLoginServiceImpl implements InitLoginService {
	
	private ScmSysAccountDAO scmSysAccountDAO;

	/**
	 * @return the scmSysAccountDAO
	 */
	public ScmSysAccountDAO getScmSysAccountDAO() {
		return scmSysAccountDAO;
	}

	/**
	 * @param scmSysAccountDAO the scmSysAccountDAO to set
	 */
	public void setScmSysAccountDAO(ScmSysAccountDAO scmSysAccountDAO) {
		this.scmSysAccountDAO = scmSysAccountDAO;
	}
	
	public ScmSysAccount check(){
		ScmSysAccount instance = new ScmSysAccount();
		instance.setName("admin");
		ScmSysAccount ssa = (ScmSysAccount) scmSysAccountDAO.findByExample(instance).get(0);
		
		return ssa;
	}

}
