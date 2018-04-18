package com.erp.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ROUTEMAP")
public class Route 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "RID")
	public int routeId;
	@Column(name = "ROUTE")
	public String routename;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "VRN")
	private Vechile vechile;
	
	
	public Vechile getVechile() {
		return vechile;
	}
	public void setVechile(Vechile vechile) {
		this.vechile = vechile;
	}
	public int getRouteId() {
		return routeId;
	}
	public void setRouteId(int routeId) {
		this.routeId = routeId;
	}
	public String getRoutename() {
		return routename;
	}
	public void setRoutename(String routename) {
		this.routename = routename;
	}

}
