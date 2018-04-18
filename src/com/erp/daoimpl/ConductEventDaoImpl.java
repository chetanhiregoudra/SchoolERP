package com.erp.daoimpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.erp.bean.ConductEvent;


import com.erp.dao.ConductEventDao;
import com.erp.general.MyHibernateUtill;

public class ConductEventDaoImpl implements ConductEventDao
{
	private static ConductEventDaoImpl events = new ConductEventDaoImpl( );
	List<ConductEvent> eList=null;
	SessionFactory sf = MyHibernateUtill.getSessionFactory();
	
	public static ConductEventDaoImpl getInstance( )
	{
		return events;
	}
	@SuppressWarnings("unchecked")
	public List<ConductEvent> getEventsList() throws IOException, SQLException
	{
		Session session = sf.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from ConductEvent");
		eList =(List<ConductEvent>) query.list();
		//stupersonList = (List<Student>) session.get(Student.class, "ABC1");
		session.getTransaction().commit();
		session.close();
		return eList;
	}
	
}
