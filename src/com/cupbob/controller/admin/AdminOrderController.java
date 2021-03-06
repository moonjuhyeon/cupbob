package com.cupbob.controller.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupbob.service.IOrderService;

@Controller
public class AdminOrderController {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="OrderService")
	private IOrderService orderService;
	
	@RequestMapping(value="orderList")
	public String getOrderList(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception{
		
		log.info("orderList start");
		
		log.info("orderList end");
		return "admin/adminMain";
	}

	
	@RequestMapping(value = "orderView")
	public String orderView(HttpServletRequest request, HttpServletResponse response, Model model){
		
		log.info("order test");
		return "admin/adminMain";
	}
	@RequestMapping(value="adminChart")
	public String getChart(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception{
		
		log.info("chList start");
		
		log.info("chList end");
		return "admin/adminChart";
	}
}
