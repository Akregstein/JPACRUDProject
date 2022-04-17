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
	public ModelAndView addCountry(String name, String capital, Integer population, String greeting, String language, String currency,
			Integer highestElevation, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		Country country = new Country();
		country.setName(name);
		country.setCapital(capital);
		country.setPopulation(population);
		country.setGreeting(greeting);
		country.setLanguage(language);

		dao.addCountry(country);
		redir.addFlashAttribute("Country", country);
		mv.setViewName("redirect:ountryAdded.do");
		return mv;

	}
}
