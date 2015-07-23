package br.com.perfumex.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.perfumesx.modelo.Usuario;

@Repository
public class UsuarioDao implements UsDao {

	@PersistenceContext
	EntityManager manager;

	@Override
	public Usuario buscaPorEmail(String email) {
		return manager.find(Usuario.class, email);
	}

	@Override
	public Usuario buscaPorSenha(String senha) {

		return manager.find(Usuario.class, senha);
	}
	
	@Override
	public Usuario existeUsuario(Usuario usuario) {
		
		System.out.println("passou");
		Query query = manager.createQuery("select u from usuarios u where login like :login and senha like :senha");    
        query.setParameter("login", usuario.getLogin());
        query.setParameter("senha", usuario.getSenha());
        Usuario retorno = new Usuario();
        try{
        retorno = (Usuario)query.getSingleResult();
        return retorno;
        }catch(Exception e){
        	throw new RuntimeException(e);       	
        	
        }
        
	}

	@Override
	public List<Usuario> lista() {
		return manager.createQuery("select u from usuarios u").getResultList();
	}

	@Override
	public void adiciona(Usuario u) {
		manager.persist(u);
		
	}

	@Override
	public void altera(Usuario u) {
		manager.merge(u);
		
	}

	@Override
	public void remove(Usuario u) {
		Usuario usuarioRemover = buscaPorId(u.getId());
		manager.remove(usuarioRemover);
		
	}

	@Override
	public Usuario buscaPorId(Long id) {
		return manager.find(Usuario.class, id);
	}
	}

