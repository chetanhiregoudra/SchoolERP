package com.erp.daoimpl;

import java.io.*;
//import java.sql.*;
// import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.w3c.dom.*;

import com.erp.bean.XMLClasses;
import com.erp.general.MyHibernateUtill;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.xml.parsers.*;

public class InsertXMLData 
{
	SessionFactory sf = MyHibernateUtill.getSessionFactory();
	private static InsertXMLData insData = new InsertXMLData( );
	
	public static InsertXMLData getInstance( )
	{
		return insData;
	}
	
	public void load_data()
	{
		Session session = sf.openSession();
		session.beginTransaction();
		
		// UPDATED: Create CriteriaBuilder
	    CriteriaBuilder builder = session.getCriteriaBuilder();

	    // UPDATED: Create CriteriaQuery
	    CriteriaQuery<XMLClasses> criteria = builder.createQuery(XMLClasses.class);

	    // UPDATED: Specify criteria root
	    criteria.from(XMLClasses.class);

	    // UPDATED: Execute query
	    List<XMLClasses> xmlData = session.createQuery(criteria).getResultList();

	    // Close the session
	    session.close();
	    if(xmlData.isEmpty())
	    {
	    	try {
				
					//Class.forName("com.mysql.jdbc.Driver");
					//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "root");
					//Statement st=con.createStatement();
					DocumentBuilderFactory docBuilderFactory = DocumentBuilderFactory.newInstance();
					DocumentBuilder docBuilder = docBuilderFactory.newDocumentBuilder();
					Document doc = docBuilder.parse (new File("D:\\workspace\\SchoolHibernate\\WebContent\\WEB-INF\\sss.xml"));
					doc.getDocumentElement().normalize();
					System.out.println ("Root element of the doc is " + doc.getDocumentElement().getNodeName());
					NodeList listOfPersons = doc.getElementsByTagName("class");
					for(int s=0; s<listOfPersons.getLength(); s++)
					{
						Node firstPersonNode = listOfPersons.item(s);
						if(firstPersonNode.getNodeType() == Node.ELEMENT_NODE)
						{
							Element firstPersonElement = (Element)firstPersonNode;
							NodeList nameList = firstPersonElement.getElementsByTagName("className");
							Element nameElement =(Element)nameList.item(0);
			
							NodeList textFNList = nameElement.getChildNodes();
							String name=((Node)textFNList.item(0)).getNodeValue().trim();
			
							NodeList addressList = firstPersonElement.getElementsByTagName("section");
							Element addressElement =(Element)addressList.item(0);
			
							NodeList textLNList = addressElement.getChildNodes();
							String address= ((Node)textLNList.item(0)).getNodeValue().trim();
							
							NodeList addressList1 = firstPersonElement.getElementsByTagName("sub");
							Element addressElement1 =(Element)addressList1.item(0);
			
							NodeList textLNList1 = addressElement1.getChildNodes();
							String address1= ((Node)textLNList1.item(0)).getNodeValue().trim();
							
							NodeList addressList2 = firstPersonElement.getElementsByTagName("optsub");
							Element addressElement2 =(Element)addressList2.item(0);
			
							NodeList textLNList2 = addressElement2.getChildNodes();
							String address2= ((Node)textLNList2.item(0)).getNodeValue().trim();
							XMLClasses xmlcls = new XMLClasses();
							xmlcls.setClassName(name);
							xmlcls.setSecName(address);
							xmlcls.setMandSub(address1);
							xmlcls.setOptSub(address2);
							int i =insertXMLValues(xmlcls);
							//int i=st.executeUpdate("insert into xmlclasses(classname,section,subject,optsubject) values('"+name+"','"+address+"','"+address1+"','"+address2+"')");
						}
					}
						System.out.println("Data is successfully inserted!");
					
				}	
				catch (Exception err) 
				{
					System.out.println(" " + err.getMessage ());
				}
	    }
		
	}
	public int insertXMLValues(XMLClasses xmlcls)
	{
		Session ses = sf.openSession();
		Transaction tx =ses.getTransaction();  
		try
		{
			// tx = ses.getTransaction();
			tx.begin();
			System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii XMLClasses");
			ses.saveOrUpdate(xmlcls);
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
		//return true;
		return 0;
	}
	
	public List<XMLClasses> getXMLDataValues()
	{
		Session session = sf.openSession();
		session.beginTransaction();
		
		// UPDATED: Create CriteriaBuilder
	    CriteriaBuilder builder = session.getCriteriaBuilder();

	    // UPDATED: Create CriteriaQuery
	    CriteriaQuery<XMLClasses> criteria = builder.createQuery(XMLClasses.class);
	    Root<XMLClasses> c = criteria.from(XMLClasses.class);
	    criteria.groupBy(c.get("className"));
	    criteria.orderBy(builder.asc(c.get("id")));
	    // UPDATED: Specify criteria root
	    //criteria.from(XMLClasses.class);
	
	    // UPDATED: Execute query
	    List<XMLClasses> xmlData = session.createQuery(criteria).getResultList();

	    // Close the session
	    session.close();
		return xmlData;
	}
	
	public List<XMLClasses> getXMLOptionalSub()
	{
		Session session = sf.openSession();
		session.beginTransaction();
		
		// UPDATED: Create CriteriaBuilder
	    CriteriaBuilder builder = session.getCriteriaBuilder();

	    // UPDATED: Create CriteriaQuery
	    CriteriaQuery<XMLClasses> criteria = builder.createQuery(XMLClasses.class);
	    //Root<XMLClasses> c = criteria.from(XMLClasses.class);
	    //criteria.groupBy(c.get("className"));
	    //criteria.orderBy(builder.asc(c.get("id")));
	    // UPDATED: Specify criteria root
	    criteria.from(XMLClasses.class);
	
	    // UPDATED: Execute query
	    List<XMLClasses> xmlData = session.createQuery(criteria).getResultList();

	    // Close the session
	    session.close();
		return xmlData;
	}
	
}