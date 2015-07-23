package br.com.perfumesx.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.perfumesx.modelo.Usuario;
import br.com.perfumex.dao.UsDao;

@Transactional
@Controller
public class UsuarioController {

	
	@Autowired	
	UsDao dao;
	
	@RequestMapping("admin")
	public String form(){
		
		return "administracao/login";
	}
	
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session){
	
		if(dao.existeUsuario(usuario).getLogin() != null){
			session.setAttribute("usuarioLogado",usuario);
			System.out.println("passou");
			return "administracao/default";
			
		}
		
		return "redirect:admin";
	}
	
	@RequestMapping("listaUsuario")
	public String lista(Model model){
		model.addAttribute("usuarios", dao.lista() );
		return "administracao/listaUsuario";
	}
	
	@RequestMapping("criarLogin")
	public String criarLogin(){
		return "administracao/loginForm";
	}
	
	@RequestMapping("adicionaUsuario")
	public String adiciona(@Valid Usuario u, BindingResult result){
		if(result.hasFieldErrors("login")){
			return "administracao/loginForm";
		}
		dao.adiciona(u);
		return "redirect:listaUsuario";
	}
	
	@RequestMapping("removeUsuario")
	public String remove(Usuario u){
		dao.remove(u);
		return "redirect:listaUsuario";
	}
	
	@RequestMapping("mostraUsuario")
	public String mostra(Long id, Model model){
		model.addAttribute("usuario", dao.buscaPorId(id));
		return "administracao/mostra";
							
	}
	
	@RequestMapping("alteraUsuario")
	public String altera(Usuario u){
		dao.altera(u);
		return "redirect:listaUsuario";
	}
}
