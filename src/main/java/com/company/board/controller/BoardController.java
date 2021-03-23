package com.company.board.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.board.service.BoardVO;
import com.company.board.service.ReplyVO;
import com.company.board.service.impl.BoardMapper;

@Controller
public class BoardController {
	// 서비스
	@Autowired
	BoardMapper boardMapper; // new로 객체 새로 생성하는거 대신에 씀

	// 전체조회
	@RequestMapping("/getBoardList") // post get 헷갈리면 requestmapping
	public String getBoardList(Model model) { // 모델 결과를 출력하기 위한것?

		model.addAttribute("list", boardMapper.getBoardList());

		return "board/getBoardList";
	}

	// 단건조회
	@RequestMapping("/getBoard")		//http://localhost/getBoard?seq=1
	public String getBoard(Model model, BoardVO vo) {
		model.addAttribute("board", boardMapper.getBoard(vo));//vo를 담고 넘겨줌 
		return "board/getBoard";
	}
	
	// 댓글조회
	@RequestMapping("/getReplyList")		// reponsebody는 "[]" json구조로 바꿔줌
	public @ResponseBody List<ReplyVO> getReplyList(ReplyVO vo) { 
		return boardMapper.getReplyList(vo);
	}
	
	//
	@RequestMapping("/insertReply")		// reponsebody는 "[]" json구조로 바꿔줌
	public @ResponseBody ReplyVO inserReply(ReplyVO vo) { 
		boardMapper.insertReply(vo);
		return vo;
	}
}