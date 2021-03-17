package com.company.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.board.service.impl.BoardMapper;

@Controller
public class BoardController {
	//서비스
	@Autowired BoardMapper boardMapper; //new로 객체 새로 생성하는거 대신에 씀 
	
	//전체조회
	
	@RequestMapping("/getBoardList") //post get 헷갈리면 requestmapping
	public String getBoardList(Model model) { //모델 결과를 출력하기 위한것?
		
		model.addAttribute("list", boardMapper.getBoardList());
		
		return "board/getBoardList";
	}
}
