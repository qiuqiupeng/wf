package me.leep.wf.entity.system;

import javax.persistence.Entity;
import javax.persistence.Table;

import me.leep.wf.entity.BaseEntity;

@Entity
@Table(name = "SYS_T_ORGUNIT")
public class OrgUnit extends BaseEntity {

	private static final long serialVersionUID = 1L;
	public OrgUnit() {
	}
}