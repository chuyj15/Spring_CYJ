package com.joeun.test.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Board {

	private int boardNo;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private Date updDate;
	private int views; //조회수
	
	public Board() {
		
	}

	public Board(String title, String writer, String content) {
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	
}
