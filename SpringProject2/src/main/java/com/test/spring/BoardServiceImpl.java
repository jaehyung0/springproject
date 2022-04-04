package com.test.spring;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO dao;

	
	  @Override public int add(BoardDTO dto, HttpSession session,
	  HttpServletRequest req) {
	  
			/*
			 * dto.setId(session.getAttribute("id").toString());
			 */
	  
	  MultipartHttpServletRequest multi = (MultipartHttpServletRequest)req;
	  
	  MultipartFile file = multi.getFile("attach");
	  
	  String path = req.getRealPath("/resources/image"); System.out.println(path);
	  
	  if(!file.isEmpty()) { 
		  String filename = file.getOriginalFilename();
	  
	  
	  filename = getFileName(path, filename); dto.setStock_img(filename);
	  
	  try { File mfile = new File(path+"\\"+filename); file.transferTo(mfile); }
	  catch (Exception e) { e.printStackTrace(); } }
	 
	  return dao.add(dto); }
	 

	private String getFileName(String path, String filename) {

		int n = 1;
		int index = filename.lastIndexOf(".");
		String tempName = filename.substring(0, index);
		String tempExt = filename.substring(index);

		while (true) {

			File file = new File(path + "\\" + filename);

			if (file.exists()) {
				filename = tempName + "_" + n + tempExt;
				n++;
			} else {
				return filename;
			}
		}

	}

	@Override
	public List<BoardDTO> list() {
		List<BoardDTO> list = dao.list();

		return list;
	}

	@Override
	public BoardDTO get(String stock_seq) {
		return dao.get(stock_seq);
	}

	@Override
	public int edit(BoardDTO dto, HttpSession session, HttpServletRequest req) {

		/* dto.setId(session.getAttribute("id").toString()); */

		MultipartHttpServletRequest multi = (MultipartHttpServletRequest) req;

		MultipartFile file = multi.getFile("attach");

		String path = req.getRealPath("/resources/image");
		System.out.println(path);

		BoardDTO mdto = dao.get(dto.getStock_seq());
		dto.setStock_img(mdto.getStock_img());

		if (!file.isEmpty()) {
			if (mdto.getStock_img() != null) {
				File delfile = new File(path + "\\" + mdto.getStock_img());
				delfile.delete();
			} else {

			}

			String filename = file.getOriginalFilename();
			dto.setStock_img(file.getOriginalFilename());

			filename = getFileName(path, filename);
			dto.setStock_img(filename);

			try {
				File mfile = new File(path + "\\" + filename);
				file.transferTo(mfile);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return dao.edit(dto);
	}
	
	@Override
	public int del(String stock_seq, HttpServletRequest req) {
		
		//첨부파일 삭제
		BoardDTO dto = dao.get(stock_seq);
		
		String path = req.getRealPath("/resources/image");
		System.out.println(path);
		
		File file = new File(path + "\\" + dto.getStock_img());
		file.delete();//첨부 파일 삭제
		
		return dao.del(stock_seq);
	}
}
