package com.sales.spring;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.test.spring.MainDTO;

public interface SalesService {

	
	
	SalesDTO mget();
	
	//월 pc 이용요금
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

	int salesadd(SalesDTO dto, HttpSession session, HttpServletRequest req);

	List<SalesDTO> saleslist();

	int salesedit(SalesDTO dto, HttpSession session, HttpServletRequest req);
	
	int salesdel(String fee_seq, HttpServletRequest req);

	SalesDTO get(String fee_seq);

	


	

	








	

	
	
	
	

	



	

	

	
}
