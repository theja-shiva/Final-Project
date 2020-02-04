package com.atos.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atos.model.Employee;
import com.atos.model.Registration;
import com.atos.model.ld;
import com.atos.model.ldDao;
@Controller
public class ldController {
	@Autowired
	ldDao qwe;  // will inject dao from XML file

	/*
	 * "command" is a reserved request attribute
	 *  which is used to display object data into form
	 */
	
	

//	@RequestMapping("ldf")
//	public String viewldf(Model f) {
//		List<ld> list = qwe.getld();
//		f.addAttribute("list", list);
//		return "ldform";
//	}
	@RequestMapping(value = "/save2", method = RequestMethod.POST)
	public String save1(@ModelAttribute("ld01") ld l) {
			qwe.save2(l);
		
			return "redirect:/ldview";

	}
	@RequestMapping("ldview")
	public String viewemp(Model h) {
		List<ld> list = qwe.getld();
		h.addAttribute("list", list);
		return "ldview";
	}
	@RequestMapping("ldf")
	public String viewld()
	{
		return "ldform";
	}
	@RequestMapping("ldv")
	public String viewld1()
	{
		return "ldview";
	}
}
