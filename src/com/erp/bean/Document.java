package com.erp.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Document")
public class Document
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "DID")
	public int docId;
	@Column(columnDefinition = "LONGBLOB")
	private byte[] docs;
	@Column(name = "DOCNAME")
	private String docName;
	public int getDocId() {
		return docId;
	}
	public void setDocId(int docId) {
		this.docId = docId;
	}
	public byte[] getDocs() {
		return docs;
	}
	public void setDocs(byte[] docs) {
		this.docs = docs;
	}
	public String getDocName() {
		return docName;
	}
	public void setDocName(String docName) {
		this.docName = docName;
	}
	
	
}
