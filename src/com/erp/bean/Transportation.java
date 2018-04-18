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
@Table(name="Transportation")
public class Transportation {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id")
	private int id;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="reg_no")
	private Vechile reg_no;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="route_id")
	private Route route_id;
	
	@Column(name="driver_id")
	private String driverId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id")
	private Student studentId;

	public Vechile getReg_no() {
		return reg_no;
	}

	public void setReg_no(Vechile reg_no) {
		this.reg_no = reg_no;
	}

	public Route getRoute_id() {
		return route_id;
	}

	public void setRoute_id(Route route_id) {
		this.route_id = route_id;
	}

	public String getDriverId() {
		return driverId;
	}

	public void setDriverId(String driverId) {
		this.driverId = driverId;
	}

	public Student getStudentId() {
		return studentId;
	}

	public void setStudentId(Student studentId) {
		this.studentId = studentId;
	}
	
	
}
