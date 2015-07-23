package br.com.perfumex.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.perfumesx.modelo.Marca;


@Repository
public class MarcaDao implements IMarca {

	@PersistenceContext
	EntityManager manager;
	
	public void adiciona(Marca marca){
		
		manager.persist(marca);
		
	}
	
	public void altera(Marca marca){
		
		manager.merge(marca);
	}
	
	public List<Marca> lista(){
		
		return manager.createQuery("select m from marcas m").getResultList();
		
	}
	
	public Marca buscaporid(Long id){
		
		return manager.find(Marca.class, id);
	}
	
	public void remove(Marca marca){
		
		manager.remove(buscaporid(marca.getId()));
	}

}
