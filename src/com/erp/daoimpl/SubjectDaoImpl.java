package com.erp.daoimpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import com.erp.bean.CreateSubject;
import com.erp.bean.Student;
import com.erp.dao.SubjectDao;
import com.erp.general.MyHibernateUtill;


public class SubjectDaoImpl implements SubjectDao
{
	public int dbDirty = 1;
	// private Connection connection;
	private static SubjectDaoImpl subjectDetailsDaoImpl = new SubjectDaoImpl();
	SessionFactory sf = MyHibernateUtill.getSessionFactory();

	// ArrayList<ClassDetails>classList;

	/**
	 * @see getInstance is a static method that returns the same object every
	 *      time requested.
	 * @return personalDetails is object of type PersonalDetailsDaoImpl
	 */
	public static SubjectDaoImpl getInstance() {
		return subjectDetailsDaoImpl;
	}

	@Override
	public boolean insertsubjectDetails(CreateSubject subject) throws IOException,
			SQLException {
		// TODO Auto-generated method stub
		
		Session ses = sf.openSession();
		Transaction tx = ses.getTransaction();
		/*
		 * tx.begin(); Address add1 = new Address(); add1.setCName("ONE");
		 * return x;
		 */
		try {
			// tx = ses.getTransaction();
			tx.begin();
			System.out.println("inside daoimpl subject insert");
			ses.saveOrUpdate(subject);

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
	

	public  List<CreateSubject> getSubjectClassList() throws IOException, SQLException 
	{
		
		
		Session session = sf.openSession();
		session.beginTransaction();
		
		/*@SuppressWarnings("rawtypes")
		Query query = session.createQuery("from Student");
		stupersonList =(List<Student>) query.list();
		//stupersonList = (List<Student>) session.get(Student.class, "ABC1");
		session.getTransaction().commit();
		session.close();*/
		
		// UPDATED: Create CriteriaBuilder
	    CriteriaBuilder builder = session.getCriteriaBuilder();

	    // UPDATED: Create CriteriaQuery
	    CriteriaQuery<CreateSubject> criteria = builder.createQuery(CreateSubject.class);

	    // UPDATED: Specify criteria root
	    criteria.from(CreateSubject.class);

	    // UPDATED: Execute query
	    List<CreateSubject> cb = session.createQuery(criteria).getResultList();

	    // Close the session
	    session.close();

		return cb;
		
	}
	

}
