package com.erp.daoimpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.bean.CreateClassTeacher;
import com.erp.bean.EmpExperience;
import com.erp.bean.Employee;
import com.erp.bean.EmployeeAccDetails;
import com.erp.dao.EmployeeDetailsDao;
import com.erp.general.MyHibernateUtill;



/**
* @see PersonalDetailsDaoImpl is a sub class that implements the PersonalDetailsDao 
* @author <a href="hh">RARO</a>.
* @version  hhh.
*/
public class EmployeeDetailsDaoImpl implements EmployeeDetailsDao 
{
	public int dbDirty = 1;
	
	private static EmployeeDetailsDaoImpl empDetails = new EmployeeDetailsDaoImpl( );
	ArrayList<Employee> empList;
	
	ArrayList<Employee> teacherList;
	
	/**
	* @see getInstance is a static method that returns the same object every time requested.
	* @return personalDetails is object of type PersonalDetailsDaoImpl
	*/
	public static EmployeeDetailsDaoImpl getInstance( )
	{
		return empDetails;
	}
/*
	
	/**
	 * @param personalDetails of type PersonalDetails
     * @see insertPersonalDetails  inserts a PersonalDetails.
     * @return returns the integer value.
	 * @throws  ClassNotFoundException  checked exception.
	 * @throws  IOException  checked exception.
	 * @throws  SQLException checked exception
     */
	public boolean insertEmpDetails(Employee employee,EmployeeAccDetails ead,EmpExperience exp) throws IOException, SQLException 
	{	
		SessionFactory sf = MyHibernateUtill.getSessionFactory();

		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();
		/*tx.begin();
		Address add1 = new Address();
		add1.setCName("ONE");
		return x;*/
		 try {
	           // tx = ses.getTransaction();
	            tx.begin();
	            System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii teacher");
	            
	            ses.saveOrUpdate(employee);
	            ses.saveOrUpdate(ead);
	          
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
	
	public boolean insertTeacherDetails (CreateClassTeacher cct) throws IOException,SQLException
	{
		SessionFactory sf = MyHibernateUtill.getSessionFactory();

		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();
		/*tx.begin();
		Address add1 = new Address();
		add1.setCName("ONE");
		return x;*/
		 try {
	           // tx = ses.getTransaction();
	            tx.begin();
	            System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii teacher");
	            
	           
	            ses.save(cct);
	          
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
	/**
     * @see getPatientList  gets all patients.

	 * @return returns the ArrayList Of type Patient.
	 * @throws  Exception .
	 
     */
	/*public  TeacherDetails getTeacherPersonalList(String id) throws IOException, SQLException
	//{
		/*PreparedStatement ps = null;
		ResultSet rs = null;
		Statement stmt = null;
		Blob image = null;
		byte[ ] imgData = null ;
		
			teacherpersonList = new ArrayList<TeacherDetails>();
			int totalRecords = 0;
		//	System.out.println(" PersonalDetails list");
			try
			{
				connection = Utill.getMySqlConnection();
				//STEP 4: Execute a query
				//	System.out.println("Creating statement...");
				stmt = connection.createStatement();
				String sql = "SELECT  * FROM teachers where teacher_id='"+id+"'";
				rs = stmt.executeQuery(sql);
				if(rs != null)
				{
					while (rs.next()) 
					{ 
						TeacherDetails teacher = new TeacherDetails();
						teacher.setTeacherId( rs.getString("teacher_id"));
						teacher.setFirstName( rs.getString("t_name"));
						
						
						teacher.setGender( rs.getString("t_gender"));
						teacher.setMobile( rs.getString("t_mobile"));
						teacher.setAddress( rs.getString("t_address"));
						
						teacher.setClassId( rs.getString("class_id"));
						teacher.setSubjectId( rs.getString("subject_id"));
						image = rs.getBlob("photo");
						imgData = image.getBytes(1,(int)image.length());
						teacher.setImg( imgData );
						
						
					
						
						//System.out.println("time:"+rs.getString("arrival_time"));
						teacherpersonList.add(teacher);
					}
				}
				
				int count = teacherpersonList.size();
				System.out.println("Number of  Objects family :  " + count);
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			finally
			{
			
			}
			dbDirty = 0;
			
			return teacherpersonList;*/
		/*SessionFactory sf = MyHibenateUtill.getSessionFactory();

		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();
		tx.begin();
		
		String hql="select e.TID, e.TEACHERNAME from Teacher e where e.ename = ''";
			Query q=ses.createQuery(hql);
			List li= q.list();
			for (Object obj : li) {
				Teacher e = (Teacher) obj;
				//Object[] ao = (Object[]) obj;
				System.out.println("Employee Id is " + e.getTid());
				System.out.println("Employee Name is " + e.getTName());
			}
			System.out.println("Employee Id is " +q);
		    tx.commit();  
		    ses.close();  
		    System.out.println("successfully saved"); 
		    sf.close();*/
			
		
	//}
	/*{*/
        
   /*}*/
	
	@SuppressWarnings("unchecked")
	public List<Employee> getEmployeeDetails() throws IOException,SQLException
	{
		SessionFactory sf = MyHibernateUtill.getSessionFactory();
		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();
		
        try {
           
            tx.begin();
            Query query = ses.createQuery("from Employee");
            empList = (ArrayList<Employee>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
        	ses.close();
        }
        return empList;
	}
	
	@SuppressWarnings("unchecked")
	public List<Employee> getTeacherDetails() throws IOException,SQLException
	{
		SessionFactory sf = MyHibernateUtill.getSessionFactory();
		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();
		
        try {
           
            tx.begin();
            Query query = ses.createQuery("from Employee where etype='Teacher'");
            teacherList = (ArrayList<Employee>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
        	ses.close();
        }
		return teacherList;
	}
	

}
