package com.erp.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.erp.bean.Exams;



public interface ExamDao 
{
	public boolean insertExamDetails(Exams exam) throws IOException,SQLException;
	public  List<Exams> getExamList() throws IOException, SQLException; 
}
