package com.erp.servicehandler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.CreateClass;

import com.erp.dao.CreateClassDao;

import com.erp.daoimpl.CreateClassDaoImpl;


public class AddClassDetails implements ServiceHandler
{
	String serviceName;
	
	/**
	 * @see AddPatientServiceHandler is constructor.
	 * @param iserviceName is String value instatiate object of AddPatientServiceHandler.
	 * Assign the iservicename to serviceName variable.
	*/
	public AddClassDetails(String iserviceName)
	{
		//System.out.println("Create AddPatientServiceHandler : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	/**
	 * @param request of type HttpServletRequest
	 * @param response of type HttpServletResponse
	 * @see handleService is method. Having a parameter of request which is coming from sevlet contoller
	 * @throws IOException checked exception
	*/
	public void handleService(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		int x=0;
		
		System.out.println("class Id: "+request.getParameter("cId"));
		
		System.out.println("class Name: "+request.getParameter("cName"));
		CreateClass cc = new CreateClass();
		cc.setClassId(request.getParameter("cId"));
		cc.setClassName(request.getParameter("cName"));
		
		try 
		{
			CreateClassDao cdao = CreateClassDaoImpl.getInstance();
			 x =cdao.insertClass(cc);
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		if(x==0)
		{
			request.setAttribute("STATUS","success");
			request.setAttribute("OPERATION","Class Added");
			
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); 
			
			try {
				rd.forward(request,response);
			} catch (ServletException e) {
				
				e.printStackTrace();
			}
		}
	}
	/**
	 * @see getServiceName is method. 
	 * @return service name
	*/
	public String getServiceName()
	{
		//System.out.println("Inside AddStudentServiceHandler.getServiceName");
		return serviceName;
	}

}
