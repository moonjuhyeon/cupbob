package com.cupbob.controller.user;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;

import com.cupbob.service.ICommentService;

@Controller
public class CommnetController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="CommentService")
	private ICommentService commentService;
}
