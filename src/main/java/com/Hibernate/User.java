package com.Hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usersDB")
public class User {
	@Id
	@Column(name="Username")
	String uname;
	
	@Column
	String password;

	@Override
	public String toString() {
		return "Uers [uname=" + uname + ", password=" + password + "]";
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
