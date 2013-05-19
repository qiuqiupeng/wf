package me.leep.wf.entity.system;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.MappedSuperclass;


/**
 * AbstractCode entity provides the base persistence definition of the Code
 * entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractCode implements java.io.Serializable {

	// Fields

	private CodeId id;

	// Constructors

	/** default constructor */
	public AbstractCode() {
	}

	/** full constructor */
	public AbstractCode(CodeId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "codeid", column = @Column(name = "CODEID", unique = true, length = 36)),
			@AttributeOverride(name = "codecolumnid", column = @Column(name = "CODECOLUMNID", length = 36)),
			@AttributeOverride(name = "name", column = @Column(name = "NAME", length = 30)),
			@AttributeOverride(name = "codevalue", column = @Column(name = "CODEVALUE", length = 30)),
			@AttributeOverride(name = "orderid", column = @Column(name = "ORDERID")),
			@AttributeOverride(name = "createtime", column = @Column(name = "CREATETIME", length = 19)),
			@AttributeOverride(name = "removetag", column = @Column(name = "REMOVETAG")) })
	public CodeId getId() {
		return this.id;
	}

	public void setId(CodeId id) {
		this.id = id;
	}

}