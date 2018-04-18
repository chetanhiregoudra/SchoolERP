package com.erp.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.erp.bean.CreateClass;





public interface CreateClassDao
{

	public int insertClass(CreateClass cc) throws IOException, SQLException ;
	
	public List<CreateClass> getClassList() throws IOException, SQLException ;
}
