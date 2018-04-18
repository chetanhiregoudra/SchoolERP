package com.erp.daoimpl;

import java.util.ArrayList;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.bean.Student;
import com.erp.dao.AutoCompleteDao;
import com.erp.general.MyHibernateUtill;

public class AutoCompleteDaoImpl implements AutoCompleteDao 
{
	private static AutoCompleteDaoImpl auto = new AutoCompleteDaoImpl( );
	ArrayList<Student> list;
	
	public static AutoCompleteDaoImpl getInstance( )
	{
		return auto;
	}

	public ArrayList<Student> autoCompleteBoth(String autoComp) 
	{
		System.out.println("Data from ajax call " + autoComp); 
        list = new ArrayList<Student>();
        SessionFactory sf = MyHibernateUtill.getSessionFactory();

		Session ses = sf.openSession();
		Transaction tx = ses.getTransaction();
		// Session session = HibernateUtil.openSession();
		// Transaction tx = null;
		// String query = "";

		try {
			// tx = ses.getTransaction();
			tx.begin();
			System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"+autoComp);

			list = (ArrayList<Student>) ses.createQuery("from Student where student_id='"+autoComp+"'").list();

			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			ses.close();
		}
		return list;
	}
	

}
