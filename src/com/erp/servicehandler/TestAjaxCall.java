package com.erp.servicehandler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.XMLClasses;

import com.erp.daoimpl.InsertXMLData;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class TestAjaxCall implements ServiceHandler
{
	String serviceName;
	public TestAjaxCall(String iserviceName)
	{
		//System.out.println("Create TestAjaxCall : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	
	public void handleService(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String str = request.getParameter("code");
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
        InsertXMLData insData = InsertXMLData.getInstance();
		
		//CreateSectionDao csd = CreateSectionDaoImpl.getInstance();
		List<XMLClasses> cslist = insData.getXMLOptionalSub();
		//System.out.println("Yes Coming :" +str);
		ArrayList<String> ast = new ArrayList<String>();
		for(XMLClasses xls:cslist)
		{
			if(str.equalsIgnoreCase(xls.getClassName()))
			{
				ast.add(xls.getOptSub());
			}
		}
		/*ConfigDaoImpl cd = ConfigDaoImpl.getInstance();
		School school = cd.getReady();
		Map<String,String> classList = school.getClassList();
		for (Entry<String, String> entry : classList.entrySet()) {
            if (entry.getValue().equals(str)) {
                
                ast.add(entry.getKey());
            }
        }*/
		for(String st:ast)
        {
        	System.out.println(st);
        }
		JsonElement subObj = gson.toJsonTree(ast);
		if(ast.isEmpty()){
            myObj.addProperty("success", false);
        }
        else {
            myObj.addProperty("success", true);
        }
        myObj.add("subInfo", subObj);
        out.println(myObj.toString());

        out.close();
	}
	
	public String getServiceName()
	{
		//System.out.println("Inside TestAjaxCall.getServiceName");
		return serviceName;
	}
	
}
