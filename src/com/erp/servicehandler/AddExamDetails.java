package com.erp.servicehandler;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.Exams;

import com.erp.dao.ExamDao;

import com.erp.daoimpl.ExamDaoImpl;



public class AddExamDetails implements ServiceHandler {

	String serviceName;
	List<Exams> examList = null;
	public AddExamDetails(String iserviceName)
	{
		//System.out.println("Create GetEmployeeDetails : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	
	@Override
	public void handleService(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String examType = request.getParameter("examType");
		String examDur = request.getParameter("examDur");
		String examRemark = request.getParameter("examRemark");
		String examStatus = request.getParameter("examStatus");
		
		Exams ex = new Exams();
		ex.setDuration(examDur);
		
		ex.setExamType(examType);
		ex.setRemark(examRemark);
		ex.setStatus(examStatus);
		try
		{
			ExamDao edao = ExamDaoImpl.getInstance();
			boolean x = edao.insertExamDetails(ex);
			if(x == true)
			{
				//request.setAttribute("STATUS","success");
				request.setAttribute("OPERATION","Route Added");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); 
				rd.forward(request,response);
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
	}

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
		return serviceName;
	}

}
