package com.atos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;


import com.atos.model.Request;
import com.atos.model.RequestDao;


@Controller
public class RequestController {
	@Autowired
	RequestDao dao;  // will inject dao from XML file
	

	@RequestMapping("/viewrequest")
	public String viewrequest(Model m) {
		List<Request> list = dao.getRequests();
		m.addAttribute("list", list);
		return "viewrequest";
	}
	
}
