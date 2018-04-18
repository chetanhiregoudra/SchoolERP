package com.erp.general;

//import java.util.Properties;

//import java.util.Properties;


import org.hibernate.*;
/*import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;*/
//import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;


/*import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;*/





public class MyHibernateUtill {

	private static final SessionFactory sessionFactory = buildSessionFactory();

	  private static SessionFactory buildSessionFactory() 
	  {
		   try 
		   {
			   return new Configuration().configure().buildSessionFactory();
		   } 
		   catch (Throwable ex) 
		   {
			    System.err.println("Initial SessionFactory creation failed." + ex);
			    throw new ExceptionInInitializerError(ex);
		   }
	  }

	  public static SessionFactory getSessionFactory() 
	  {
		  return sessionFactory;
	  }

	  public static void shutdown()
	  {
		  getSessionFactory().close();
	  }

}
