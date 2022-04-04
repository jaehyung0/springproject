package com.sales.spring;

import java.util.List;

import com.test.spring.MainDTO;

public interface SalesDAO {

	
	SalesDTO mget();
	SalesDTO monthmpcget(int month);
	SalesDTO monthcpcget(int month);
	
	SalesDTO daympcget(int month);
	SalesDTO daycpcget(int month);
	
	SalesDTO monthmpriceget(int month);
	SalesDTO monthcpriceget(int month);

	SalesDTO monthmpricelistget(int month);
	SalesDTO monthcpricelistget(int month);
	
	SalesDTO daymmealget(int month);
	SalesDTO daycmealget(int month);
	SalesDTO daymfryget(int month);
	SalesDTO daycfryget(int month);
	SalesDTO daymramenget(int month);
	SalesDTO daycramenget(int month);
	SalesDTO daymdrankget(int month);
	SalesDTO daycdrankget(int month);
	SalesDTO daymsnackget(int month);
	SalesDTO daycsnackget(int month);
	
	SalesDTO cget();
	
	SalesDTO mpcget();
	SalesDTO cpcget();
	
	SalesDTO priceget();

	int salesadd(SalesDTO dto);
	
	List<SalesDTO> saleslist();

	int salesdel(String fee_seq);
	
	int salesedit(SalesDTO dto);

	SalesDTO get(String fee_seq);
	
	
	
	
	
	


	
	



	

}
