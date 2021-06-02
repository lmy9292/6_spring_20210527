package com.icia.board.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.board.dto.BoardDTO;
import com.icia.board.dto.PageDTO;
@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public int boardWrite(BoardDTO board) {
		return sql.insert("bd.boardwirte",board);
	}

	public List<BoardDTO> boardList() {
		return sql.selectList("bd.boardlist");
		
	}

	public void boardHits(int bnumber) {
		sql.update("bd.boardhits",bnumber);
	}
	
	public BoardDTO boardView(int bnumber) {
		return sql.selectOne("bd.boardview",bnumber);
	}

	public BoardDTO update(int bnumber) {
		return sql.selectOne("bd.boardview",bnumber);
	}

	public int updateProcess(BoardDTO board) {
		return sql.update("bd.boardupdate",board);
		
	}

	public int boardDelete(int bnumber) {
		return sql.delete("bd.boarddelete",bnumber);
	}
		
	public void boardWriteFile(BoardDTO board) {
		sql.insert("bd.boardwritefile",board);
	}

	public int listCount() {
		return sql.selectOne("bd.listcount");
	}
	
	public List<BoardDTO> boardPaging(PageDTO paging){
		return sql.selectList("bd.boardpaging", paging);
	}

	public List<BoardDTO> boardSearch(Map<String, String> searchMap) {
		return sql.selectList("bd.boardsearch",searchMap);
		
	}

	
	

	
	
}
