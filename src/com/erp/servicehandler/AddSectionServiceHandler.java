package com.erp.servicehandler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.bean.CreateClass;
import com.erp.bean.CreateSection;

import com.erp.dao.CreateSectionDao;

import com.erp.daoimpl.CreateSectionDaoImpl;
import com.erp.general.MyHibernateUtill;


public class AddSectionServiceHandler implements ServiceHandler
{
	String serviceName;
	
	/**
	 * @see AddPatientServiceHandler is constructor.
	 * @param iserviceName is String value instatiate object of AddPatientServiceHandler.
	 * Assign the iservicename to serviceName variable.
	*/
	public AddSectionServiceHandler(String iserviceName)
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
		SessionFactory sf =  MyHibernateUtill.getSessionFactory();
		int x=0 ;
		String classid = request.getParameter("sclassId");
		Session session = sf.openSession();
		Transaction t=session.beginTransaction(); 
		
		CreateClass createClass =(CreateClass)session.get(CreateClass.class, classid);
		System.out.println("class Id  :"+createClass.getClassId());
		
		session.close();
		CreateSection cs = new CreateSection();
		cs.setSectionId(request.getParameter("sid"));
		cs.setSectionName(request.getParameter("sName"));
		cs.setClassId(createClass);
		try 
		{
			
			CreateSectionDao csdao = CreateSectionDaoImpl.getInstance();
			 x =csdao.insertSection(cs);
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Return Value : "+x);
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
