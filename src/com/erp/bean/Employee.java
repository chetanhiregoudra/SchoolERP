package com.erp.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "EMPLOYEE")
public class Employee 
{
	@Id
	@Column(name = "EID", nullable = false)
	private String eid;
	@Column(name = "FNAME")
	private String fname;
	@Column(name = "MNAME")
	private String mname;
	@Column(name = "LNAME")
	private String lname;
	@Column(name = "DOB")
	private String dob;
	@Column(name = "GENDER")
	private String gender;
	@Column(name = "ETYPE")
	private String etype;
	
	@Column(name = "qualification")
	private String qualification;
	@Column(name = "address")
	private String address;
	@Column(name = "mobileno")
	private String mobileno;
	@Column(name = "email")
	private String email;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "acc_Id")
	private EmployeeAccDetails acc_Id;
	@Column(name = "experience")
	private String experience;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "exp_id")
	private EmpExperience exp_id;
	@Column(name = "AGE")
	private String age;
	@Column(name = "ADHAR")
	private String adhar;
	@Column(name = "PAN")
	private String pan;
	@Column(name = "JOIN_DATE")
	private String joinDate;
	@Column(name = "PMT_ADDRESS")
	private String  pmtAddress;
	@Column(name = "MOBILE1")
	private String mobile1;
	@Column(name = "CUR_ADDRESS")
	private String currAddress;
	@Column(name = "CITY")
	private String city;
	@Column(name = "STATE")
	private String state;
	@Column(name = "PINCODE")
	private String pincode;
	/*@Column(name="PHOTO")
	Part part;
	@Column(name="PHOTO_PATH")
	private String photoPath;*/
	@Column(name="IMAGE",length=100000000)
	private byte[] image;
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEtype() {
		return etype;
	}
	public void setEtype(String etype) {
		this.etype = etype;
	}
	
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public EmployeeAccDetails getAcc_Id() {
		return acc_Id;
	}
	public void setAcc_Id(EmployeeAccDetails acc_Id) {
		this.acc_Id = acc_Id;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public EmpExperience getExp_id() {
		return exp_id;
	}
	public void setExp_id(EmpExperience exp_id) {
		this.exp_id = exp_id;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAdhar() {
		return adhar;
	}
	public void setAdhar(String adhar) {
		this.adhar = adhar;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getPmtAddress() {
		return pmtAddress;
	}
	public void setPmtAddress(String pmtAddress) {
		this.pmtAddress = pmtAddress;
	}
	public String getMobile1() {
		return mobile1;
	}
	public void setMobile1(String mobile1) {
		this.mobile1 = mobile1;
	}
	public String getCurrAddress() {
		return currAddress;
	}
	public void setCurrAddress(String currAddress) {
		this.currAddress = currAddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	
	
	
}
