package com.erp.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.erp.bean.Route;
import com.erp.bean.Vechile;

public interface VechileDetailsDao 
{
	public boolean insertvechileDetails(Vechile vechile) throws IOException,
	SQLException;

	public boolean insertrouteDetails(Route route) throws IOException,
	SQLException;
	
	public List<Vechile> getVechiledetailsList() throws IOException, SQLException;
	
	public List<Route> getRoutedetailsList() throws IOException, SQLException;
}