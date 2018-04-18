package com.erp.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Exams {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="exam_id",nullable=false)
	private int examId;
	
	@Column(name="exam_type")
	private String examType;
	
	@Column(name="duration")
	private String duration;
	
	@Column(name="examName")
	private String examName;
	
	@Column(name="status")
	private String status;
	
	@Column(name="remark")
	private String remark;
	
	public int getExamId() {
		return examId;
	}

	public void setExamId(int examId) {
		this.examId = examId;
	}

	public String getExamType() {
		return examType;
	}

	public void setExamType(String examType) {
		this.examType = examType;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getExamDate() {
		return examName;
	}

	public void setExamDate(String examName) {
		this.examName = examName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
