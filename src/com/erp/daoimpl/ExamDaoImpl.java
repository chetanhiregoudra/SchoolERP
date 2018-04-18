package com.erp.daoimpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.bean.Exams;
import com.erp.dao.ExamDao;
import com.erp.general.MyHibernateUtill;

public class ExamDaoImpl implements ExamDao {

	private static ExamDaoImpl examDaoImpl = new ExamDaoImpl();
	SessionFactory sf = MyHibernateUtill.getSessionFactory();
	public static ExamDaoImpl getInstance() {
		return examDaoImpl;
	}

	
	@Override
	public boolean insertExamDetails(Exams exam) throws IOException, SQLException {
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
			ses.saveOrUpdate(exam);

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

	@Override
	public List<Exams> getExamList() throws IOException, SQLException {
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
	    CriteriaQuery<Exams> criteria = builder.createQuery(Exams.class);

	    // UPDATED: Specify criteria root
	    criteria.from(Exams.class);

	    // UPDATED: Execute query
	    List<Exams> cb = session.createQuery(criteria).getResultList();

	    // Close the session
	    session.close();

		return cb;
	}

}
