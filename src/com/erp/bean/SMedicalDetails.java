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
@Table(name = "SMedicalDetails")
public class SMedicalDetails 
{
	@Id
	 @Column(name = "medical_id")
	 @GeneratedValue
	 public long id;
	 
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "student_id")
	private Student studentId;
	
	@Column(name="blood_group")
	private String bloodGroup;
	
	@Column(name="weight")
	private String weight;
	
	@Column(name="hieght")
	private String hieght;
	
	@Column(name="bmi")
	private String bmi;
	
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
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getHieght() {
		return hieght;
	}
	public void setHieght(String hieght) {
		this.hieght = hieght;
	}
	public String getBmi() {
		return bmi;
	}
	public void setBmi(String bmi) {
		this.bmi = bmi;
	}
	
	
	
}
