package com.atos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;

import com.atos.model.TrainerDao;
import com.atos.model.TrainerDetails;

@Controller
public class TrainerController {
	@Autowired
	TrainerDao dao1;

	/*
	 * @RequestMapping("/trainerform") public String showform(Model m) {
	 * m.addAttribute("command", new TrainerDetails()); return "trainerform"; }
	 * 
	 * @RequestMapping(value = "/save", method = RequestMethod.POST) public String
	 * save(@ModelAttribute("req") TrainerDetails req) { dao1.save(req); return
	 * "redirect:/viewlist"; }
	 */

	@RequestMapping("/viewlist")
	public String viewlist(Model m) {
		List<TrainerDetails> list = dao1.getRequests();
		m.addAttribute("list", list);
		return "viewlist";
	}

	/*
	 * @RequestMapping(value="/edittrainer/{tid}") public String edit(@PathVariable
	 * int tid,Model m) { TrainerDetails req=dao1.getRequestById(tid);
	 * m.addAttribute("command",req); return "edittrainer"; }
	 *
	 * @RequestMapping(value = "/editsave", method = RequestMethod.POST) public
	 * String editsave(@ModelAttribute("req") TrainerDetails req) {
	 * dao1.update(req); return "redirect:/viewlist"; }
	 * 
	 * 
	 * @RequestMapping(value="/delete/{id}",method=RequestMethod.GET) public String
	 * delete(@PathVariable int tid) { dao.delete(tid); return "redirect:/viewlist";
	 * }
	 */

}
