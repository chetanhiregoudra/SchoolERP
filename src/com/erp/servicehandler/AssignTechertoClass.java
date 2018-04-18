package com.erp.servicehandler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.CreateClassTeacher;
import com.erp.dao.EmployeeDetailsDao;
import com.erp.daoimpl.EmployeeDetailsDaoImpl;

public class AssignTechertoClass implements ServiceHandler {

	String serviceName;
	public AssignTechertoClass(String iserviceName)
	{
		//System.out.println("Create GetEmployeeDetails : " +iserviceName );
		serviceName =  iserviceName;
		
	}

	@Override
	public void handleService(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String teachId = request.getParameter("ctId");
		String teachName = request.getParameter("ctName");
		String teachClass = request.getParameter("class");
		String teachSec = request.getParameter("section");
		
		CreateClassTeacher cct = new CreateClassTeacher();
		cct.setTeacherId(teachId);
		cct.setTeacherName(teachName);
		cct.setClassName(teachClass);
		cct.setSection(teachSec);
		try
		{
			EmployeeDetailsDao edao = EmployeeDetailsDaoImpl.getInstance();
			boolean x = edao.insertTeacherDetails(cct);
			if(x == true)
			{
				request.setAttribute("STATUS","success");
				request.setAttribute("OPERATION","Teacher Added");
				
				RequestDispatcher rd = request.getRequestDispatcher("ClassTeacher.jsp"); 
				
				try {
					rd.forward(request,response);
				} catch (ServletException e) {
					
					e.printStackTrace();
				}
			
			}
		}
		catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
		return serviceName;
	}

}
