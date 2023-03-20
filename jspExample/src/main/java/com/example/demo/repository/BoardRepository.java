package com.example.demo.repository;

import java.util.List;

import com.example.demo.domain.Board;
import com.example.demo.domain.SaveTime;

public interface BoardRepository {
	
	public List<Board> selectAll();
	
	public Board insert(Board board);
	
	public List<Board> search(Board board, SaveTime savaTime);
	
	public void delete(int no);

}
