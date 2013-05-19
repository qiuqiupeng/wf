package me.leep.wf.entity.system;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * AbstractAccount entity provides the base persistence definition of the
 * Account entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractAccount implements java.io.Serializable {

	// Fields

	private String accountId;
	private String name;
	private String password;
	private String payPassword;
	private String pwAnswer;
	private String pwQuestion;
	private String memberId;
	private String nickName;
	private String config;
	private String favorite;
	private String lastLoginIp;
	private Date lastLoginTime;
	private Integer loginCount;
	private Integer status;
	private String remark;
	private Date updateTime;
	private String updater;
	private Date createTime;
	private String creator;
	private Integer removeTag;
	private Integer sortId;
	private String pinyin;

	// Constructors

	/** default constructor */
	public AbstractAccount() {
	}

	/** minimal constructor */
	public AbstractAccount(String accountId) {
		this.accountId = accountId;
	}

	/** full constructor */
	public AbstractAccount(String accountId, String name, String password,
			String payPassword, String pwAnswer, String pwQuestion,
			String memberId, String nickName, String config, String favorite,
			String lastLoginIp, Date lastLoginTime, Integer loginCount,
			Integer status, String remark, Date updateTime, String updater,
			Date createTime, String creator, Integer removeTag, Integer sortId,
			String pinyin) {
		this.accountId = accountId;
		this.name = name;
		this.password = password;
		this.payPassword = payPassword;
		this.pwAnswer = pwAnswer;
		this.pwQuestion = pwQuestion;
		this.memberId = memberId;
		this.nickName = nickName;
		this.config = config;
		this.favorite = favorite;
		this.lastLoginIp = lastLoginIp;
		this.lastLoginTime = lastLoginTime;
		this.loginCount = loginCount;
		this.status = status;
		this.remark = remark;
		this.updateTime = updateTime;
		this.updater = updater;
		this.createTime = createTime;
		this.creator = creator;
		this.removeTag = removeTag;
		this.sortId = sortId;
		this.pinyin = pinyin;
	}

	// Property accessors
	@Id
	@Column(name = "AccountId", unique = true, nullable = false, length = 36)
	public String getAccountId() {
		return this.accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	@Column(name = "Name", length = 50)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "Password", length = 32)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "PayPassword", length = 32)
	public String getPayPassword() {
		return this.payPassword;
	}

	public void setPayPassword(String payPassword) {
		this.payPassword = payPassword;
	}

	@Column(name = "PwAnswer")
	public String getPwAnswer() {
		return this.pwAnswer;
	}

	public void setPwAnswer(String pwAnswer) {
		this.pwAnswer = pwAnswer;
	}

	@Column(name = "PwQuestion")
	public String getPwQuestion() {
		return this.pwQuestion;
	}

	public void setPwQuestion(String pwQuestion) {
		this.pwQuestion = pwQuestion;
	}

	@Column(name = "MemberId", length = 36)
	public String getMemberId() {
		return this.memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Column(name = "NickName", length = 50)
	public String getNickName() {
		return this.nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Column(name = "Config")
	public String getConfig() {
		return this.config;
	}

	public void setConfig(String config) {
		this.config = config;
	}

	@Column(name = "Favorite")
	public String getFavorite() {
		return this.favorite;
	}

	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}

	@Column(name = "LastLoginIp", length = 30)
	public String getLastLoginIp() {
		return this.lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "LastLoginTime", length = 10)
	public Date getLastLoginTime() {
		return this.lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	@Column(name = "LoginCount")
	public Integer getLoginCount() {
		return this.loginCount;
	}

	public void setLoginCount(Integer loginCount) {
		this.loginCount = loginCount;
	}

	@Column(name = "Status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "Remark", length = 65535)
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "UpdateTime", length = 10)
	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	@Column(name = "Updater", length = 36)
	public String getUpdater() {
		return this.updater;
	}

	public void setUpdater(String updater) {
		this.updater = updater;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "CreateTime", length = 10)
	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Column(name = "Creator", length = 36)
	public String getCreator() {
		return this.creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	@Column(name = "RemoveTag")
	public Integer getRemoveTag() {
		return this.removeTag;
	}

	public void setRemoveTag(Integer removeTag) {
		this.removeTag = removeTag;
	}

	@Column(name = "SortId")
	public Integer getSortId() {
		return this.sortId;
	}

	public void setSortId(Integer sortId) {
		this.sortId = sortId;
	}

	@Column(name = "Pinyin", length = 30)
	public String getPinyin() {
		return this.pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}

}