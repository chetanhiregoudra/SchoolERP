package com.erp.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


import com.erp.bean.CreateSection;

public interface CreateSectionDao 
{
	public int insertSection(CreateSection cs) throws IOException, SQLException ;
	
	public List<CreateSection> getSectionList() throws IOException, SQLException ;
}
