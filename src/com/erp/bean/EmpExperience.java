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
@Table(name = "EmpExperience")
public class EmpExperience 
{
	@Id
	@Column(name ="exp_id")
	@GeneratedValue
	private int exp_id;
	@Column(name = "NOEXPYRS")
	private String noexpyrs;
	@Column(name = "PRVINST")
	private String prvinst;
	@Column(name = "EXPIN")
	private String expin;
	@Column(name = "CLASS_TAUGHT")
	private String classtaught;
	@Column(name = "FROM_DATE")
	private String fromDate;
	@Column(name = "TO_DATE")
	private String toDate;
	@Column(name = "PRE_DESIGNATION")
	private String predesignation;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "emp_Id")
	private Employee empId;
	
	public int getExp_id() {
		return exp_id;
	}
	public void setExp_id(int exp_id) {
		this.exp_id = exp_id;
	}
	public String getNoexpyrs() {
		return noexpyrs;
	}
	public void setNoexpyrs(String noexpyrs) {
		this.noexpyrs = noexpyrs;
	}
	public String getPrvinst() {
		return prvinst;
	}
	public void setPrvinst(String prvinst) {
		this.prvinst = prvinst;
	}
	public String getExpin() {
		return expin;
	}
	public void setExpin(String expin) {
		this.expin = expin;
	}
	public Employee getEmpId() {
		return empId;
	}
	public void setEmpId(Employee empId) {
		this.empId = empId;
	}
	public String getClasstaught() {
		return classtaught;
	}
	public void setClasstaught(String classtaught) {
		this.classtaught = classtaught;
	}
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String getToDate() {
		return toDate;
	}
	public void setToDate(String toDate) {
		this.toDate = toDate;
	}
	public String getPredesignation() {
		return predesignation;
	}
	public void setPredesignation(String predesignation) {
		this.predesignation = predesignation;
	}
	
	
	
}
