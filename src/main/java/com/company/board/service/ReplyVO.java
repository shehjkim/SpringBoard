package com.company.board.service;

import lombok.Data;

@Data
public class ReplyVO {

	String seq;			//댓글번호	 
	String content;		//댓글내용
	String board_seq;	//게시글 번호
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(String board_seq) {
		this.board_seq = board_seq;
	}
	
	
	
}
