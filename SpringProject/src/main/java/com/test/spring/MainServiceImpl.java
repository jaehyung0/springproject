package com.test.spring;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDAO dao;
	

	@Override
	public List<MainDTO> list(int seq) {
		List<MainDTO> list = dao.list(seq);
		
		return list;
	}


	@Override
	public List<MainDTO> infolist() {
		
		List<MainDTO> infolist = dao.infolist();
		
		return infolist;
	}


	@Override
	public MainDTO sget(String date) {
		
		return dao.sget(date);
	}


	@Override
	public MainDTO tget(String date) {
		return dao.tget(date);
	}


	@Override
	public MainDTO mget(String date) {
		return dao.mget(date);
	}


	@Override
	public MainDTO pget(String date1) {
		return dao.pget(date1);
	}


	@Override
	public List<MainDTO> mlist() {
		List<MainDTO> mlist = dao.mlist();
		
		return mlist;
	}


	@Override
	public MainDTO atget(String date1) {
		return dao.atget(date1);
	}


	@Override
	public MainDTO pfget(String date1) {
		return dao.pfget(date1);
	}


	


	

}
