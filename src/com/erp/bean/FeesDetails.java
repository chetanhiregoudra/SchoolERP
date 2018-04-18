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
@Table(name = "FeesDetails")
public class FeesDetails {
	
	@Id
	 @Column(name = "fees_id")
	 @GeneratedValue
	 public long id;
	
	@Column(name="prcharges")
	private int prcharges;
	
	@Column(name="admissionchrg")
	private int admissionchrg;
	
	@Column(name="devcharge")
	private int devcharge;
	
	@Column(name="edufee")
	private int edufee;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "student_id")
	private Student studentId;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getPrcharges() {
		return prcharges;
	}
	public void setPrcharges(int prcharges) {
		this.prcharges = prcharges;
	}
	public int getAdmissionchrg() {
		return admissionchrg;
	}
	public void setAdmissionchrg(int admissionchrg) {
		this.admissionchrg = admissionchrg;
	}
	public int getDevcharge() {
		return devcharge;
	}
	public void setDevcharge(int devcharge) {
		this.devcharge = devcharge;
	}
	public int getEdufee() {
		return edufee;
	}
	public void setEdufee(int edufee) {
		this.edufee = edufee;
	}
	public Student getStudentId() {
		return studentId;
	}
	public void setStudentId(Student studentId) {
		this.studentId = studentId;
	}
	
	
	
}
