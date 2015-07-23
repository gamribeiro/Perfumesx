package br.com.perfumex.dao;

import java.util.List;

import br.com.perfumesx.modelo.Usuario;

public interface UsDao {

	List<Usuario> lista();

	
	Usuario buscaPorEmail(String email);
	Usuario buscaPorSenha(String senha);
	Usuario existeUsuario(Usuario usuario);
	Usuario buscaPorId(Long id);

	
	void adiciona(Usuario u);
	void altera(Usuario u);
	void remove(Usuario u);
	
	
}
