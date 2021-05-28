package com.icia.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.board.dto.BoardDTO;
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
		return sql.selectOne("bd.boardupdate",bnumber);
	}
		

	
	

	
	
}
