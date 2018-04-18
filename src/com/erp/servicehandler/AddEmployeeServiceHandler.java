package com.erp.servicehandler;


import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.erp.bean.EmpExperience;
import com.erp.bean.Employee;
import com.erp.bean.EmployeeAccDetails;
import com.erp.dao.EmployeeDetailsDao;
import com.erp.daoimpl.EmployeeDetailsDaoImpl;


public class AddEmployeeServiceHandler implements ServiceHandler
{
	
	String serviceName;
	//Get the only object available
   // DBLoader loader = DBLoader.getInstance();

	/**
	 * @see AddClassServiceHandler(String iserviceName) is constructor.
	 * @param iserviceName is String value instatiate object of AddClassServiceHandler.
	 * Assign the iservicename to serviceName variable.
	*/
	
	public AddEmployeeServiceHandler(String iserviceName)
	{
		System.out.println("Create AddEmployeeServiceHandler : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	
	/**
	 * handleService(HttpServletRequest request,HttpServletResponse response) is method. Having a parameter of request which is coming from sevlet contoller
	*/
	
	public void handleService(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		
		
		System.out.println("Inside AddSectionServiceHandler.handleService : parameter " );
		
		String fname = request.getParameter("empFname");
		String mname = request.getParameter("empMname");
		String lname = request.getParameter("empLname");
		String dob = request.getParameter("empDob");
		String etype = request.getParameter("emptype");
		String  gender= request.getParameter("empGender");
		System.out.println("id in hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii" );
		
		
		Employee employee = new Employee();
		employee.setEid(request.getParameter("empId"));
		employee.setFname(fname);
		employee.setLname(lname);
		employee.setMname(mname);
		employee.setDob(dob);
		employee.setGender(gender);
		employee.setEtype(etype);
		employee.setQualification(request.getParameter("qualification"));
		employee.setAddress(request.getParameter("pAddress"));
		employee.setMobileno(request.getParameter("empMobile"));
		employee.setMobile1(request.getParameter("empMobile1"));
		employee.setEmail(request.getParameter("email"));
		employee.setExperience(request.getParameter("exp"));
		employee.setAdhar(request.getParameter("empAadharNumber"));
		employee.setCity(request.getParameter("empCity"));
		employee.setState(request.getParameter("empState"));
		employee.setCurrAddress(request.getParameter("curAddress"));
		employee.setPan(request.getParameter("panNumber"));
		employee.setJoinDate(request.getParameter("joiningDate"));
		employee.setAge(request.getParameter("empAge"));
		employee.setPincode(request.getParameter("empPinCode"));
		Part filePart = null;
		try
		{
			filePart = request.getPart("empPhoto");
		}
		catch(ServletException e)
		{
			e.printStackTrace();
		}
		InputStream input = filePart.getInputStream();
		byte[] image = IOUtils.toByteArray(input); 
		employee.setImage(image);
		/* System.out.println(request.getParameter("empPhoto").getBytes()+"hi hello");
		
			File imagePath = new File("C:/Users/DAD/Desktop/06.jpg"); //here we given fully specified image path.
			byte[] imageInBytes = new byte[(int)imagePath.length()]; //image convert in byte form
			FileInputStream inputStream = new FileInputStream(imagePath);  //input stream object create to read the file
			inputStream.read(imageInBytes); // here inputstream object read the file
			inputStream.close();
			employee.setPhoto(imageInBytes);*/
			
		EmployeeAccDetails ead =new EmployeeAccDetails();
		ead.setAccountNo(request.getParameter("accNo"));
		ead.setBankName(request.getParameter("bankName"));
		ead.setbBranch(request.getParameter("branch"));
		ead.setIfscCode(request.getParameter("ifscCode"));
		employee.setAcc_Id(ead);
		EmpExperience exp=null;
		if(Integer.parseInt(request.getParameter("experience"))>0)
		{
			exp = new EmpExperience();
			exp.setNoexpyrs(request.getParameter("experience"));
			exp.setPrvinst(request.getParameter("orgName"));
			exp.setExpin(request.getParameter("subTaught"));
			exp.setFromDate(request.getParameter("fromDate"));
			exp.setToDate(request.getParameter("toDate"));
			exp.setClasstaught(request.getParameter("classTaught"));
			exp.setPredesignation(request.getParameter("preDesignation"));
			
		}
		//ead.setEmpId(employee);
		employee.setExp_id(exp);
			EmployeeDetailsDao employeeDetailsDao = EmployeeDetailsDaoImpl.getInstance();
			
			try 
			{
				boolean x = employeeDetailsDao.insertEmpDetails(employee,ead,exp);
		
			
				if(x == true)
				{
					request.setAttribute("STATUS","success");
					request.setAttribute("OPERATION","Teacher Added");
					
					RequestDispatcher rd = request.getRequestDispatcher("/index.jsp"); 
					
					rd.forward(request,response);
				
				}
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
		//System.out.println("Inside AddSectionServiceHandler.getServiceName");
		return serviceName;
	}

}

