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
@Table(name="BooKBorrow")
public class BookBorrow {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id")
	private int id;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="book_id")
	private Library bookId;
	
	@Column(name="bdate")
	private String bDate;
	
	@Column(name="rdate")
	private String rDate;
	
	@Column(name="returndate")
	private String rtnDate;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="student_id")
	private Student brId;

	public Library getBookId() {
		return bookId;
	}

	public void setBookId(Library bookId) {
		this.bookId = bookId;
	}

	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
		this.bDate = bDate;
	}

	public String getrDate() {
		return rDate;
	}

	public void setrDate(String rDate) {
		this.rDate = rDate;
	}

	public String getRtnDate() {
		return rtnDate;
	}

	public void setRtnDate(String rtnDate) {
		this.rtnDate = rtnDate;
	}

	public Student getBrId() {
		return brId;
	}

	public void setBrId(Student brId) {
		this.brId = brId;
	}

	
	
	
}
