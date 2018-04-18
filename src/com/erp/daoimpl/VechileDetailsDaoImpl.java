package com.erp.daoimpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.erp.bean.Route;
import com.erp.bean.Vechile;
import com.erp.dao.VechileDetailsDao;
import com.erp.general.MyHibernateUtill;

import java.io.IOException;
import java.sql.SQLException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class VechileDetailsDaoImpl implements VechileDetailsDao
{
	public int dbDirty = 1;
	private static VechileDetailsDaoImpl vechileDetails = new VechileDetailsDaoImpl( );
	//ArrayList<HomeWorkDetails>homeworkList;
	
	
	/**
	* @see getInstance is a static method that returns the same object every time requested.
	* @return personalDetails is object of type PersonalDetailsDaoImpl
	*/
	public static VechileDetailsDaoImpl getInstance( )
	{
		return vechileDetails;
	}
	@Override
	public boolean insertvechileDetails(Vechile vechile) throws IOException,
			SQLException 
	{
		SessionFactory sf = MyHibernateUtill.getSessionFactory();

		Session ses = sf.openSession();
		Transaction tx = ses.getTransaction();
		/*
		 * tx.begin(); Address add1 = new Address(); add1.setCName("ONE");
		 * return x;
		 */
		try {
			// tx = ses.getTransaction();
			tx.begin();
			System.out
					.println("Vechile jitu");
			ses.saveOrUpdate(vechile);

			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			ses.close();
		}
		return true;
		// TODO Auto-generated method stub
		
	}
	
	public boolean insertrouteDetails(Route route) throws IOException,SQLException
	{
		SessionFactory sf = MyHibernateUtill.getSessionFactory();

		Session ses = sf.openSession();
		Transaction tx = ses.getTransaction();
		/*
		 * tx.begin(); Address add1 = new Address(); add1.setCName("ONE");
		 * return x;
		 */
		try {
			// tx = ses.getTransaction();
			tx.begin();
			System.out
					.println("route jitu");
			ses.saveOrUpdate(route);

			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			ses.close();
		}
		return true;
		
	}
	
	public List<Vechile> getVechiledetailsList() throws IOException, SQLException
	{

		List<Vechile> vlist = new ArrayList<Vechile>();
		SessionFactory sf = MyHibernateUtill.getSessionFactory();

		Session ses = sf.openSession();
		Transaction tx = ses.getTransaction();
		// Session session = HibernateUtil.openSession();
		// Transaction tx = null;
		// String query = "";

		try {
			// tx = ses.getTransaction();
			tx.begin();
			System.out
					.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");

			vlist = ses.createQuery("from Vechile").list();

			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			ses.close();
		}
		return vlist;
		
	}
	
	public List<Route> getRoutedetailsList() throws IOException, SQLException
	{

		List<Route> rlist = new ArrayList<Route>();
		SessionFactory sf = MyHibernateUtill.getSessionFactory();

		Session ses = sf.openSession();
		Transaction tx = ses.getTransaction();
		// Session session = HibernateUtil.openSession();
		// Transaction tx = null;
		// String query = "";

		try {
			// tx = ses.getTransaction();
			tx.begin();
			System.out
					.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");

			rlist = ses.createQuery("from Route").list();

			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			ses.close();
		}
		return rlist;
		
		
	}

}
