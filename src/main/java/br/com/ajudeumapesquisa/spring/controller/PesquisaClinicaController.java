package br.com.ajudeumapesquisa.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.ajudeumapesquisa.spring.dao.PesquisaClinicaDAO;
import br.com.ajudeumapesquisa.spring.entity.PesquisaClinica;

@Controller
@RequestMapping("pesquisa-clinica")
public class PesquisaClinicaController {
	
	@Autowired
	private PesquisaClinicaDAO dao;
	
	@GetMapping("{id}")
	public ModelAndView buscar(@PathVariable("id") int id) {
		return new ModelAndView("pesquisa-clinica/view").addObject("pesquisaClinica", dao.buscar(id));
	}
	
	@GetMapping("cadastrar")
	public String abrirForm(PesquisaClinica pesquisaClinica) {
		return"pesquisa-clinica/cadastro";
	}
	
	@PostMapping("cadastrar")
	@Transactional
	public ModelAndView processarForm(PesquisaClinica pesquisaClinica, RedirectAttributes redirect) {
		try{
			dao.cadastrar(pesquisaClinica);
		}catch(Exception e) {
			e.printStackTrace();
			return new ModelAndView("pesquisa-clinica/cadastro");
		}
		redirect.addFlashAttribute("msg", "Pesquisa Clinica cadastrada com sucesso");
		return new ModelAndView("redirect:/pesquisa-clinica/cadastrar");
	}
}
