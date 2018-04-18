package com.erp.servicehandler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.Route;

import com.erp.dao.VechileDetailsDao;

import com.erp.daoimpl.VechileDetailsDaoImpl;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class GetRouteList implements ServiceHandler {

	String serviceName;
	List<Route> routeList = null;
	public GetRouteList(String iserviceName)
	{
		//System.out.println("Create GetEmployeeDetails : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	
	@Override
	public void handleService(HttpServletRequest request, HttpServletResponse response) throws IOException {
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
        VechileDetailsDao vdao = VechileDetailsDaoImpl.getInstance();
       try
       {
    	   routeList = vdao.getRoutedetailsList();
    	   
       } 
       catch (SQLException e)
       {
    	   e.printStackTrace();
       }
       JsonElement routeObj = gson.toJsonTree(routeList);
		if(routeList.isEmpty()){
           myObj.addProperty("success", false);
       }
       else {
           myObj.addProperty("success", true);
       }
       myObj.add("routeList", routeObj);
       out.println(myObj.toString());

       out.close();

	}

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
		return serviceName;
	}

}
