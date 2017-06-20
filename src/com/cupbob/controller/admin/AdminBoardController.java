package com.cupbob.controller.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupbob.service.IBoardService;

@Controller
public class AdminBoardController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="BoardService")
	private IBoardService boardService;
	
	@RequestMapping(value="boardList")
	public String boardList(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception{
		return "admin/adminBoardList";
	}
	
}
