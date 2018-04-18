package com.erp.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.erp.bean.ConductEvent;



public interface ConductEventDao {

	public List<ConductEvent> getEventsList() throws IOException, SQLException ;
}
