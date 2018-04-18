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
@Table(name = "AttendanceDetails")
public class AttendanceDetails
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id")
	private int id;
	
	
	@Column(name = "rdate")
	private String rdate;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id")
	private Student stud;
	
	
	@Column(name = "remark")
	private String remark;
	
	@Column(name = "subject")
	private String subject;
	
	@Column(name = "class_Id")
	private String classId;
	
	@Column(name = "studName")
	private String studName;
	
	@Column(name = "class_Name")
	private String className;
	
	public String getSubject() 
	{
		return subject;
	}
	public void setSubject(String subject) 
	{
		this.subject = subject;
	}
	
	
	public String getRdate() 
	{
		return rdate;
	}
	public void setRdate(String rdate) 
	{
		this.rdate = rdate;
	}
	public String getStudName() 
	{
		return studName;
	}
	public void setStudName(String studName) 
	{
		this.studName = studName;
	}
	public String getRemark() 
	{
		return remark;
	}
	public void setRemark(String remark) 
	{
		this.remark = remark;
	}
	
	public String getClassId() 
	{
		return classId;
	}
	public void setClassId(String classId) 
	{
		this.classId = classId;
	}
	
	public String getClassName() 
	{
		return className;
	}
	public void setClassName(String className) 
	{
		this.className = className;
	}
	
	public Student getStud() {
		return stud;
	}
	public void setStud(Student stud) {
		this.stud = stud;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}