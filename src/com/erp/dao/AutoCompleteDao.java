package com.erp.dao;

import java.util.ArrayList;

import com.erp.bean.Student;

public interface AutoCompleteDao 
{
	public ArrayList<Student> autoCompleteBoth(String autoComp) throws Exception ;
}
