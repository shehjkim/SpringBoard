package com.company.board.service.impl;

import java.util.List;

import com.company.board.service.BoardVO;

public interface BoardMapper {
	
	public List<BoardVO> getBoardList(); //파라미터가 없기때문에 ()에 없음
			//리턴 타입이 여러개 이기때문에 list로 받아줌
	
	public BoardVO getBoard(BoardVO vo); //getBoard는 파라미터 타입이 있기때문에 ()안에 매개변수에 파라미터 타입이 들어감
						
	
}
