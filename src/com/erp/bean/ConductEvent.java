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
@Table(name="ConductEvent")
public class ConductEvent {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id")
	private int id;
	
	@Column(name = "event_name")
	private String eventName;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="eventId")
	private Events eventId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="class_id")
	private CreateClass classId;
	
	@Column(name = "status")
	private String status;
	
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public Events getEventId() {
		return eventId;
	}
	public void setEventId(Events eventId) {
		this.eventId = eventId;
	}
	
	public CreateClass getClassId() {
		return classId;
	}
	public void setClassId(CreateClass classId) {
		this.classId = classId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
