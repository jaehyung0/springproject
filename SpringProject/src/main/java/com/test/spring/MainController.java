package com.test.spring;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@Autowired
	private MainService service;
	
	@Autowired private MainDAO dao;
	
	@GetMapping("/list")
	public String list(HttpServletRequest req, HttpSession session, HttpServletResponse resp,Model model) {
		Calendar c1 = Calendar.getInstance();
		int seq = c1.get(Calendar.DAY_OF_WEEK);
		String date = String.format("%tF", c1);
		String date1 = String.format("%tF", c1);
		//c1.add(Calendar.DATE, 1);
		//String dateplus = String.format("%tF", c1);
		System.out.println(date1);
		date = date.replaceAll("-", "/").substring(2);
		System.out.println(date);
		//근무표
		List<MainDTO> list = service.list(seq);
		
		//인수인계표
		List<MainDTO> infolist = service.infolist();
		
		//오늘 음식주문 금액
		MainDTO sdto = service.sget(date);
		
		//오늘 시간충전 금액
		MainDTO tdto = service.tget(date);
		
		//오늘 온 손님
		MainDTO mdto = service.mget(date);
		
		//인기시간대
		MainDTO pdto = service.pget(date1);
		
		//평균 이용시간
		MainDTO atdto = service.atget(date1);
		
		//인기음식
		MainDTO pfdto = service.pfget(date1);
		
		model.addAttribute("infolist", infolist);
	
		model.addAttribute("list", list);
		
		model.addAttribute("sdto", sdto);
		
		model.addAttribute("tdto", tdto);
		
		model.addAttribute("mdto", mdto);
		
		model.addAttribute("pdto", pdto);
		
		model.addAttribute("atdto", atdto);
		
		model.addAttribute("pfdto", pfdto);
		return "main.list";
	}
	
	@GetMapping("/memberlist")
	public String memberlist(HttpServletRequest req, HttpSession session, HttpServletResponse resp,Model model) {
		
		List<MainDTO> list = service.mlist();

		model.addAttribute("list",list);
		
		return "main.memberlist";
	}
	
	
	
	
}
