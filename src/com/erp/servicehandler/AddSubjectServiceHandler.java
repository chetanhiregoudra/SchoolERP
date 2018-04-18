package com.erp.servicehandler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.bean.CreateClass;
import com.erp.bean.CreateSubject;
import com.erp.dao.CreateSubjectDao;
import com.erp.dao.StudentDao;
import com.erp.dao.SubjectDao;
import com.erp.daoimpl.StudentDaoImpl;
import com.erp.daoimpl.SubjectDaoImpl;
import com.erp.general.MyHibernateUtill;


public class AddSubjectServiceHandler  implements ServiceHandler
{
	String serviceName;
	public AddSubjectServiceHandler(String iserviceName)
	{
		System.out.println("Create AddSubjectServiceHandler : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	
	@Override
	public void handleService(HttpServletRequest request,HttpServletResponse response) throws IOException 
	{
		String language ="";
		String[] sClass = request.getParameterValues("sClass");
		String subject = request.getParameter("subject");
		for(int i=0;i<sClass.length;i++)
		{
			if(i==sClass.length-1)
			{
				language += sClass[i];
			}
			else
			{
				language += sClass[i]+",";
			}
			 
			
		}
		System.out.println(language);
		CreateSubject cs = new CreateSubject();
		cs.setClassSec(language);
		cs.setSubName(subject);
		try 
		{
			SubjectDao csd = SubjectDaoImpl.getInstance();
			boolean x =  csd.insertsubjectDetails(cs);
			System.out.println("return value :"+x);
			if(x == true)
			{
				request.setAttribute("STATUS","success");
				request.setAttribute("OPERATION","Subject Added To class");
				
				RequestDispatcher rd = request.getRequestDispatcher("/CreateSubject.jsp"); 
				
				try {
					rd.forward(request,response);
				} catch (ServletException e) {
					
					e.printStackTrace();
				}
			
			}
		} 
		catch (SQLException e) 
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
