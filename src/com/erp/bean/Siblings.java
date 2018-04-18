package com.erp.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;



public class Siblings
{
	 @Id
	 @Column(name = "siblings_id")
	 @GeneratedValue
	 public long id;
	
	

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "student_id")
	private Student studentId;
	
	private String sibname;
	
	private String sibdob;
	
	private String sibage;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Student getStudentId() {
		return studentId;
	}

	public void setStudentId(Student studentId) {
		this.studentId = studentId;
	}
	public String getSibname() {
		return sibname;
	}

	public void setSibname(String sibname) {
		this.sibname = sibname;
	}

	public String getSibdob() {
		return sibdob;
	}

	public void setSibdob(String sibdob) {
		this.sibdob = sibdob;
	}

	public String getSibage() {
		return sibage;
	}

	public void setSibage(String sibage) {
		this.sibage = sibage;
	}
	
}
