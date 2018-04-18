package com.erp.daoimpl;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.erp.bean.School;
import com.erp.dao.ConfigDao;

public class ConfigDaoImpl implements ConfigDao {
	
	private static ConfigDaoImpl config = new ConfigDaoImpl( );
	School school = new School();
	String Addr = "";
	
	HashMap<String, String> subjectMap = new HashMap<String, String>();
	HashMap<String, String> sectionMap = new HashMap<String, String>();
	HashMap<String, String> optionalsubMap = new HashMap<String, String>();
	Map<String, List<String>> map = new HashMap<String, List<String>>();
	public static ConfigDaoImpl getInstance( )
	{
		return config;
	}
	@Override
	public void load_Config() 
	{
		// TODO Auto-generated method stub
		try
		{
		File fXmlFile = new File("D:/workspace/SchoolHibernate/WebContent/WEB-INF/NewFile.xml");
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		Document doc = dBuilder.parse(fXmlFile);
		//optional, but recommended
		//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
		doc.getDocumentElement().normalize();
		System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
		NodeList nList = doc.getElementsByTagName("school");
		System.out.println("----------------------------");
		System.out.println(nList.getLength()+"dsvjvuhuhnuvhseu");
		for (int temp = 0; temp < nList.getLength(); temp++)
		{
			Node nNode = nList.item(temp);
			System.out.println("\nCurrent Element :" + nNode.getNodeName());
			if (nNode.getNodeType() == Node.ELEMENT_NODE) 
			{
				Element eElement = (Element) nNode;
				school.setSchoolName( eElement.getElementsByTagName("School_name").item(0).getTextContent());
				Addr = eElement.getElementsByTagName("Address").item(0).getTextContent();
				school.setAddress(Addr);
				System.out.println("----------------------------School Name::" +eElement.getElementsByTagName("School_name").item(0).getTextContent());
				System.out.println("School Address :" +Addr);
			}
		}
		//School_Type
		NodeList nList1 = doc.getElementsByTagName("TypeOne");
		System.out.println("----------------------------TypeOne Type");
		System.out.println(nList1.getLength()+"TypeOne");
		for (int temp = 0; temp < nList1.getLength(); temp++)
		{
			Node nNode1 = nList1.item(temp);
			System.out.println("\nCurrent Element :" + nNode1.getNodeName());
			if (nNode1.getNodeType() == Node.ELEMENT_NODE) 
			{
				
				Element eElement = (Element) nNode1;
				System.out.println("School type : " + eElement.getAttribute("Clsvlaue"));
				System.out.println("Max Number  Nursary Students : " + eElement.getElementsByTagName("MaxNumber_Nursarystudents").item(0).getTextContent());
				//System.out.println("Last Name : " + eElement.getElementsByTagName("lastname").item(0).getTextContent());
				System.out.println("Class  : " + eElement.getAttribute("name"));
			}
			
			NodeList nList2 = doc.getElementsByTagName("class1");
			System.out.println("----------------------------class1 Type");
			System.out.println(nList2.getLength()+"class1");
			for (int temp1 = 0; temp1 < nList2.getLength(); temp1++)
			{
				Node nNode2 = nList2.item(temp1);
				System.out.println("\nCurrent Element :" + nNode2.getNodeName());
				if (nNode2.getNodeType() == Node.ELEMENT_NODE) 
				{
					
					Element eElement = (Element) nNode2;
					//System.out.println("School type : " + eElement.getAttribute("Clsvlaue"));
					System.out.println("Number of subjects : " + eElement.getElementsByTagName("total_subject").item(0).getTextContent());
					System.out.println("Max Number  LKG Students : " + eElement.getElementsByTagName("MaxNumber_NursaryLkgStudent").item(0).getTextContent());
					System.out.println("Max Number  MaxNumber_NursaryLkgSection : " + eElement.getElementsByTagName("MaxNumber_NursaryLkgSection").item(0).getTextContent());
					System.out.println("Class  : " + eElement.getAttribute("name"));
				}
			}
			
			NodeList nList3 = doc.getElementsByTagName("Manatory_sub");
			System.out.println("----------------------------Manatory_sub Type");
			System.out.println(nList3.getLength()+"Manatory_sub");
			for (int temp2 = 0; temp2 < nList3.getLength(); temp2++)
			{
				Node nNode3 = nList3.item(temp2);
				System.out.println("\nCurrent Element :" + nNode3.getNodeName());
				if (nNode3.getNodeType() == Node.ELEMENT_NODE) 
				{
					NodeList childList = nList3.item(temp2).getChildNodes();
					for (int j = 0; j < childList.getLength(); j++)
					{
						Node childNode = childList.item(j);
						if ("sub".equals(childNode.getNodeName())) 
						{
							//System.out.println(childList.item(j).getAttributes().getNamedItem("severity").getNodeValue());
							//System.out.println(childList.item(j).getTextContent().trim());
							//departments.add(childList.item(j).getTextContent().trim());
							subjectMap.put(childList.item(j).getTextContent().trim(),childList.item(j).getAttributes().getNamedItem("cls").getNodeValue());
							System.out.println("map" +subjectMap);
						}
					}
						
					school.setSubjectList(subjectMap);
				}
			}
			
			//Optional subject
			
			NodeList nList5 = doc.getElementsByTagName("optional_subject");
			System.out.println("----------------------------optional_subject Type");
			System.out.println(nList5.getLength()+"optional_subject");
			for (int temp5 = 0; temp5 < nList5.getLength(); temp5++)
			{
				Node nNode5 = nList5.item(temp5);
				System.out.println("\nCurrent Element :" + nNode5.getNodeName());
				if (nNode5.getNodeType() == Node.ELEMENT_NODE) 
				{
					NodeList childList = nList5.item(temp5).getChildNodes();
					for (int j = 0; j < childList.getLength(); j++)
					{
						Node childNode = childList.item(j);
						if ("sub".equals(childNode.getNodeName())) 
						{
							//System.out.println(childList.item(j).getAttributes().getNamedItem("severity").getNodeValue());
							//System.out.println(childList.item(j).getTextContent().trim());
							//departments.add(childList.item(j).getTextContent().trim());
							optionalsubMap.put(childList.item(j).getTextContent().trim(),childList.item(j).getAttributes().getNamedItem("cls").getNodeValue());
							System.out.println("map" +optionalsubMap);
						}
					}
						
					
				}
			}
			
			NodeList nList4 = doc.getElementsByTagName("sections");
			System.out.println("sections length :" +nList4.getLength()+"\n");
			
			for (int temp3 = 0; temp3 < nList4.getLength(); temp3++)
			{
				
				Node nNode4 = nList4.item(temp3);
				
				System.out.println("Current Element :" + nNode4.getNodeName()+"bahah: "+nNode4.getNodeType()+"\n" );
				if (nNode4.getNodeType() == Node.ELEMENT_NODE) 
				{
					NodeList childList = nList4.item(temp3).getChildNodes();
					System.out.println("Current Sub Element :" + childList.getLength()+"\n");
					for (int j = 0; j < childList.getLength(); j++)
					{
						
						
						Node childNode = childList.item(j);
						System.out.println("childnode  Element :" + childNode.getNodeName()+"\n");
						if ("section".equals(childNode.getNodeName())) 
						{
							
							sectionMap.put(childList.item(j).getTextContent().trim(),childList.item(j).getAttributes().getNamedItem("cls").getNodeValue());
							System.out.println("map" +sectionMap);
							
						}
						
					}
					school.setClassList(sectionMap);	
					
				}
				
			}
			
			
			
			
		}
		
		}
		catch (Exception e) 
		{	
			e.printStackTrace();
		}

	}
	public School getReady()
	{
		return school;
	}

}