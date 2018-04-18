package com.erp.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="HomeWork")
public class HomeWork {

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="class_id")
	private CreateClass classId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="subject_id")
	private CreateSubject subjectId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id")
	private Student studentId;
	@Id
	@Column(name="hm_id",nullable=false)
	private String hmId;
	
	@Column(name="hm_date")
	private String hmDate;
	
	@Column(name="hm_content")
	private String hmContent;
	
	@Column(name="status")
	private String status;

	public CreateClass getClassId() {
		return classId;
	}

	public void setClassId(CreateClass classId) {
		this.classId = classId;
	}

	public CreateSubject getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(CreateSubject subjectId) {
		this.subjectId = subjectId;
	}

	public Student getStudentId() {
		return studentId;
	}

	public void setStudentId(Student studentId) {
		this.studentId = studentId;
	}

	public String getHmId() {
		return hmId;
	}

	public void setHmId(String hmId) {
		this.hmId = hmId;
	}

	public String getHmDate() {
		return hmDate;
	}

	public void setHmDate(String hmDate) {
		this.hmDate = hmDate;
	}

	public String getHmContent() {
		return hmContent;
	}

	public void setHmContent(String hmContent) {
		this.hmContent = hmContent;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
