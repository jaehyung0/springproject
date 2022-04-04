package com.test.spring;

import lombok.Data;

@Data
public class BoardDTO {
	/*
	 * private String seq; 
	 * private String id; 
	 * private String name; 
	 * private String subject; 
	 * private String content; 
	 * private String regdate; 
	 * private String orgfilename; 
	 * private String filename; 
	 * private String gdsThumbImg;
	 */
	
	private String stock_seq;
	private String scom_seq;
	private String stock_name;
	private String stock_l;
	private String stock_cnt;
	private String stock_img;
	private String stock_price;
}
