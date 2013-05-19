package me.leep.wf.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;


/**
 * Code entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "sys_m_code")
public class Code extends AbstractCode implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Code() {
	}

	/** full constructor */
	public Code(CodeId id) {
		super(id);
	}

}
