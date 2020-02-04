package com.atos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.atos.model.Request;
import com.atos.model.RequestDao;


@Controller
public class RequestController {
	@Autowired
	RequestDao dao;  // will inject dao from XML file

	/*
	 * "command" is a reserved request attribute
	 *  which is used to display object data into form
	 */
	@RequestMapping("/requestform")
	public String showform(Model m) {
		m.addAttribute("command", new Request());
		return "requestform";
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("req") Request req) {
		dao.save(req);
		return "redirect:/viewrequest";
	}
	/* It provides list of employees in model object */
	@RequestMapping("/viewrequest")
	public String viewrequest(Model m) {
		List<Request> list = dao.getRequests();
		m.addAttribute("list", list);
		return "viewrequest";
	}
	@RequestMapping(value="/edit/{id}")
	public String edit(@PathVariable int id,Model m) {
		Request req=dao.getRequestById(id);
		m.addAttribute("command",req);
		return "edit";
	}

	
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("req") Request req) {
		dao.update(req);
		return "redirect:/viewrequest";
	}
	@RequestMapping(value="/deletereq/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		dao.delete(id);
		return "redirect:/viewrequest";
	}

	



}
