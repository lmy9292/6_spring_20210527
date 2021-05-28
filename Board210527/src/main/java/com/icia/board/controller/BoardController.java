package com.icia.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.board.dto.BoardDTO;
import com.icia.board.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService bs;
	
	private ModelAndView mav;
	//글쓰기 화면을 띄우는 메소드
	@RequestMapping(value="/writepage")
	public String writepage() {
		System.out.println("여기가 맞습니다");
		return "boardwrite";
	}
	//글쓰기 처리를 하는 메소드
	@RequestMapping(value="/boardwrite")
	public ModelAndView boardWrite(@ModelAttribute BoardDTO board) {
		mav = bs.boardWrite(board);
		return mav;
	}
	//글목록
	@RequestMapping(value="/boardlist")
	public ModelAndView boardList() {
		mav = bs.boardList();
		return mav;
	}
	//글조회
	@RequestMapping(value="/boardview")
	public ModelAndView boardView(@RequestParam("bnumber")int bnumber) {
		mav=bs.boardView(bnumber);
		return mav;
	}
	
	//수정 요청 메소드
	@RequestMapping(value="/boardupdate")
	public ModelAndView update(@RequestParam("bnumber")int bnumber) {
		mav=bs.update(bnumber);
		return mav;
	}
	//수정
	@RequestMapping(value="/updateprocess")
	public ModelAndView updateProcess(@ModelAttribute BoardDTO board) {
		mav=bs.updateProcess(board);
		return mav;
	}
}
