package com.erp.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="circular")
public class Circular {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id")
	private int id;
	
	@Column(name="circular_name")
	private String circularName;
	
	@Column(name="circular_desc")
	private String circularDesc;
	
	@Column(name="circular_date")
	private String circularDate;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="class_id")
	private CreateClass class_id;

	public String getCircularName() {
		return circularName;
	}

	public void setCircularName(String circularName) {
		this.circularName = circularName;
	}

	public String getCircularDesc() {
		return circularDesc;
	}

	public void setCircularDesc(String circularDesc) {
		this.circularDesc = circularDesc;
	}

	public String getCircularDate() {
		return circularDate;
	}

	public void setCircularDate(String circularDate) {
		this.circularDate = circularDate;
	}

	public CreateClass getClass_id() {
		return class_id;
	}

	public void setClass_id(CreateClass class_id) {
		this.class_id = class_id;
	}
	
	
}
