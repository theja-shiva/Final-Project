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
import com.atos.model.RegistrationDao;

@Controller
public class RegistrationController {
	@Autowired
	RegistrationDao abc;  // will inject dao from XML file

	/*
	 * " command" is a reserved request attribute
	 *  which is used to display object data into form
	 */
	@RequestMapping("/registration")
	public String showform(Model v) {
		v.addAttribute("command", new Registration());
		return "registration";
	}

	
	@RequestMapping(value = "/save1", method = RequestMethod.POST)
	public String save1(@ModelAttribute("registration01") Registration reg) {
			abc.save1(reg);
		
			return "redirect:/viewreg";

	}
			

	@RequestMapping("/viewreg")
	public String viewreg(Model n) {
		List<Registration> list = abc.getRegistration();
		n.addAttribute("list", list);
		return "viewreg";
	}
//	@RequestMapping("/PM")
//	public String showform1(Model m) {
//		m.addAttribute("command", new Registration());
//		return "PM";
//	}
	@RequestMapping("projm")
		public String viewpm()
		{
			return "PM";
		}
	@RequestMapping("ld")
	public String viewld()
	{
		return "L&D";
	}
	@RequestMapping("ex")
	public String viewex()
	{
		return "EX";
	}
	@RequestMapping("ab")
	public String viewab()
	{
		return "About";
	}
	@RequestMapping("con")
	public String viewcon()
	{
		return "Contact";
	}
	@RequestMapping("log")
	public String viewlog()
	{
		return "login";
	}
	@RequestMapping("home")
	public String viewhome()
	{
		return "index";
	}
}
