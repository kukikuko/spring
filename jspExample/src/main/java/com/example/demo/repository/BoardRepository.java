package com.example.demo.repository;

import java.util.List;

import com.example.demo.domain.Board;

public interface BoardRepository {
	
	public List<Board> selectAll();
	
	public Board insert(Board board);
	
	public List<Board> search(Board board);

}
