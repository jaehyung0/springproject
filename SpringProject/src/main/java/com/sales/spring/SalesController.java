package com.sales.spring;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SalesController {

	@Autowired
	private SalesService service;
	
	@GetMapping("/slist")
	public String salesmain(HttpServletRequest req, HttpSession session, HttpServletResponse resp
			,String month
			,Model model) {
		
				
		SalesDTO mdto = service.mget();
		SalesDTO cdto = service.cget();
	
		SalesDTO mpcdto = service.mpcget();
		SalesDTO cpcdto = service.cpcget();
		
		SalesDTO pricedto = service.priceget();
				
		
		model.addAttribute("mdto", mdto);
		model.addAttribute("cdto", cdto);
		
		model.addAttribute("mpcdto", mpcdto);
		model.addAttribute("cpcdto", cpcdto);
		
		model.addAttribute("pricedto", pricedto);
				
		return "sales.slist";
	}
	
	@RequestMapping(value="/slistmonth" , method = {RequestMethod.GET, RequestMethod.POST})
	public String slistmonth(HttpServletRequest req, HttpSession session, HttpServletResponse resp
			,@RequestParam("month") int month
			,Model model) {
				
		SalesDTO monthmpcdto = service.monthmpcget(month);
		SalesDTO monthcpcdto = service.monthcpcget(month);
		
		SalesDTO daympcdto = service.daympcget(month);
		SalesDTO daycpcdto = service.daycpcget(month);
		
		SalesDTO monthmpricedto = service.monthmpriceget(month);
		SalesDTO monthcpricedto = service.monthcpriceget(month);
		
		SalesDTO monthmpricelistdto = service.monthmpricelistget(month);
		SalesDTO monthcpricelistdto = service.monthcpricelistget(month);
		
		SalesDTO daymmealdto = service.daymmealget(month);
		SalesDTO daycmealdto = service.daycmealget(month);
		SalesDTO daymfrydto = service.daymfryget(month);
		SalesDTO daycfrydto = service.daycfryget(month);
		SalesDTO daymramendto = service.daymramenget(month);
		SalesDTO daycramendto = service.daycramenget(month);
		SalesDTO daymdrankdto = service.daymdrankget(month);
		SalesDTO daycdrankdto = service.daycdrankget(month);
		SalesDTO daymsnackdto = service.daymsnackget(month);
		SalesDTO daycsnackdto = service.daycsnackget(month);
		
		model.addAttribute("monthmpcdto", monthmpcdto);
		model.addAttribute("monthcpcdto", monthcpcdto);
		
		model.addAttribute("daympcdto", daympcdto);
		model.addAttribute("daycpcdto", daycpcdto);
		
		model.addAttribute("monthmpricedto", monthmpricedto);
		model.addAttribute("monthcpricedto", monthcpricedto);
		
		model.addAttribute("monthmpricelistdto", monthmpricelistdto);
		model.addAttribute("monthcpricelistdto", monthcpricelistdto);
		
		model.addAttribute("daymmealdto", daymmealdto);
		model.addAttribute("daycmealdto", daycmealdto);
		model.addAttribute("daymfrydto", daymfrydto);
		model.addAttribute("daycfrydto", daycfrydto);
		model.addAttribute("daymramendto", daymramendto);
		model.addAttribute("daycramendto", daycramendto);
		model.addAttribute("daymdrankdto", daymdrankdto);
		model.addAttribute("daycdrankdto", daycdrankdto);
		model.addAttribute("daymsnackdto", daymsnackdto);
		model.addAttribute("daycsnackdto", daycsnackdto);
		
		model.addAttribute("month", month);
		
		
		
		return "sales.slistmonth";
		//return "test";
		//return "sales.slistmonth1";
	}
//	@RequestMapping(value="/slistmonth" , method = {RequestMethod.GET, RequestMethod.POST})
//	@ResponseBody
//	public SalesDTO slistmonth(HttpServletRequest req, HttpSession session, HttpServletResponse resp
//			,@RequestParam("month") String month
//			,Model model) {
//		
//		System.out.println("month:" + month);
//		
//		SalesDTO mdto = service.mget1(month);
//		
//		//model.addAttribute("mdto", mdto);
//
//		System.out.println(mdto);
//		
//		
//		return mdto;
//		//return "test";
//		//return "sales.slistmonth1";
//	}
	
	@GetMapping("/salesadd")
	public String salesadd(HttpServletRequest req, HttpSession session, HttpServletResponse resp,String fee_seq,Model model) {
		
		List<SalesDTO> saleslist = service.saleslist();
		
		model.addAttribute("saleslist", saleslist);
			
		return "sales.salesadd";
	}
	
	@PostMapping("/salesaddok")
	public String salesaddok(HttpServletRequest req, HttpSession session, HttpServletResponse resp, SalesDTO dto) {
		
		//1. 데이터 가져오기
		//2. 업무 위임
		//3. 뷰 호출
								
		int result = service.salesadd(dto, session, req);
		
		if (result == 1) {
			return "redirect:/salesadd";
		} else {
			return "redirect:/salesadd";
		}
		
		
	}
	
	@GetMapping("/salesedit")
	public String salesedit(HttpServletRequest req, HttpSession session, HttpServletResponse resp,String fee_seq,Model model) {
		
		SalesDTO dto = service.get(fee_seq);
		
		model.addAttribute("dto", dto);	
		
		return "sales.salesedit";
	}
	
	@PostMapping("/saleseditok")
	public String saleseditok(HttpServletRequest req, HttpSession session, HttpServletResponse resp, SalesDTO dto) {
										
		int result = service.salesedit(dto, session, req);
		
		if (result == 1) {
			return "redirect:/salesadd";
		} else {
			return "redirect:/salesadd";
		}
		
		
	}
	@PostMapping("/salesdelok")
	public String salesdelok(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String fee_seq) {
										
		int result = service.salesdel(fee_seq, req);
		
		if (result == 1) {
			return "redirect:/salesadd";
		} else {
			return "redirect:/salesadd";
		}
		
		
	}
	
	
	
}
