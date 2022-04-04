package com.test.spring;

import java.util.List;

public interface MainDAO {

	List<MainDTO> list(int seq);

	List<MainDTO> infolist();

	MainDTO sget(String date);

	MainDTO tget(String date);

	MainDTO mget(String date);

	MainDTO pget(String date1);

	List<MainDTO> mlist();

	
	

	MainDTO atget(String date1);

	MainDTO pfget(String date1);

	
	//ajax
		int memberadd(MainDTO dto);
	//int medit(MainDTO dto);

	//int mdel(String member_id);

	//List<MainDTO> msearch(String word);

}
