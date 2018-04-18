package com.erp.servicehandler;


import java.io.IOException;
import java.io.InputStream;

import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.erp.bean.Document;
//import com.erp.bean.FeesDetails;
import com.erp.bean.ParentDetails;
import com.erp.bean.SMedicalDetails;
import com.erp.bean.Siblings;
import com.erp.bean.Student;
import com.erp.dao.StudentDao;
import com.erp.daoimpl.StudentDaoImpl;

public class AddStudentServiceHandler implements ServiceHandler
{
	
	String serviceName;
	
	/**
	 * @see AddPatientServiceHandler is constructor.
	 * @param iserviceName is String value instatiate object of AddPatientServiceHandler.
	 * Assign the iservicename to serviceName variable.
	*/
	public AddStudentServiceHandler(String iserviceName)
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
		StudentDao sdao = StudentDaoImpl.getInstance();
		/*SessionFactory sf =  MyHibernateUtill.getSessionFactory();
		Part filePart = null;
		//InputStream inputStream = null;
		String classid = request.getParameter("sClass");
		System.out.println("class Id :" +classid);
		String sectionid = request.getParameter("sSection");
		Session session = sf.openSession();
		Transaction t=session.beginTransaction(); 
		
		CreateClass createClass =(CreateClass)session.get(CreateClass.class, classid);
		CreateSection createSection =(CreateSection)session.get(CreateSection.class, sectionid);
		System.out.println("class Id  :"+createClass.getClassId());
		System.out.println("Section Id  :"+createSection.getSectionId());
		session.close();*/
		
		Student st = new Student();
		st.setFirstName(request.getParameter("firstName"));
		st.setMiddleName(request.getParameter("MiddleName"));
		st.setLastName(request.getParameter("lastName"));
		st.setStudentId(request.getParameter("studentId"));
		st.setOptSub(request.getParameter("optsub "));
		String[] strLang = request.getParameterValues("spokenLang[]");
		Part filePart = null;
		try
		{
			filePart = request.getPart("simg");
		}
		catch(ServletException e)
		{
			e.printStackTrace();
		}
		InputStream input = filePart.getInputStream();
		byte[] image = IOUtils.toByteArray(input); 
		st.setPhoto(image);
		//st.setImage(inputStream);
		st.setAge(request.getParameter("age"));
		System.out.println("Age :"+request.getParameter("studage"));
		st.setCaste(request.getParameter("caste"));
		st.setCity(request.getParameter("city"));
		st.setNationality(request.getParameter("nationality"));
		st.setGender(request.getParameter("gender"));
		st.setDateOfBirth(request.getParameter("dob"));
		st.setReligion(request.getParameter("religion"));
		st.setState(request.getParameter("state"));
		st.setSection(request.getParameter("section"));
		st.setsClass(request.getParameter("class"));
		st.setAddress(request.getParameter("addr"));
		st.setCategory(request.getParameter("category"));
		st.setResCategory(request.getParameter("rcategory"));
		//st.setSpkLang();
		st.setZipcode(Integer.parseInt(request.getParameter("pinCode")));
				
		ParentDetails pd = new ParentDetails();
		pd.setFname(request.getParameter("fatherName"));
		pd.setFeducation(request.getParameter("education"));
		pd.setFincme(request.getParameter("income"));
		pd.setFoccuption(request.getParameter("occupation"));
		pd.setMname(request.getParameter("motherName"));
		pd.setMeducation(request.getParameter("meducation"));
		pd.setMincme(request.getParameter("mincome"));
		pd.setMoccuption(request.getParameter("moccupation"));
		/*pd.setSibname(request.getParameter("siblingName"));
		pd.setSibdob(request.getParameter("siblingDob"));
		pd.setSibage(request.getParameter("siblingAge"));*/
		pd.setStudentId(st);
		
		String[] sibName = request.getParameterValues("siblingName[]");
		String[] sibDob = request.getParameterValues("siblingDob[]");
		String[] sibAge = request.getParameterValues("siblingAge[]");
		
		SMedicalDetails sd = new SMedicalDetails();
		sd.setBloodGroup(request.getParameter("bloodGroup"));
		sd.setBmi(request.getParameter("bmi"));
		sd.setHieght(request.getParameter("height"));
		sd.setWeight(request.getParameter("weight"));
		sd.setStudentId(st);
		
		/*FeesDetails fd = new FeesDetails();
		fd.setAdmissionchrg(Integer.parseInt(request.getParameter("admissionchrg")));
		fd.setDevcharge(Integer.parseInt(request.getParameter("devcharge")));
		fd.setEdufee(Integer.parseInt(request.getParameter("edufee")));
		fd.setPrcharges(Integer.parseInt(request.getParameter("prcharges")));
		fd.setStudentId(st);*/
		
		try 
		{
			
			boolean y =  sdao.insertStudent(st,pd,sd);
			System.out.println("return value :"+y);
			if(y == true)
			{
				request.setAttribute("STATUS","success");
				request.setAttribute("OPERATION","Teacher Added");
				
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp"); 
				
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
	/**
	 * @see getServiceName is method. 
	 * @return service name
	*/
	public String getServiceName()
	{
		//System.out.println("Inside AddStudentServiceHandler.getServiceName");
		return serviceName;
	}
	
	private String extractFileName(Part part) {
        // form-data; name="file"; filename="C:\file1.zip"
        // form-data; name="file"; filename="C:\Note\file2.zip"
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                // C:\file1.zip
                // C:\Note\file2.zip
                String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
                clientFileName = clientFileName.replace("\\", "/");
                int i = clientFileName.lastIndexOf('/');
                // file1.zip
                // file2.zip
                return clientFileName.substring(i + 1);
            }
        }
        return null;
    }
}
