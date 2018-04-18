package com.erp.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="create_section")
public class CreateSection {

	@Id
	@Column(name="section_id",nullable=false)
	private String sectionId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="class_id")
	private CreateClass classId;
	
	@Column(name="section_name")
	private String sectionName;

	public String getSectionId() {
		return sectionId;
	}

	public void setSectionId(String sectionId) {
		this.sectionId = sectionId;
	}

	public CreateClass getClassId() {
		return classId;
	}

	public void setClassId(CreateClass classId) {
		this.classId = classId;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	
	
	
}
