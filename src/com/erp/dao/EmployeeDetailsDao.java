package com.erp.dao;

import java.io.*;

import com.erp.bean.CreateClassTeacher;
import com.erp.bean.EmpExperience;
import com.erp.bean.Employee;
import com.erp.bean.EmployeeAccDetails;

import java.sql.*;
import java.util.List;

/**
* @see PatientDao for Patient Data Access Object interface class 

 * @author <a href="hh">RARO</a>.
 * @version  hhh.
 */
public interface EmployeeDetailsDao 
{
	/**
     * @see insertpatient  inserts a new Patient.
     * @return returns the integer value.
	 * @throws  ClassNotFoundException  checked exception.
	 * @throws  SQLException checked exception
     */
	public boolean insertEmpDetails (Employee emp,EmployeeAccDetails ead,EmpExperience exp) throws IOException,SQLException;
	
	/**
     * @see getEmpWorkDetails  inserts a new workdetails.
     * @return returns the integer value.
	 * @throws  ClassNotFoundException  checked exception.
	 * @throws  SQLException checked exception
     */
	public List<Employee> getEmployeeDetails() throws IOException,SQLException;
	//public TeacherDetails getTeacherPersonalList(String  id) throws IOException, SQLException ;
	
	/**
     * @see insertpatient  inserts a new Patient.
     * @return returns the integer value.
	 * @throws  ClassNotFoundException  checked exception.
	 * @throws  SQLException checked exception
     */
	
	public List<Employee> getTeacherDetails() throws IOException,SQLException;
	
	public boolean insertTeacherDetails (CreateClassTeacher cct) throws IOException,SQLException;
	//public int updateInsertEmpDetails(WorkDetails wd) throws IOException, SQLException;
}
