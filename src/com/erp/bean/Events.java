package com.erp.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Events")
public class Events {
	
	@Id
	@Column(name = "event_id", nullable = false)
	private String eventId;
	
	@Column(name = "event_type")
	private String eventType;
	
	@Column(name = "event_date")
	private String eventDate;

	public String getEventId() {
		return eventId;
	}

	public void setEventId(String eventId) {
		this.eventId = eventId;
	}

	public String getEventType() {
		return eventType;
	}

	public void setEventType(String eventType) {
		this.eventType = eventType;
	}

	public String getEventDate() {
		return eventDate;
	}

	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	

}
