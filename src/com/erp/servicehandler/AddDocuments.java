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
import com.erp.dao.StudentDao;
import com.erp.daoimpl.StudentDaoImpl;

public class AddDocuments implements ServiceHandler {

String serviceName;
	
	/**
	 * @see AddDocuments is constructor.
	 * @param iserviceName is String value instatiate object of AddDocuments.
	 * Assign the iservicename to serviceName variable.
	*/
	public AddDocuments(String iserviceName)
	{
		//System.out.println("Create AddDocuments : " +iserviceName );
		serviceName =  iserviceName;
		
	}
	
	@Override
	public void handleService(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		// TODO Auto-generated method stub
		String[] docname = request.getParameterValues("doctype[]");
		StudentDao sdao = StudentDaoImpl.getInstance();
		
		//Part filePart = null;
		int i=0;
		boolean x = false;
		Collection<Part> filePart1 = request.getParts();
		for (Part part : filePart1) {
			Document doc = new Document();
			String filename = extractFileName(part);
			if (filename != null) {
				InputStream is = part.getInputStream();
                byte[] image = IOUtils.toByteArray(is); 
                doc.setDocName(docname[i]);
        		doc.setDocs(image);
        		try {
        			x = sdao.insertDocuments(doc);
        			
        		} catch (SQLException e) {
        			// TODO Auto-generated catch block
        			e.printStackTrace();
        		}
              // System.out.println(image);
               i++;
			}
			
		}
		System.out.println("x value :"+ x);
		if(x == true)
		{
			//request.setAttribute("STATUS","success");
			request.setAttribute("OPERATION","Route Added");
			
			RequestDispatcher rd = request.getRequestDispatcher("Documents.jsp"); 
			rd.forward(request, response);
		}
	}	

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
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
