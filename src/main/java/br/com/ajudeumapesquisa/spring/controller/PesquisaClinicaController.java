package br.com.ajudeumapesquisa.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.ajudeumapesquisa.spring.dao.PesquisaClinicaDAO;

@Controller
@RequestMapping("pesquisa-clinica")
public class PesquisaClinicaController {
	
	@Autowired
	private PesquisaClinicaDAO dao;
	
	@GetMapping("/{id}")
	public ModelAndView buscar(@PathVariable("id") int id) {
		return new ModelAndView("pesquisa-clinica/view").addObject("PesquisaClinica", dao.buscar(id));
	}
}
