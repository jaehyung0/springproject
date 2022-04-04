package com.test.spring;

import java.util.List;

public interface BoardDAO {

	int add(BoardDTO dto);

	List<BoardDTO> list();

	BoardDTO get(String stock_seq);

	int edit(BoardDTO dto);
	
	int del(String stock_seq);
	
}
