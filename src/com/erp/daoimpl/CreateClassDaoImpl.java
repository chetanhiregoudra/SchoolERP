package com.erp.daoimpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.bean.CreateClass;
import com.erp.dao.CreateClassDao;
import com.erp.general.MyHibernateUtill;

public class CreateClassDaoImpl implements CreateClassDao 
{
	private static CreateClassDaoImpl ccd = new CreateClassDaoImpl();
	List<CreateClass> ccList=null;
	SessionFactory sf =  MyHibernateUtill.getSessionFactory();
	
	public static CreateClassDaoImpl getInstance( )
	{
		return ccd;
	}
	
	public int insertClass(CreateClass cc) throws IOException, SQLException
	{
		/*Session session = sf.openSession();
		Transaction t=session.beginTransaction();  
		session.persist(cc);
		t.commit();
        session.close();  
        System.out.println("successfully saved");
		return 0;*/
		
		SessionFactory sf = MyHibernateUtill.getSessionFactory();
		
				Session ses = sf.openSession();
				Transaction tx =ses.getTransaction();
				try 
				{
			           
			            tx.begin();
			            System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii CreateClass");
			            ses.saveOrUpdate(cc);
			           
			          
			            tx.commit();
			    } 
				catch (Exception e) 
				{
			            if (tx != null) 
			            {
			                tx.rollback();
			            }
			            e.printStackTrace();
			    } 
				finally 
				{
			            ses.close();
			    }
				return 0;
		
	}
	
	@SuppressWarnings("unchecked")
	public List<CreateClass> getClassList() throws IOException, SQLException
	{
		Session session = sf.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from CreateClass");
		ccList =(List<CreateClass>) query.list();
		session.getTransaction().commit();
		session.close();
		return ccList;
	}
}
