package br.com.ajudeumapesquisa.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.ajudeumapesquisa.spring.dao.PesquisaClinicaDAO;

@Controller
public class HomeController {

	@Autowired
	private PesquisaClinicaDAO dao;
	
	@GetMapping("/")
	public ModelAndView listar() {
		return new ModelAndView("home/index").addObject("PesquisaClinica",dao.listar());
	}
	

}
