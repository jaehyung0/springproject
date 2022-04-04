package com.test.spring;

import lombok.Data;

@Data
public class MainDTO {
	
	//근무표
	private String seq;
	private String name;
	private String time;
	private String day;
	
	
	private String food;
	private String age;
	private String playtime;
	private String ordertime;
	private String daysales;
	private String totalsales;
	private String daycount;
	
	//인수인계
	private String board_seq;
	private String board_content;
	
	//인기시간대
	private String time1;
	private String time2;
	private String time3;
	private String time4;
	private String time5;
	private String time6;
	private String time7;
	private String time8;
	private String time9;
	private String time10;
	private String time11;
	private String time12;
	
	//회원정보
	private String id;
	private String gender;
	private String tel;
	private String lv;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_tel;
	private String member_age;
	private String member_gender;
	private String memberlv_seq;
	
	//평균시간
	private String avghour;
	private String avgmin;
	
	//인기음식
	private String foodname;
	
	
	
}
