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
@Table(name="ExamResult")
public class ExamResult {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id")
	private int id;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="examId")
	private Exams examId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="studentId")
	private Student studentId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="subjectId")
	private CreateSubject subjectId;
	
	@Column(name="marks")
	private String marks;
	
	@Column(name="grade")
	private String grade;

	public Exams getExamId() {
		return examId;
	}

	public void setExamId(Exams examId) {
		this.examId = examId;
	}

	public Student getStudentId() {
		return studentId;
	}

	public void setStudentId(Student studentId) {
		this.studentId = studentId;
	}

	public CreateSubject getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(CreateSubject subjectId) {
		this.subjectId = subjectId;
	}

	public String getMarks() {
		return marks;
	}

	public void setMarks(String marks) {
		this.marks = marks;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
}
