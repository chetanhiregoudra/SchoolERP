package com.erp.general;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class MainClass {
	public static void main(String[] args) {
		ArrayList<Integer> ast = new ArrayList<Integer>();
	       Map<Integer, String> testMap = new HashMap<Integer, String>();
	        testMap.put(10, "a");
	        testMap.put(20, "c");
	        testMap.put(30, "c");
	        testMap.put(40, "d");
	        for (Entry<Integer, String> entry : testMap.entrySet()) {
	            if (entry.getValue().equals("c")) {
	                
	                ast.add(entry.getKey());
	            }
	        }
	        
	        for(int st:ast)
	        {
	        	System.out.println(st);
	        }
	    }
}