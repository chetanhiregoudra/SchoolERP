package com.erp.servicehandler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.bean.CreateSubject;
import com.erp.bean.Exams;
import com.erp.dao.ExamDao;
import com.erp.dao.SubjectDao;
import com.erp.daoimpl.ExamDaoImpl;
import com.erp.daoimpl.SubjectDaoImpl;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class GetClassList implements ServiceHandler {

	String serviceName;
	List<CreateSubject> subList = null;
	public GetClassList(String iserviceName)
	{
		//System.out.println("Create GetEmployeeDetails : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	
	@Override
	public void handleService(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ArrayList<String> list = new ArrayList<String>();
		String str = request.getParameter("classname");
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
		        
		SubjectDao sdao = SubjectDaoImpl.getInstance();
		try {
		     subList = sdao.getSubjectClassList();
		     for(CreateSubject cs:subList)
		     {
		    	 String clsstr = cs.getClassSec();
		    	 if ( clsstr.toLowerCase().indexOf(str.toLowerCase()) != -1 ) {
		    		 	list.add(cs.getSubName());
		    		   //System.out.println("I found the keyword");

		    		} 
		     }
		} catch (SQLException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JsonElement subObj = gson.toJsonTree(list);
		if(list.isEmpty()){
		     myObj.addProperty("success", false);
		}
		else {
		     myObj.addProperty("success", true);
		}
		myObj.add("list", subObj);
		out.println(myObj.toString());

		out.close();

	}

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
		return serviceName;
	}

}
