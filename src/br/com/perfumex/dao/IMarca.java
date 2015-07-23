package br.com.perfumex.dao;

import java.util.List;

import br.com.perfumesx.modelo.Marca;

public interface IMarca {
	
	Marca buscaporid(Long id);
	List<Marca> lista();
	void adiciona(Marca m);
	void altera(Marca m);
	void remove(Marca m);
	


}
