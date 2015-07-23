package br.com.perfumex.dao;

import java.util.List;

import br.com.perfumesx.modelo.Categoria;

public interface ICategoria {
	
	Categoria buscaporid(Long id);
	List<Categoria> lista();
	void adiciona(Categoria c);
	void altera(Categoria c);
	void remove(Categoria c);
	


}
