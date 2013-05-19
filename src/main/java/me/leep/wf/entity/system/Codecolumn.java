package me.leep.wf.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;


/**
 * Codecolumn entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "sys_m_codecolumn")
public class Codecolumn extends AbstractCodecolumn implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Codecolumn() {
	}

	/** full constructor */
	public Codecolumn(CodecolumnId id) {
		super(id);
	}

}
