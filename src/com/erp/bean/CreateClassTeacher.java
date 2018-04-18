package com.erp.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CLASSTECHER")
public class CreateClassTeacher
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "classtecherId", nullable = false)
	private int classtecherId;
	
	@Column(name = "teacherName")
	private String teacherName;
	
	@Column(name = "teacherId")
	private String teacherId;
	
	@Column(name = "className")
	private String className;
	
	@Column(name = "section")
	private String section;

	public int getClasstecherId() {
		return classtecherId;
	}

	public void setClasstecherId(int classtecherId) {
		this.classtecherId = classtecherId;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}
	
	
}
