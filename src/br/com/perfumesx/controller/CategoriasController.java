package br.com.perfumesx.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.perfumesx.modelo.Categoria;
import br.com.perfumex.dao.CategoriaDao;


@Transactional
@Controller
public class CategoriasController {

	@Autowired	
	CategoriaDao dao;

	@RequestMapping("novaCategoria")
	public String form() {

		return "administracao/formularioCategoria";
	}

	@RequestMapping("adicionaCategoria")
	public String adiciona(@Valid Categoria categoria, BindingResult result) {

		if (result.hasFieldErrors("nome")) {
			return "administracao/formularioCategoria";
		}

		
		dao.adiciona(categoria);

		return "redirect:listaCategoria";
	}

	@RequestMapping("listaCategoria")
	public String lista(Model model) {

		
		model.addAttribute("categoria", dao.lista());
		return "administracao/listaCategoria";
	}

	@RequestMapping("removeCategoria")
	public String lista(Categoria categoria) {

		
		dao.remove(categoria);
		return "redirect:listaCategoria";
	}

	@RequestMapping("exibeCategoria")
	public String mostra(Long id, Model model) {
		
		model.addAttribute("categoria", dao.buscaporid(id));
		return "administracao/exibeCategoria";
	}
	
	@RequestMapping("alteraCategoria")
	public String altera(Categoria categoria){
		
		dao.altera(categoria);
		return "redirect:listaCategoria";
		
	}

	
}
