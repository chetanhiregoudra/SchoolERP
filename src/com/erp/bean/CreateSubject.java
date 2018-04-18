package com.erp.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name = "SUBJECT")
public class CreateSubject {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "SUBID")
	private int subid;
	@Column(name = "SUBNAME")
	private String subName;
	@Column(name = "CLASSNAME")
	private String classSec;
	public int getSubid() {
		return this.subid;
	}

	public void setSubid(int subid) {
		this.subid = subid;
	}

	
	public String getSubName() {
		return this.subName;
	}

	public void setSubName(String subName) {
		this.subName = subName;
	}

	public String getClassSec() {
		return classSec;
	}

	public void setClassSec(String classSec) {
		this.classSec = classSec;
	}

	
	
}
