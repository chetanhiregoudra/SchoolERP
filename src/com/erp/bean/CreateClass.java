package com.erp.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Create_Class")
public class CreateClass {
	
	@Id
	@Column(name="class_id", nullable=false)
	private String classId;
	
	@Column(name="class_name")
	private String className;

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}
	
}
