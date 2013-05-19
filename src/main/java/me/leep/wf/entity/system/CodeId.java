package me.leep.wf.entity.system;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * CodeId entity. @author MyEclipse Persistence Tools
 */
@Embeddable
public class CodeId implements java.io.Serializable {

	// Fields

	private String codeid;
	private String codecolumnid;
	private String name;
	private String codevalue;
	private Long orderid;
	private Timestamp createtime;
	private Long removetag;

	// Constructors

	/** default constructor */
	public CodeId() {
	}

	/** full constructor */
	public CodeId(String codeid, String codecolumnid, String name,
			String codevalue, Long orderid, Timestamp createtime, Long removetag) {
		this.codeid = codeid;
		this.codecolumnid = codecolumnid;
		this.name = name;
		this.codevalue = codevalue;
		this.orderid = orderid;
		this.createtime = createtime;
		this.removetag = removetag;
	}

	// Property accessors

	@Column(name = "CODEID", unique = true, length = 36)
	public String getCodeid() {
		return this.codeid;
	}

	public void setCodeid(String codeid) {
		this.codeid = codeid;
	}

	@Column(name = "CODECOLUMNID", length = 36)
	public String getCodecolumnid() {
		return this.codecolumnid;
	}

	public void setCodecolumnid(String codecolumnid) {
		this.codecolumnid = codecolumnid;
	}

	@Column(name = "NAME", length = 30)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "CODEVALUE", length = 30)
	public String getCodevalue() {
		return this.codevalue;
	}

	public void setCodevalue(String codevalue) {
		this.codevalue = codevalue;
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
		if (!(other instanceof CodeId))
			return false;
		CodeId castOther = (CodeId) other;

		return ((this.getCodeid() == castOther.getCodeid()) || (this
				.getCodeid() != null && castOther.getCodeid() != null && this
				.getCodeid().equals(castOther.getCodeid())))
				&& ((this.getCodecolumnid() == castOther.getCodecolumnid()) || (this
						.getCodecolumnid() != null
						&& castOther.getCodecolumnid() != null && this
						.getCodecolumnid().equals(castOther.getCodecolumnid())))
				&& ((this.getName() == castOther.getName()) || (this.getName() != null
						&& castOther.getName() != null && this.getName()
						.equals(castOther.getName())))
				&& ((this.getCodevalue() == castOther.getCodevalue()) || (this
						.getCodevalue() != null
						&& castOther.getCodevalue() != null && this
						.getCodevalue().equals(castOther.getCodevalue())))
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

		result = 37 * result
				+ (getCodeid() == null ? 0 : this.getCodeid().hashCode());
		result = 37
				* result
				+ (getCodecolumnid() == null ? 0 : this.getCodecolumnid()
						.hashCode());
		result = 37 * result
				+ (getName() == null ? 0 : this.getName().hashCode());
		result = 37 * result
				+ (getCodevalue() == null ? 0 : this.getCodevalue().hashCode());
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