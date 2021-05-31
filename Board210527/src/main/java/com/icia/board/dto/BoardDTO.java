package com.icia.board.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data //getter, setter , toString 생성자를 자동으로 만들어줌.
@Getter
@Setter
@ToString
public class BoardDTO {
	
	private int bnumber;
	private String btitle;
	private String bpassword;
	private String bwriter;
	private String bcontents;
	private String bdate;
	private int bhits;

	//파일을 담기 위한 필드(boardwrite.jsp 에서 Controller로 전달할 때)
	private MultipartFile bfile;
	//파일명을 담기 위한 필드
	private String bfilename;
	
	}
	
	
	


