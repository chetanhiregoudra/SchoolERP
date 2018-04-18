package com.erp.servicehandler;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.Exams;

public class CreateExamDetails implements ServiceHandler {

	String serviceName;
	List<Exams> examList = null;
	public CreateExamDetails(String iserviceName)
	{
		//System.out.println("Create GetEmployeeDetails : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	@Override
	public void handleService(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

	}

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
		return serviceName;
	}

}
