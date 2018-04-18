package com.erp.bean;


import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "VECHILE")
public class Vechile 
{
	@Id
	@Column(name = "VRN")
	public String vechileRegno;
	@Column(name = "VECHILENAME")
	public String vechileName;
	
	
	public String getVechileName() {
		return vechileName;
	}
	public void setVechileName(String vechileName) {
		this.vechileName = vechileName;
	}
	public String getVechileRegno() {
		return vechileRegno;
	}
	public void setVechileRegno(String vechileRegno) {
		this.vechileRegno = vechileRegno;
	}

}
