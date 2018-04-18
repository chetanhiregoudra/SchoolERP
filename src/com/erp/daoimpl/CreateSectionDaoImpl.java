package com.erp.daoimpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.bean.CreateSection;
import com.erp.dao.CreateSectionDao;
import com.erp.general.MyHibernateUtill;

public class CreateSectionDaoImpl implements CreateSectionDao
{
	List<CreateSection> csList=null;
	private static CreateSectionDaoImpl csd = new CreateSectionDaoImpl();
	
	SessionFactory sf = MyHibernateUtill.getSessionFactory();
	
	public static CreateSectionDaoImpl getInstance( )
	{
		return csd;
	}
	
	public int insertSection(CreateSection cs) throws IOException, SQLException
	{
		Session session = sf.openSession();
		Transaction t=session.beginTransaction();  
		session.save(cs);
		t.commit();
        session.close();  
        System.out.println("successfully saved");
		return 0;
		
	}
	
	@SuppressWarnings("unchecked")
	public List<CreateSection> getSectionList() throws IOException, SQLException
	{
		Session session = sf.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from CreateSection");
		csList =(List<CreateSection>) query.list();
		session.getTransaction().commit();
		session.close();
		
		return csList;
	}
}
