package com.sales.spring;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.test.spring.MainDTO;

@Service
public class SalesServiceImpl implements SalesService {

	@Autowired
	private SalesDAO dao;

	
	
	@Override
	public SalesDTO mget() {
		
		return dao.mget();
	}
	
	@Override
	public SalesDTO monthmpcget(int month) {
		
		return dao.monthmpcget(month);
	}
	@Override
	public SalesDTO monthcpcget(int month) {
		
		return dao.monthcpcget(month);
	}
	
	@Override
	public SalesDTO daympcget(int month) {
		
		return dao.daympcget(month);
	}
	@Override
	public SalesDTO daycpcget(int month) {
		
		return dao.daycpcget(month);
	}
	
	@Override
	public SalesDTO monthmpriceget(int month) {
		
		return dao.monthmpriceget(month);
	}
	@Override
	public SalesDTO monthcpriceget(int month) {
		
		return dao.monthcpriceget(month);
	}
	
	@Override
	public SalesDTO monthmpricelistget(int month) {
		
		return dao.monthmpricelistget(month);
	}
	@Override
	public SalesDTO monthcpricelistget(int month) {
		
		return dao.monthcpricelistget(month);
	}
	
	@Override
	public SalesDTO daymmealget(int month) {
		
		return dao.daymmealget(month);
	}
	@Override
	public SalesDTO daycmealget(int month) {
		
		return dao.daycmealget(month);
	}
	@Override
	public SalesDTO daymfryget(int month) {
		
		return dao.daymfryget(month);
	}
	@Override
	public SalesDTO daycfryget(int month) {
		
		return dao.daycfryget(month);
	}
	@Override
	public SalesDTO daymramenget(int month) {
		
		return dao.daymramenget(month);
	}
	@Override
	public SalesDTO daycramenget(int month) {
		
		return dao.daycramenget(month);
	}
	@Override
	public SalesDTO daymdrankget(int month) {
		
		return dao.daymdrankget(month);
	}
	@Override
	public SalesDTO daycdrankget(int month) {
		
		return dao.daycdrankget(month);
	}
	@Override
	public SalesDTO daymsnackget(int month) {
		
		return dao.daymsnackget(month);
	}
	@Override
	public SalesDTO daycsnackget(int month) {
		
		return dao.daycsnackget(month);
	}
	

	
	
	
	@Override
	public SalesDTO cget() {
		
		return dao.cget();
	}
	
	@Override
	public SalesDTO mpcget() {
		
		return dao.mpcget();
	}
	
	@Override
	public SalesDTO cpcget() {
		
		return dao.cpcget();
	}
	
	@Override
	public SalesDTO priceget() {
				
		return dao.priceget();
	}
	
	@Override
	public int salesadd(SalesDTO dto, HttpSession session, HttpServletRequest req) {

		
		return dao.salesadd(dto);
	}
	
	@Override
	public List<SalesDTO> saleslist() {
		
		List<SalesDTO> saleslist = dao.saleslist();
		
		//첨부파일 유무 처리
		
		return saleslist;
	}

	@Override
	public int salesedit(SalesDTO dto, HttpSession session, HttpServletRequest req) {
					
		return dao.salesedit(dto);
	}
	@Override
	public int salesdel(String fee_seq, HttpServletRequest req) {
		
		return dao.salesdel(fee_seq);
	}
	
	@Override
	public SalesDTO get(String fee_seq) {
		
		return dao.get(fee_seq);
	}
	

}
























