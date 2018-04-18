package com.erp.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "parent_details")
public class ParentDetails
{
	 @Id
	 @Column(name = "parent_id")
	 @GeneratedValue
	 public long id;
	 
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "student_id")
	private Student studentId;
	
	private String fname;
	
	private String feducation;
	
	private String foccuption;
	
	private String fincme;
	
	private String mname;
	
	private String meducation;
	
	private String moccuption;
	
	private String mincme;
	
	
	
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

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getFeducation() {
		return feducation;
	}

	public void setFeducation(String feducation) {
		this.feducation = feducation;
	}

	public String getFoccuption() {
		return foccuption;
	}

	public void setFoccuption(String foccuption) {
		this.foccuption = foccuption;
	}

	public String getFincme() {
		return fincme;
	}

	public void setFincme(String fincme) {
		this.fincme = fincme;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMeducation() {
		return meducation;
	}

	public void setMeducation(String meducation) {
		this.meducation = meducation;
	}

	public String getMoccuption() {
		return moccuption;
	}

	public void setMoccuption(String moccuption) {
		this.moccuption = moccuption;
	}

	public String getMincme() {
		return mincme;
	}

	public void setMincme(String mincme) {
		this.mincme = mincme;
	}

	
	
}
