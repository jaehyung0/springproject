package com.test.spring;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAOImpl implements MainDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	@Override
	public List<MainDTO> list(int seq) {
		return template.selectList("main.list",seq);
	}

	@Override
	public List<MainDTO> infolist() {
		
		return template.selectList("main.infolist");
	}

	@Override
	public MainDTO sget(String date) {
		
		return template.selectOne("main.sget",date);
	}

	@Override
	public MainDTO tget(String date) {
		return template.selectOne("main.tget",date);
	}

	@Override
	public MainDTO mget(String date) {
		return template.selectOne("main.mget",date);
	}

	@Override
	public MainDTO pget(String date1) {
		return template.selectOne("main.pget",date1);
	}

	@Override
	public List<MainDTO> mlist() {
		return template.selectList("main.mlist");
	}

	
	//ajax
	@Override
	public int memberadd(MainDTO dto) {
		return template.insert("main.memberadd",dto);
	}
/*
	@Override
	public int medit(MainDTO dto) {
		return template.update("main.medit",dto);
	}

	@Override
	public int mdel(String member_id) {
		return template.delete("main.mdel",member_id);
	}

	@Override
	public List<MainDTO> msearch(String word) {
		return template.selectList("main.msearch",word);
	}
*/

	@Override
	public MainDTO atget(String date1) {
		return template.selectOne("main.atget",date1);
	}

	@Override
	public MainDTO pfget(String date1) {
		return template.selectOne("main.pfget",date1);
	}
}
