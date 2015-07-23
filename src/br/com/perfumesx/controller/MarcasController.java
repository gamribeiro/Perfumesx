package br.com.perfumesx.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.perfumesx.modelo.Marca;
import br.com.perfumex.dao.MarcaDao;


@Transactional
@Controller
public class MarcasController {

	@Autowired	
	MarcaDao dao;

	@RequestMapping("novaMarca")
	public String form() {

		return "administracao/formularioMarca";
	}

	@RequestMapping("adicionaMarca")
	public String adiciona(@Valid Marca marca, BindingResult result) {

		if (result.hasFieldErrors("nome")) {
			return "administracao/formularioMarca";
		}

		
		dao.adiciona(marca);

		return "redirect:listaMarca";
	}

	@RequestMapping("listaMarca")
	public String lista(Model model) {

		
		model.addAttribute("marca", dao.lista());
		return "administracao/listaMarca";
	}

	@RequestMapping("removeMarca")
	public String lista(Marca marca) {

		
		dao.remove(marca);
		return "redirect:listaMarca";
	}

	@RequestMapping("exibeMarca")
	public String mostra(Long id, Model model) {
		
		model.addAttribute("marca", dao.buscaporid(id));
		return "administracao/exibeMarca";
	}
	
	@RequestMapping("alteraMarca")
	public String altera(Marca marca){
		
		dao.altera(marca);
		return "redirect:listaMarca";
		
	}

	
}
