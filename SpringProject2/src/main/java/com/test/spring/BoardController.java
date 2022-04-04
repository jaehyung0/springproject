package com.test.spring;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	
	//테스트 + 템플릿 + list 
		@GetMapping("/login")
		public String login(String id, HttpSession session) {
			session.setAttribute("id", id);
			return "redirect:/pmain";
		}
	
	//테스트 + 템플릿 + list 
	@GetMapping("/pmain")
	public String pamin(Model model) {
		
		return "main.list";
	}
	
	//테스트 + 템플릿 + list 
		@GetMapping("/pmlist")
		public String pmlist(Model model) {
			
			List<BoardDTO> list = service.list();
			
			model.addAttribute("list",list);
			return "board.list";
		}
	
	@GetMapping("/add")
	public String add() {
		
		return "board.add";
	}
	
	@PostMapping("/addok")
	public String addok(BoardDTO dto, HttpSession session, HttpServletRequest req) {
		//1. 데이터 가져오기
		//2. 업무 위임
		//3. 뷰 호출
		
		int result = service.add(dto, session, req);
		
		if(result ==1) {
			return "redirect:/pmlist";
		}else {
			
			return "redirect:/add";
		}
	}
	
	@GetMapping("/view")
	public String view(String stock_seq, Model model) {
		
		BoardDTO dto = service.get(stock_seq);
		
		model.addAttribute("dto",dto);
		
		return "board.view";
	}
	
	@GetMapping("/edit")
	public String edit(String seq, Model model) {
		BoardDTO dto = service.get(seq);
		model.addAttribute("dto", dto);
		
		return "board.edit";
	}
	
	@PostMapping("/editok")
	public String editok(BoardDTO dto, HttpSession session, HttpServletRequest req) {
		//1. 데이터 가져오기
		//2. 업무 위임
		//3. 뷰 호출
		
		int result = service.edit(dto, session, req);
		
		if(result ==1) {
			return "redirect:/pmlist";
		}else {
			
			return "redirect:/add";
		}
	}
	
	@GetMapping("/del")
	public String mdel(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String stock_seq, Model model) {
		
		model.addAttribute("stock_seq", stock_seq);
		
		return "board.del";
	}
	
	
	
	@PostMapping("/delok")
	public String mdelok(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String stock_seq) {
										
		int result = service.del(stock_seq, req);
		System.out.println(stock_seq);
		System.out.println("한글");
		
		if (result == 1) {
			return "redirect:/pmlist";
		} else {
			return "redirect:/view?stock_seq=" + stock_seq;
		}
		
	}
	
}
