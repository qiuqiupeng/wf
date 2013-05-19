package me.leep.wf.entity.system;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Table;


/**
 * Account entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "sys_m_account")
public class Account extends AbstractAccount implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Account() {
	}

	/** minimal constructor */
	public Account(String accountId) {
		super(accountId);
	}

	/** full constructor */
	public Account(String accountId, String name, String password,
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
