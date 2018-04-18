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
@Table(name = "Achievement")
public class Achievement {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id")
	private int id;
	
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id")
	private Student stud;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="eventId")
	private Events eventId;
	
	@Column(name = "remark")
	private String remark;
	
	
	
	public Events getEventId() {
		return eventId;
	}
	public void setEventId(Events eventId) {
		this.eventId = eventId;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
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
