package com.erp.servicehandler;

import java.util.ArrayList;



public class ServiceHandlerLocator {

	public static ArrayList<ServiceHandler> serviceHandlerList;
	/**
	* @see createServiceHandlers method will having seviceHandlerlist.
	*	and Created diffrent service handler Example like insertNewAdmin , insertNewStudent etc...
	*	 and then add serviceHandler to list
	*/
	public void createServiceHandlers()
	{
		//List serviceHandlersList;
		System.out.println("Inside createServiceHandlers");
		serviceHandlerList = new ArrayList<ServiceHandler>();
		
		 ServiceHandler serviceHandler = new AddStudentServiceHandler("addstudent");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AddClassDetails("addclass");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AddSectionServiceHandler("addsection");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AddEmployeeServiceHandler("empadds");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AddSubjectServiceHandler("subject");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new TestAjaxCall("getSub");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new GetEmployeeDetails("getEmployeeList");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new GetStudentDetails("getStudentList");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new SubjectandClassList("getSubjectList");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AddVechileServiceHandler("addVehicle");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AddRouteServiceHandler("addRoute");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new GetRouteList("getRouteList");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new GetVehicleList("getVehicleList");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AddExamDetails("addExam");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new GetExamsList("getExamDetails");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new GetClassList("getsubDetails");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new GetTeacherList("getTeacherDetails");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AssignTechertoClass("assignTeacher");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AddDocuments("addDocs");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new GetSection("getSection");
		 serviceHandlerList.add(serviceHandler);
		 
		 serviceHandler = new AutoCompleteBothServiceHandler("autocomplete_both");
		 serviceHandlerList.add(serviceHandler);
		 
	}
	
	public ServiceHandler getServiceHandler( String serviceName )
	{
		
		System.out.println("Inside getServiceHandler : " +serviceName);
		//iterate through serviceHandlersList and get matching service handler
		for (ServiceHandler serviceHandler : serviceHandlerList)
		{
			String tmpServiceName = serviceHandler.getServiceName();
			System.out.println("Inside getServiceHandler : " +tmpServiceName);
			if(tmpServiceName.equalsIgnoreCase(serviceName))
			{
				System.out.println("Inside getServiceHandler : " +tmpServiceName);
				return serviceHandler;
			}
		}
		return null;
	}
}
