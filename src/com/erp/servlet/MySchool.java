package com.erp.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.dao.ConfigDao;
import com.erp.daoimpl.ConfigDaoImpl;
import com.erp.daoimpl.InsertXMLData;
import com.erp.servicehandler.ServiceHandler;
import com.erp.servicehandler.ServiceHandlerLocator;


@MultipartConfig
public class MySchool extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public ServiceHandlerLocator serviceLocator;
	public MySchool() 
	{
        // TODO Auto-generated constructor stub
    }
	
	public void init() throws ServletException
	{
		ConfigDao config =  ConfigDaoImpl.getInstance();
		config.load_Config();
		
		InsertXMLData insData = InsertXMLData.getInstance();
		insData.load_data();
		
		serviceLocator = new ServiceHandlerLocator();
		serviceLocator.createServiceHandlers();
		
		
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		
		
		//Get the action type
 		String actionType = request.getParameter("action_type");
		System.out.println("Entering doGet, request.actionType : " + actionType );
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String actionType = "";
		
			actionType = request.getParameter("Action");
			System.out.println("Entering doPost, request.actionType : " + actionType );
			ServiceHandler serviceHandler = serviceLocator.getServiceHandler(actionType);
			serviceHandler.handleService(request,response);
			//ServiceHandler handler = serviceLocator.getServiceHandler(actionType);
			//handler.handleService(request, response);
	}
}
