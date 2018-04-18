package com.erp.servicehandler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.Route;
import com.erp.dao.VechileDetailsDao;
import com.erp.daoimpl.VechileDetailsDaoImpl;

public class AddRouteServiceHandler implements ServiceHandler 
{
	String serviceName;
	public AddRouteServiceHandler(String iserviceName)
	{
		System.out.println("Create AddRouteServiceHandler : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	@Override
	public void handleService(HttpServletRequest request,
			HttpServletResponse response) throws IOException 
			
	{
		
		System.out.println("Inside AddRouteServiceHandler.handleService : parameter " );
		
	
		String routename = request.getParameter("routename");
		
		
		
		try
		{
			VechileDetailsDao vdao = VechileDetailsDaoImpl.getInstance();
			
				Route route = new Route();
				
				route.setRoutename(routename);
								
				boolean x = vdao.insertrouteDetails(route);
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
