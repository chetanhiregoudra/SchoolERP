package com.erp.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.erp.bean.CreateSubject;

public interface SubjectDao
{
	public boolean insertsubjectDetails(CreateSubject subject) throws IOException,SQLException;
	public  List<CreateSubject> getSubjectClassList() throws IOException, SQLException; 
}

