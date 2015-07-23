package br.com.perfumex.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.perfumesx.modelo.Categoria;


@Repository
public class CategoriaDao implements ICategoria {

	@PersistenceContext
	EntityManager manager;
	
	public void adiciona(Categoria categoria){
		
		manager.persist(categoria);
		
	}
	
	public void altera(Categoria categoria){
		
		manager.merge(categoria);
	}
	
	public List<Categoria> lista(){
		
		return manager.createQuery("select m from categorias m").getResultList();
		
	}
	
	public Categoria buscaporid(Long id){
		
		return manager.find(Categoria.class, id);
	}
	
	public void remove(Categoria categoria){
		
		manager.remove(buscaporid(categoria.getId()));
	}

}
