package com.erp.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="library")
public class Library {

	@Id
	@Column(name="book_id",nullable=false)
	private String bookId;
	
	@Column(name="book_name")
	private String bookName;
	
	@Column(name="auther")
	private String auther;
	
	@Column(name="price")
	private String price;
	
	@Column(name="qty")
	private String qty;

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuther() {
		return auther;
	}

	public void setAuther(String auther) {
		this.auther = auther;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}
	
	
}
