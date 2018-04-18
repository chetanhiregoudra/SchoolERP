package com.erp.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


import com.erp.bean.Document;

import com.erp.bean.ParentDetails;
import com.erp.bean.SMedicalDetails;
import com.erp.bean.Siblings;
import com.erp.bean.Student;




public interface StudentDao {

	public List<Student> getStudentList() throws IOException, SQLException ;
	
	public boolean insertStudent(Student st,ParentDetails pd,SMedicalDetails sd) throws IOException, SQLException ;
	
	public boolean insertDocuments(Document doc) throws IOException, SQLException ;
	
	public boolean insertSiblings(Siblings sb) throws IOException, SQLException ;
	
}
