package com.erp.bean;

import java.util.*;
import java.util.HashMap;

public class School 
{
	private String schoolName;
	private String address;
	private String schoolType;
	private HashMap<String, String> subjectList;
	private HashMap<String, String> classList;
	Map<String, List<String>> map ;
	
	public Map<String, List<String>> getMap() {
		return map;
	}
	public void setMap(Map<String, List<String>> map) {
		this.map = map;
	}
	public HashMap<String, String> getClassList() {
		return classList;
	}
	public void setClassList(HashMap<String, String> classList) {
		this.classList = classList;
	}
	private ArrayList<String> Tclass;
	
	public ArrayList<String> getTclass() {
		return Tclass;
	}
	public void setTclass(ArrayList<String> tclass) {
		Tclass = tclass;
	}
	
	public HashMap<String, String> getSubjectList() {
		return subjectList;
	}
	public void setSubjectList(HashMap<String, String> subjectList) {
		this.subjectList = subjectList;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getSchoolType() {
		return schoolType;
	}
	public void setSchoolType(String schoolType) {
		this.schoolType = schoolType;
	}
}