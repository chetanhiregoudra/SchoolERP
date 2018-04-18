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

import com.erp.bean.Achievement;
import com.erp.bean.AttendanceDetails;
import com.erp.bean.BookBorrow;
import com.erp.bean.Document;
import com.erp.bean.ExamResult;
//import com.erp.bean.FeesDetails;
import com.erp.bean.HomeWork;
import com.erp.bean.ParentDetails;
import com.erp.bean.SMedicalDetails;
import com.erp.bean.Siblings;
import com.erp.bean.Student;
import com.erp.bean.Transportation;
import com.erp.dao.StudentDao;
import com.erp.general.MyHibernateUtill;


public class StudentDaoImpl implements StudentDao
{
	
	public int dbDirty = 1;
	
	private static StudentDaoImpl studentDetails = new StudentDaoImpl( );
	List<Student> stupersonList=null;
	List<AttendanceDetails> adList=null;
	List<ExamResult> exList=null;
	List<HomeWork> hwList=null;
	List<Transportation> tspList=null;
	List<Achievement> acheList=null;
	List<BookBorrow> bbList=null;
	List<String> achList=null;
	SessionFactory sf = MyHibernateUtill.getSessionFactory();
	
	
	/**
	* @see getInstance is a static method that returns the same object every time requested.
	* @return personalDetails is object of type PersonalDetailsDaoImpl
	*/
	public static StudentDaoImpl getInstance( )
	{
		return studentDetails;
	}

	public boolean insertStudent(Student st,ParentDetails pd,SMedicalDetails sd) throws IOException, SQLException 
	{
		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();  
		try {
	           // tx = ses.getTransaction();
	            tx.begin();
	            System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii Student");
	            ses.saveOrUpdate(st);
	            ses.saveOrUpdate(pd);
	            ses.saveOrUpdate(sd);
	            
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
	
	public boolean insertSiblings(Siblings sb) throws IOException, SQLException
	{
		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();  
		try {
	           // tx = ses.getTransaction();
	            tx.begin();
	            System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii Student");
	            ses.saveOrUpdate(sb);
	            
	            
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
	
	
	public  List<Student> getStudentList() throws IOException, SQLException 
	{
		
		
		Session session = sf.openSession();
		session.beginTransaction();
		
		// UPDATED: Create CriteriaBuilder
	    CriteriaBuilder builder = session.getCriteriaBuilder();

	    // UPDATED: Create CriteriaQuery
	    CriteriaQuery<Student> criteria = builder.createQuery(Student.class);

	    // UPDATED: Specify criteria root
	    criteria.from(Student.class);

	    // UPDATED: Execute query
	    List<Student> student = session.createQuery(criteria).getResultList();

	    // Close the session
	    session.close();

		return student;
		
	}
	
	
	public boolean insertDocuments(Document doc) throws IOException, SQLException
	{
		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();  
		try {
	           // tx = ses.getTransaction();
	            tx.begin();
	            System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii Student");
	            ses.saveOrUpdate(doc);
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
	
	
}
