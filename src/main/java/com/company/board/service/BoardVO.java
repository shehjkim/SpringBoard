package com.company.board.service;

import lombok.Data;

@Data
public class BoardVO {		//vo는 

	private String seq;
	private String title;
	private String writer;
	private String content;
	private String filename;
}
