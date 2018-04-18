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
@Table(name="EmpAccDetails")
public class EmployeeAccDetails 
{
	@Id
	 @Column(name = "acc_id")
	 @GeneratedValue
	 public long acc_id;
	 
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "emp_Id")
	private Employee empId;
	@Column(name = "bankName")
	private String bankName;
	@Column(name = "accountNo")
	private String accountNo;
	@Column(name = "ifscCode")
	private String ifscCode;
	@Column(name = "bBranch")
	private String bBranch;
	
	public long getId() {
		return acc_id;
	}
	public void setId(long acc_id) {
		this.acc_id = acc_id;
	}
	public Employee getEmpId() {
		return empId;
	}
	public void setEmpId(Employee empId) {
		this.empId = empId;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getIfscCode() {
		return ifscCode;
	}
	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}
	public String getbBranch() {
		return bBranch;
	}
	public void setbBranch(String bBranch) {
		this.bBranch = bBranch;
	}
	
	
}
