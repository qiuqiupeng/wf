package me.leep.wf.entity.system;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.MappedSuperclass;

/**
 * AbstractCodecolumn entity provides the base persistence definition of the
 * Codecolumn entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractCodecolumn implements java.io.Serializable {

	// Fields

	private CodecolumnId id;

	// Constructors

	/** default constructor */
	public AbstractCodecolumn() {
	}

	/** full constructor */
	public AbstractCodecolumn(CodecolumnId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "codecolumnid", column = @Column(name = "CODECOLUMNID", unique = true, length = 36)),
			@AttributeOverride(name = "moduleid", column = @Column(name = "MODULEID", length = 36)),
			@AttributeOverride(name = "name", column = @Column(name = "NAME", length = 30)),
			@AttributeOverride(name = "codecolumntag", column = @Column(name = "CODECOLUMNTAG", length = 30)),
			@AttributeOverride(name = "description", column = @Column(name = "DESCRIPTION", length = 65535)),
			@AttributeOverride(name = "orderid", column = @Column(name = "ORDERID")),
			@AttributeOverride(name = "createtime", column = @Column(name = "CREATETIME", length = 19)),
			@AttributeOverride(name = "removetag", column = @Column(name = "REMOVETAG")) })
	public CodecolumnId getId() {
		return this.id;
	}

	public void setId(CodecolumnId id) {
		this.id = id;
	}

}