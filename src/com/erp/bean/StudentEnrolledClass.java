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
@Table(name="stud_enrclass")
public class StudentEnrolledClass {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id")
	private int id;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="class_id")
	private CreateClass classId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="section_id")
	private CreateSection sectionId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id")
	private Student studentId;

	public CreateClass getClassId() {
		return classId;
	}

	public void setClassId(CreateClass classId) {
		this.classId = classId;
	}

	public CreateSection getSectionId() {
		return sectionId;
	}

	public void setSectionId(CreateSection sectionId) {
		this.sectionId = sectionId;
	}

	public Student getStudentId() {
		return studentId;
	}

	public void setStudentId(Student studentId) {
		this.studentId = studentId;
	}
	
	
}
