package com.atos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atos.model.Training;
import com.atos.model.TrainingDao;

public class TrainingController {
	
	@Autowired
	TrainingDao dao2; 
	
	@RequestMapping("/trainingform")
	public String showform(Model m) {
		m.addAttribute("command", new Training());
		return "trainingform";
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("req") Training req) {
		dao2.save(req);
		return "redirect:/viewtraininglist";
	}
	/* It provides list of employees in model object */
	@RequestMapping("/viewtraininglist")
	public String viewrequest(Model m) {
		List<Training> list = dao2.getRequests();
		m.addAttribute("list", list);
		return "viewtraininglist";
	}
	
	@RequestMapping(value="/edittraining/{tid}")
	public String edit(@PathVariable int tid,Model m) {
		Training req=dao2.getRequestById(tid);
		m.addAttribute("command",req);
		return "edittraining";
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("req") Training req) {
		dao2.update(req);
		return "redirect:/viewtraininglist";
	}
}
