package com.erp.servicehandler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.Vechile;
import com.erp.dao.VechileDetailsDao;
import com.erp.daoimpl.VechileDetailsDaoImpl;

public class AddVechileServiceHandler implements ServiceHandler {

	String serviceName;
	public AddVechileServiceHandler(String iserviceName)
	{
		System.out.println("Create AddVechileServiceHandler : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	
	@Override
	public void handleService(HttpServletRequest request,HttpServletResponse response) throws IOException 
	{
		
		System.out.println("Inside AddVechileServiceHandler.handleService : parameter " );
		
		String vregno = request.getParameter("vregno");
		String vname = request.getParameter("vname");
		
		
		
		
		try
		{
			VechileDetailsDao vdao = VechileDetailsDaoImpl.getInstance();
			
				Vechile vechile = new Vechile();
				vechile.setVechileName(vname);
				vechile.setVechileRegno(vregno);
				
				
				boolean x = vdao.insertvechileDetails(vechile);
				if(x == true)
				{
					//request.setAttribute("STATUS","success");
					request.setAttribute("OPERATION","Vechile Added");
					
					RequestDispatcher rd = request.getRequestDispatcher("/VehicleAdd.jsp"); 
					rd.forward(request,response);
				}
		
			
			
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		

	}

	@Override
	public String getServiceName() 
	{
		// TODO Auto-generated method stub
		return serviceName;
	}

}