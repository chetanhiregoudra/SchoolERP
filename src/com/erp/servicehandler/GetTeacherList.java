package com.erp.servicehandler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.Employee;
import com.erp.dao.EmployeeDetailsDao;

import com.erp.daoimpl.EmployeeDetailsDaoImpl;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class GetTeacherList implements ServiceHandler {

	String serviceName;
	List<Employee> empList = null;
	public GetTeacherList(String iserviceName)
	{
		//System.out.println("Create GetEmployeeDetails : " +iserviceName );
		serviceName =  iserviceName;
		
	}

	
	@Override
	public void handleService(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
				PrintWriter out = response.getWriter();
		        response.setContentType("text/html");
		        response.setHeader("Cache-control", "no-cache, no-store");
		        response.setHeader("Pragma", "no-cache");
		        response.setHeader("Expires", "-1");

		        response.setHeader("Access-Control-Allow-Origin", "*");
		        response.setHeader("Access-Control-Allow-Methods", "POST");
		        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
		        response.setHeader("Access-Control-Max-Age", "86400");

		        Gson gson = new Gson(); 
		        JsonObject myObj = new JsonObject();
		        
		        EmployeeDetailsDao edao = EmployeeDetailsDaoImpl.getInstance();
		        try {
		        	empList = edao.getTeacherDetails();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        JsonElement empObj = gson.toJsonTree(empList);
				if(empList.isEmpty()){
		           myObj.addProperty("success", false);
		       }
		       else {
		           myObj.addProperty("success", true);
		       }
		       myObj.add("empList", empObj);
		       out.println(myObj.toString());

		       out.close();

	}

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
		return serviceName;
	}

}
