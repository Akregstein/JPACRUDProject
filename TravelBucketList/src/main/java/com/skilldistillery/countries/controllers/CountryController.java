package com.skilldistillery.countries.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.countries.data.CountryDAO;
import com.skilldistillery.countries.entities.Country;

@Controller
public class CountryController {

	@Autowired
	private CountryDAO dao;
	
	@RequestMapping(path= {"/","home.do"} )
	public String home(Model model) {
	//	List<> countries = dao.find
	//	model.addAttribute("", dao.findById(3));
		
		return "home";
	}
	@RequestMapping(path = "addCountry.do", method = RequestMethod.POST)
	public ModelAndView addCountry(Country country, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		
		dao.addCountry(country);
		redir.addFlashAttribute("country", country);
		mv.setViewName("redirect:countryAdded.do");
		return mv;

	}
	@RequestMapping(path = "add.do")
	public ModelAndView add(Country country) {
		ModelAndView mv = new ModelAndView();
		
		
		mv.setViewName("addcountry");
		return mv;
		
	}
	@RequestMapping(path = "deleteCountry.do", method = RequestMethod.POST)
	public ModelAndView deleteCountry(Country country, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		
		dao.deleteCountry(country);
		redir.addFlashAttribute("country", country);
		mv.setViewName("redirect:countryDeleted.do");
		return mv;
		
	}
	@RequestMapping(path = "delete.do")
	public ModelAndView delete(Country country, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		
		
		mv.setViewName("delete");
		return mv;
		
	}
	@RequestMapping(path = "search.do")
	public ModelAndView search(Country country, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		
		
		mv.setViewName("search");
		return mv;
		
	}
	@RequestMapping(path = "countryAdded.do", method = RequestMethod.GET)
	public ModelAndView addCountry(Country country) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("show");
		return mv;

	}
	
	
//	@RequestMapping(path = "countryAdded.do", method = RequestMethod.POST)
}
