package com.cupbob.controller.admin;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cupbob.dto.User_boardDTO;
import com.cupbob.service.IBoardService;

@Controller
public class AdminBoardController {
	private Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "BoardService")
	private IBoardService boardService;

	@RequestMapping(value = "adminBoardList", method = RequestMethod.GET)
	public String adminBoardList(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception {
		log.info(this.getClass() + ".adminBoardList start!!!");
		List<User_boardDTO> boardList = boardService.getBoardList();
		if (boardList == null) {
			boardList = new ArrayList<>();
		}

		log.info(boardList.size());
		model.addAttribute("boardList", boardList);
		log.info(this.getClass() + "adminBoardList end!!!");
		boardList = null;
		log.info(this.getClass() + ".adminBoardList end!!!");
		return "admin/adminBoardList";
	}

	@RequestMapping(value = "adminBoardDetail", method = RequestMethod.GET)
	public String adminBoardDetail(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception {
		log.info(this.getClass() + ".adminBoardDetail start !!");
		String bnum = req.getParameter("bnum");
		log.info("bnum : " + bnum);
		User_boardDTO bdto = new User_boardDTO();
		bdto.setPost_no(bnum);
		bdto = boardService.getBoardDetail(bdto);
		if (bdto == null) {
			bdto = new User_boardDTO();
		}
		model.addAttribute("bdto", bdto);
		bdto = null;
		log.info(this.getClass() + ".adminBoardDetail end !!");
		return "admin/adminBoardDetail";
	}

	@RequestMapping(value = "adminBoardDetailDelete", method = RequestMethod.GET)
	public String adminBoardDetailDelete(HttpServletRequest req, HttpServletResponse resp, Model model)
			throws Exception {
		log.info(this.getClass() + ".adminBoardDetailDelete start !!");
		String bnum = req.getParameter("bnum");
		log.info("bnum : " + bnum);
		User_boardDTO bdto = new User_boardDTO();
		bdto.setPost_no(bnum);
		int result = boardService.deleteBoardDetailDelete(bdto);
		String msg = "";
		String url = "";
		if (result > 0) {
			msg = "삭제되었습니다";
			url = "adminBoardList.do";
		} else {
			msg = "삭제 실패";
			url = "adminBoardDetail.do?bnum=" + bnum;
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		msg = null;
		url = null;
		bdto = null;
		log.info(this.getClass() + ".adminBoardDetailDelete end !!");
		return "admin/boardAlert";
	}

	@RequestMapping(value = "adminBoardReg", method = RequestMethod.GET)
	public String adminBoardReg(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception {
		log.info(this.getClass() + " adminBoardReg Start !! !!");

		log.info(this.getClass() + " adminBoardReg End !! !!");

		return "admin/adminBoardReg";
	}

	@RequestMapping(value = "adminBoardProc", method = RequestMethod.POST)
	public String adminBoardProc(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception {
		log.info(this.getClass() + " adminBoardProc Start !! ");
		String boardTitle = req.getParameter("board_title");
		String boardContent = req.getParameter("board_content");
		log.info("boardTitle  :  " + boardTitle);
		log.info("boardContent  :  " + boardContent);
		User_boardDTO uDTO = new User_boardDTO();

		uDTO.setTitle(boardTitle);

		boardService.insertBoard(uDTO);

		uDTO = null;

		log.info(this.getClass() + " adminBoardProc Ent !! ");

		return "redirect:adminBoardList.do";
	}
	
	@RequestMapping(value="adminBoardCheckedDelete", method = RequestMethod.POST)
	public String adminBoardCheckedDelete(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception{
		String[] del_check = req.getParameterValues("del_check");
		log.info(this.getClass() + (del_check + ""));
		User_boardDTO bdto = new User_boardDTO();
		bdto.setAllCheck(del_check);
		if(boardService.deleteAllCheck(bdto)){
			model.addAttribute("msg", "삭제 완료");
		}else{
			model.addAttribute("msg", "삭제 실패");
		}
		model.addAttribute("url", "adminBoardList.do");
		bdto = null;
		del_check = null;
		return "admin/boardAlert";
	}
}
