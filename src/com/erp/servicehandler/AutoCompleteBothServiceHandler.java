package com.erp.servicehandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.Student;
import com.erp.dao.AutoCompleteDao;
import com.erp.daoimpl.AutoCompleteDaoImpl;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import java.io.*;
import java.sql.SQLException;
import java.util.*;
/**
 * @see AutoCompleteBothServiceHandler <br>
 * intialized a String variable called serviceName<br>
 
*/
public class AutoCompleteBothServiceHandler implements ServiceHandler
{
	String serviceName;
	
	/**
	 * @see AutoCompleteBothServiceHandler(String iserviceName) is constructor.
	 * @param iserviceName is String value instatiate object of AutoCompleteServiceHandler.
	 * Assign the iservicename to serviceName variable.
	*/
	public AutoCompleteBothServiceHandler(String iserviceName)
	{
		System.out.println("Create AutoCompleteBothServiceHandler : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	/**
	 * handleService(HttpServletRequest request) is method. Having a parameter of request which is coming from sevlet contoller
	*/
	public void handleService(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		response.setContentType("application/json");
        try 
		{
            String term = request.getParameter("term");
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
            AutoCompleteDao autoDao = new AutoCompleteDaoImpl();
            ArrayList<Student> list = autoDao.autoCompleteBoth(term);

            JsonElement studObj = gson.toJsonTree(list);
    		if(list.isEmpty()){
                myObj.addProperty("success", false);
            }
            else {
                myObj.addProperty("success", true);
            }
            myObj.add("studentInfo", studObj);
            out.println(myObj.toString());

            out.close();
        }
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (ServletException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	/**
	 * public String getServiceName()is method. 
	 * @return service name
	*/
	
	public String getServiceName()
	{
		//System.out.println("Inside AutoCompleteBothServiceHandler.getServiceName");
		return serviceName;
	}

}