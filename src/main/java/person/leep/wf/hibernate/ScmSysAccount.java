package person.leep.wf.hibernate;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * ScmSysAccount entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "scm_sys_account")
public class ScmSysAccount extends AbstractScmSysAccount implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ScmSysAccount() {
	}

	/** minimal constructor */
	public ScmSysAccount(String accountId) {
		super(accountId);
	}

	/** full constructor */
	public ScmSysAccount(String accountId, String name, String password,
			String payPassword, String pwAnswer, String pwQuestion,
			String memberId, String nickName, String config, String favorite,
			String lastLoginIp, Date lastLoginTime, Integer loginCount,
			Integer status, String remark, Date updateTime, String updater,
			Date createTime, String creator, Integer removeTag, Integer sortId,
			String pinyin) {
		super(accountId, name, password, payPassword, pwAnswer, pwQuestion,
				memberId, nickName, config, favorite, lastLoginIp,
				lastLoginTime, loginCount, status, remark, updateTime, updater,
				createTime, creator, removeTag, sortId, pinyin);
	}

}
