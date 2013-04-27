package edu.ku.it.si.springjpaexample.model;

import javax.persistence.*;

@Entity
@Table(name = "T_SYS_PERSON")
@NamedQuery(name="person.findByEmplid", query="select p from Person p where p.emplid = :emplid")
public class Person {

	private long emplid;
	private String first_name;
	private String last_name;

	@Id
	public long getEmplid() {
		return emplid;
	}

	public void setEmplid(long id) {
		this.emplid = id;
	}

	public void setFirst_name(String param) {
		this.first_name = param;
	}

	@Basic
	public String getFirst_name() {
		return first_name;
	}

	public void setLast_name(String param) {
		this.last_name = param;
	}

	@Basic
	public String getLast_name() {
		return last_name;
	}
	
	@Override
	public String toString() {
		return "Person [emplid=" + emplid + ", first_name=" + first_name
				+ ", last_name=" + last_name + "]";
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((emplid + "" == null) ? 0 : (emplid + "").hashCode());
		result = prime * result
				+ ((first_name == null) ? 0 : first_name.hashCode());
		result = prime * result
				+ ((last_name == null) ? 0 : last_name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Person other = (Person) obj;
		if (emplid + "" == null) {
			if (other.emplid + "" != null)
				return false;
		} else if (!(emplid + "").equals(other.emplid))
			return false;
		if (first_name == null) {
			if (other.first_name != null)
				return false;
		} else if (!first_name.equals(other.first_name))
			return false;
		if (last_name == null) {
			if (other.last_name != null)
				return false;
		} else if (!last_name.equals(other.last_name))
			return false;
		return true;
	}

}