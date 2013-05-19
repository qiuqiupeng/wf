package me.leep.wf.entity.system;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * CodecolumnId entity. @author MyEclipse Persistence Tools
 */
@Embeddable
public class CodecolumnId implements java.io.Serializable {

	// Fields

	private String codecolumnid;
	private String moduleid;
	private String name;
	private String codecolumntag;
	private String description;
	private Long orderid;
	private Timestamp createtime;
	private Long removetag;

	// Constructors

	/** default constructor */
	public CodecolumnId() {
	}

	/** full constructor */
	public CodecolumnId(String codecolumnid, String moduleid, String name,
			String codecolumntag, String description, Long orderid,
			Timestamp createtime, Long removetag) {
		this.codecolumnid = codecolumnid;
		this.moduleid = moduleid;
		this.name = name;
		this.codecolumntag = codecolumntag;
		this.description = description;
		this.orderid = orderid;
		this.createtime = createtime;
		this.removetag = removetag;
	}

	// Property accessors

	@Column(name = "CODECOLUMNID", unique = true, length = 36)
	public String getCodecolumnid() {
		return this.codecolumnid;
	}

	public void setCodecolumnid(String codecolumnid) {
		this.codecolumnid = codecolumnid;
	}

	@Column(name = "MODULEID", length = 36)
	public String getModuleid() {
		return this.moduleid;
	}

	public void setModuleid(String moduleid) {
		this.moduleid = moduleid;
	}

	@Column(name = "NAME", length = 30)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "CODECOLUMNTAG", length = 30)
	public String getCodecolumntag() {
		return this.codecolumntag;
	}

	public void setCodecolumntag(String codecolumntag) {
		this.codecolumntag = codecolumntag;
	}

	@Column(name = "DESCRIPTION", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "ORDERID")
	public Long getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Long orderid) {
		this.orderid = orderid;
	}

	@Column(name = "CREATETIME", length = 19)
	public Timestamp getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

	@Column(name = "REMOVETAG")
	public Long getRemovetag() {
		return this.removetag;
	}

	public void setRemovetag(Long removetag) {
		this.removetag = removetag;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CodecolumnId))
			return false;
		CodecolumnId castOther = (CodecolumnId) other;

		return ((this.getCodecolumnid() == castOther.getCodecolumnid()) || (this
				.getCodecolumnid() != null
				&& castOther.getCodecolumnid() != null && this
				.getCodecolumnid().equals(castOther.getCodecolumnid())))
				&& ((this.getModuleid() == castOther.getModuleid()) || (this
						.getModuleid() != null
						&& castOther.getModuleid() != null && this
						.getModuleid().equals(castOther.getModuleid())))
				&& ((this.getName() == castOther.getName()) || (this.getName() != null
						&& castOther.getName() != null && this.getName()
						.equals(castOther.getName())))
				&& ((this.getCodecolumntag() == castOther.getCodecolumntag()) || (this
						.getCodecolumntag() != null
						&& castOther.getCodecolumntag() != null && this
						.getCodecolumntag()
						.equals(castOther.getCodecolumntag())))
				&& ((this.getDescription() == castOther.getDescription()) || (this
						.getDescription() != null
						&& castOther.getDescription() != null && this
						.getDescription().equals(castOther.getDescription())))
				&& ((this.getOrderid() == castOther.getOrderid()) || (this
						.getOrderid() != null && castOther.getOrderid() != null && this
						.getOrderid().equals(castOther.getOrderid())))
				&& ((this.getCreatetime() == castOther.getCreatetime()) || (this
						.getCreatetime() != null
						&& castOther.getCreatetime() != null && this
						.getCreatetime().equals(castOther.getCreatetime())))
				&& ((this.getRemovetag() == castOther.getRemovetag()) || (this
						.getRemovetag() != null
						&& castOther.getRemovetag() != null && this
						.getRemovetag().equals(castOther.getRemovetag())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getCodecolumnid() == null ? 0 : this.getCodecolumnid()
						.hashCode());
		result = 37 * result
				+ (getModuleid() == null ? 0 : this.getModuleid().hashCode());
		result = 37 * result
				+ (getName() == null ? 0 : this.getName().hashCode());
		result = 37
				* result
				+ (getCodecolumntag() == null ? 0 : this.getCodecolumntag()
						.hashCode());
		result = 37
				* result
				+ (getDescription() == null ? 0 : this.getDescription()
						.hashCode());
		result = 37 * result
				+ (getOrderid() == null ? 0 : this.getOrderid().hashCode());
		result = 37
				* result
				+ (getCreatetime() == null ? 0 : this.getCreatetime()
						.hashCode());
		result = 37 * result
				+ (getRemovetag() == null ? 0 : this.getRemovetag().hashCode());
		return result;
	}

}