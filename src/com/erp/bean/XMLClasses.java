package com.erp.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "XMLCLASSES")
public class XMLClasses
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "xmlID")
	private int id;
	@Column(name = "CLASSNAME")
	private String className;
	@Column(name = "SECNAME")
	private String secName;
	@Column(name = "MANDSUB")
	private String mandSub;
	@Column(name = "OPTSUB")
	private String optSub;

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getSecName() {
		return secName;
	}

	public void setSecName(String secName) {
		this.secName = secName;
	}

	public String getMandSub() {
		return mandSub;
	}

	public void setMandSub(String mandSub) {
		this.mandSub = mandSub;
	}

	public String getOptSub() {
		return optSub;
	}

	public void setOptSub(String optSub) {
		this.optSub = optSub;
	}
	
	

}
