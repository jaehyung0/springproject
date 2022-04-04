package com.sales.spring;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.spring.MainDTO;

@Repository
public class SalesDAOImpl implements SalesDAO {

	@Autowired
	private SqlSessionTemplate template;
	

	
	@Override
	public SalesDTO mget() {
		
		return template.selectOne("sales.mget");
	}
	
	@Override
	public SalesDTO monthmpcget(int month) {

		return template.selectOne("sales.monthmpcget",month);
	}
	@Override
	public SalesDTO monthcpcget(int month) {

		return template.selectOne("sales.monthcpcget",month);
	}
	
	@Override
	public SalesDTO daympcget(int month) {

		return template.selectOne("sales.daympcget",month);
	}
	@Override
	public SalesDTO daycpcget(int month) {

		return template.selectOne("sales.daycpcget",month);
	}
		
	@Override
	public SalesDTO monthmpriceget(int month) {

		return template.selectOne("sales.monthmpriceget",month);
	}
	@Override
	public SalesDTO monthcpriceget(int month) {

		return template.selectOne("sales.monthcpriceget",month);
	}
	
	
	@Override
	public SalesDTO monthmpricelistget(int month) {

		return template.selectOne("sales.monthmpricelistget",month);
	}
	@Override
	public SalesDTO monthcpricelistget(int month) {

		return template.selectOne("sales.monthcpricelistget",month);
	}
	
	@Override
	public SalesDTO daymmealget(int month) {

		return template.selectOne("sales.daymmealget",month);
	}
	@Override
	public SalesDTO daycmealget(int month) {

		return template.selectOne("sales.daycmealget",month);
	}
	@Override
	public SalesDTO daymfryget(int month) {

		return template.selectOne("sales.daymfryget",month);
	}
	@Override
	public SalesDTO daycfryget(int month) {

		return template.selectOne("sales.daycfryget",month);
	}
	@Override
	public SalesDTO daymramenget(int month) {

		return template.selectOne("sales.daymramenget",month);
	}
	@Override
	public SalesDTO daycramenget(int month) {

		return template.selectOne("sales.daycramenget",month);
	}
	@Override
	public SalesDTO daymdrankget(int month) {

		return template.selectOne("sales.daymdrankget",month);
	}
	@Override
	public SalesDTO daycdrankget(int month) {

		return template.selectOne("sales.daycdrankget",month);
	}
	@Override
	public SalesDTO daymsnackget(int month) {

		return template.selectOne("sales.daymsnackget",month);
	}
	@Override
	public SalesDTO daycsnackget(int month) {

		return template.selectOne("sales.daycsnackget",month);
	}
	

//	@Override
//	public SalesDTO mget1(String month) {
//		System.out.println("month > " + month);
//		SalesDTO dto = template.selectOne("sales.mget1",month);
//		System.out.println("dto > " + dto);
//		return dto;
//	}
	
	
	@Override
	public SalesDTO cget() {
		
		return template.selectOne("sales.cget");
	}
	
	@Override
	public SalesDTO mpcget() {
		
		return template.selectOne("sales.mpcget");
	}
	
	@Override
	public SalesDTO cpcget() {
		
		return template.selectOne("sales.cpcget");
	}
	
	@Override
	public SalesDTO priceget() {
		
		return template.selectOne("sales.priceget");
	}
	
	@Override
	public int salesadd(SalesDTO dto) {
		
		return template.insert("sales.salesadd", dto);
	}
	
	@Override
	public List<SalesDTO> saleslist() {
		
		return template.selectList("sales.saleslist");
	}
	
	@Override
	public int salesdel(String fee_seq) {
		
		return template.delete("sales.salesdel", fee_seq);
	}
	
	@Override
	public int salesedit(SalesDTO dto) {
		
		return template.update("sales.salesedit", dto);
	}
	
	@Override
	public SalesDTO get(String fee_seq) {
		
		return template.selectOne("sales.get", fee_seq);
	}
	
	
}





















